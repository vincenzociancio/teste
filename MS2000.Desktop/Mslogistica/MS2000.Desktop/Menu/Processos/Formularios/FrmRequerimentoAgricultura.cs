using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using System.Diagnostics;
using System.IO;
using MS2000.Desktop.Classes;
using System.Data.SqlClient;

namespace MS2000.Desktop.Menu.Processos.Formularios
{
    public partial class FrmRequerimentoAgricultura : MS2000.Desktop.Componentes.MSForm01
    {
        string diretorioRaiz = @"C:\Temp\";
        ReportViewer rv = new ReportViewer();
        Warning[] warnings;
        string[] streamids;
        string mimeType;
        string encoding;
        string extension;
        IList<ReportParameter> parametros = new List<ReportParameter>();

        public FrmRequerimentoAgricultura()
        {
            InitializeComponent();
        }

        private void consultaProcesso()
        {
            SqlConnection conn   = DatabaseSqlConnection.Instance.Conexao;
            StringBuilder sb     = new StringBuilder();
            SqlDataReader reader = null;
           
            sb.Append("SELECT DISTINCT P.Codigo, P.Data, P.Codigo_Cliente, I.Razao_Social, I.CNPJ_CPF_COMPLETO, CP.Pais_Procedencia, TP.DESCRICAO,");
            sb.Append("I.Endereco, I.Numero, I.Complemento, I.Bairro, I.Cidade, I.UF, F.Exportador, E.Razao_Social, E.Endereco, E.Numero,         ");
            sb.Append("E.Complemento, E.Bairro, E.Cidade, E.UF, EP.TipoEmbalagem, EP.DescricaoEmbalagem, EP.Quantidade, CP.Peso_Bruto,            ");
            sb.Append("CP.Local, CP.Tipodoccarga, TDC.descricao, CP.Numerodoccarga, CP.Numeromaster, CP.Embarcacao, CP.URF_chegada, TU.DESCRICAO, ");
            sb.Append("CP.Data_Chegada_URF_Cheg, AP.CodArmazem, AP.Nome_Armazem, P.Valor_FOB, PTC.Taxa_conversao,                                 ");
            sb.Append("CASE                                                                                                                       ");
            sb.Append("WHEN CP.VIA = '1' THEN 'Marítimo'                                                                                          ");
            sb.Append("WHEN CP.VIA = '2' THEN 'Fluvial'                                                                                           ");
            sb.Append("WHEN CP.VIA = '3' THEN 'Lacustre'                                                                                          ");
            sb.Append("WHEN CP.VIA = '4' THEN 'Aéreo'                                                                                             ");
            sb.Append("WHEN CP.VIA = '5' THEN 'Postal'                                                                                            ");
            sb.Append("WHEN CP.VIA = '6' THEN 'Ferroviário'                                                                                       ");
            sb.Append("WHEN CP.VIA = '7' THEN 'Rodoviário'                                                                                        ");
            sb.Append("WHEN CP.VIA = '8' THEN 'Ducto'                                                                                             ");
            sb.Append("WHEN CP.VIA = '9' THEN 'Meios Próprios'                                                                                    ");
            sb.Append("WHEN CP.VIA = 'A' THEN 'Entrada Fícta'                                                                                     ");
            sb.Append("END AS VIA                                                                                                                 ");
            sb.Append("FROM                                                                                                                       ");
            sb.Append("Processos AS P                                                                                                             ");
            sb.Append("INNER JOIN Importadores AS I ON P.Importador = I.Codigo                                                                    ");
            sb.Append("LEFT JOIN Conhecimento_Processo AS CP ON P.Codigo = CP.Processo                                                            ");
            sb.Append("LEFT JOIN TAB_PAIS AS TP ON CP.Pais_Procedencia = TP.CODIGO                                                                ");
            sb.Append("LEFT JOIN Faturas AS F ON P.Codigo = F.Processo                                                                            ");
            sb.Append("LEFT JOIN Exportadores AS E ON F.Exportador = E.Codigo                                                                     ");
            sb.Append("LEFT JOIN Embalagem_Processo AS EP ON P.Codigo = EP.Processo                                                               ");
            sb.Append("LEFT JOIN Armazem_Processo AS AP ON P.Codigo = AP.Processo                                                                 ");
            sb.Append("LEFT JOIN Processos_Taxas_Conversao AS PTC ON P.Codigo = PTC.Processo                                                      ");
            sb.Append("LEFT JOIN Tipo_Doc_Carga AS TDC ON CP.Tipodoccarga = TDC.codigo AND CP.Via = TDC.via                                       ");
            sb.Append("LEFT JOIN TAB_URF AS TU ON CP.URF_chegada = TU.CODIGO                                                                      ");
            sb.Append("WHERE  P.Codigo = @codigo                                                                                                  ");

            using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
            {
                if (mskProcesso.Text.Length == 8)
                {
                    cmd.Parameters.AddWithValue("@codigo", mskProcesso.Text);
                    reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            txtRazaoSocial.Text      = reader["RAZAO_SOCIAL"].ToString();
                            txtCNPJ.Text             = reader["CNPJ_CPF_COMPLETO"].ToString();
                            txtPais.Text             = reader["DESCRICAO"].ToString();
                            txtLocalArmazenagem.Text = reader["NOME_ARMAZEM"].ToString();
                            txtCidade.Text           = reader["CIDADE"].ToString();
                            txtPais.Text             = reader["DESCRICAO"].ToString();
                            txtDocumento.Text        = reader["NUMERODOCCARGA"].ToString();
                            txtUF.Text               = reader["UF"].ToString();
                            txtEndereco.Text         = reader["ENDERECO"].ToString();
                            txtLocal.Text            = "Rio de Janeiro";
                            txtTransporte.Text       = reader["VIA"].ToString();
                            txtTipoMercadoria.Text   = reader["TIPOEMBALAGEM"].ToString() + " - " + reader["DESCRICAOEMBALAGEM"].ToString();
                            mskData.Text = DateTime.Now.ToString();
                        }
                        cmbAssinatura.DataSource    = montaComboAssinatura();
                        cmbAssinatura.DisplayMember = "RAZAO_SOCIAL";
                    }
                    else
                    {
                        MessageBox.Show("Não existe processo com este número", "MS2000", MessageBoxButtons.OK);
                    }
                }
                else
                {
                    limparCampos();
                    cmbAssinatura.DataSource = null;
                }
            }
                                                                          
        }

        private DataTable montaComboAssinatura()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string SQL = "SELECT RAZAO_SOCIAL FROM PROCURADORES ORDER BY RAZAO_SOCIAL";
            DataTable table = new DataTable();
            
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {  
                using (SqlDataReader reader = cmd.ExecuteReader())
                {   
                    table.Load(reader);
                    return table;
                }
            }
        }
        
        private void limparCampos()
        {
            if (!txtRazaoSocial.Text.Equals("") || !txtEndereco.Text.Equals("") || !txtCNPJ.Text.Equals("") ||
                !txtUF.Text.Equals("") || !txtCidade.Text.Equals("") || !txtTipoMercadoria.Text.Equals("") ||
                !txtLocal.Text.Equals("") || !txtDocumento.Text.Equals("") || !txtPais.Text.Equals("") || !mskData.Text.Equals(""))
            {   
                txtRazaoSocial.Text      = "";
                txtTransporte.Text       = "";
                txtEndereco.Text         = "";
                txtCNPJ.Text             = "";
                txtUF.Text               = "";
                txtCidade.Text           = "";
                txtTipoMercadoria.Text   = "";
                txtLocal.Text            = "";
                txtDocumento.Text        = "";
                txtLocalArmazenagem.Text = "";
                txtPais.Text             = "";
                mskData.Text             = "";
            }
        }

        private void montaRelatorio()
        {
            rv.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Processos.Formularios.rptFrmRequerimentoAgricultura.rdlc";
            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("nome",                     txtNome.Text                                  ));
            parametros.Add(new ReportParameter("protocolo",                txtProtocolo.Text                             ));
            parametros.Add(new ReportParameter("importador_exportador",    txtRazaoSocial.Text                           ));
            parametros.Add(new ReportParameter("sda",                      txtSDA.Text                                   ));
            parametros.Add(new ReportParameter("endereco",                 txtEndereco.Text.Length > 30 ? txtEndereco.Text.Substring(0,29) : txtEndereco.Text));
            parametros.Add(new ReportParameter("fone",                     txtTelefone.Text                              ));
            parametros.Add(new ReportParameter("crtc",                     txtDocumento.Text                             ));
            parametros.Add(new ReportParameter("cidade",                   txtCidade.Text                                ));
            parametros.Add(new ReportParameter("uf",                       txtUF.Text                                    ));
            parametros.Add(new ReportParameter("tipo_mercadoria",          txtTipoMercadoria.Text                        ));
            parametros.Add(new ReportParameter("paisOrigemDestino",        txtPais.Text                                  ));
            parametros.Add(new ReportParameter("localArmazenagem",         txtLocalArmazenagem.Text                      ));
            parametros.Add(new ReportParameter("bancada",                  txtBancada.Text                               ));
            parametros.Add(new ReportParameter("transporte",               txtTransporte.Text                            ));
            parametros.Add(new ReportParameter("cadastro",                 txtNumeroCad.Text                             ));
            parametros.Add(new ReportParameter("outros",                   txtOutros.Text                                ));
            parametros.Add(new ReportParameter("cnpj",                     txtCNPJ.Text                                  ));
            parametros.Add(new ReportParameter("local",                    txtLocal.Text                                 ));
            parametros.Add(new ReportParameter("data",                     mskData.Text                                  ));
            parametros.Add(new ReportParameter("assinatura",               cmbAssinatura.Text                            ));
            parametros.Add(new ReportParameter("chkImportacao",            chkImportacao.Checked ? "X" : ""              ));
            parametros.Add(new ReportParameter("chkExportacao",            chkExportacao.Checked ? "X" : ""              ));
            parametros.Add(new ReportParameter("chkCaixa",                 chkCaixaEngradado.Checked ? "X" : ""          ));
            parametros.Add(new ReportParameter("chkMadeiraEstiva",         chkMadeiraEstiva.Checked ? "X" : ""           ));
            parametros.Add(new ReportParameter("chkMadeiraProcessada",     chkMadeiraProcessada.Checked ? "X" : ""       ));
            parametros.Add(new ReportParameter("chkSuporteMadeira",        chkSuporte.Checked ? "X" : ""                 ));
            parametros.Add(new ReportParameter("chkPossuiMarca",           chkPossuiMarca.Checked ? "X" : ""             ));
            parametros.Add(new ReportParameter("chkMB",                    chkMB.Checked ? "X" : ""                      ));
            parametros.Add(new ReportParameter("chkHT",                    chkHT.Checked ? "X" : ""                      ));
            parametros.Add(new ReportParameter("chkKD",                    chkKD.Checked ? "X" : ""                      ));
            parametros.Add(new ReportParameter("chkCopiaBL",               chkCopiaBL.Checked ? "X" : ""                 ));
            parametros.Add(new ReportParameter("chkOriginal",              chkOriginal.Checked ? "X" : ""                ));
            parametros.Add(new ReportParameter("chkOriginalFitosanitario", chkOriginalFitossanitario.Checked ? "X" : ""  ));

            rv.LocalReport.SetParameters(parametros);

            try
            {
                byte[] bytes = rv.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);
                FileStream fs = new FileStream(diretorioRaiz + "requerimento_agricultura.pdf", FileMode.Create);
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                Process.Start(diretorioRaiz + "requerimento_agricultura.pdf");
            }
            catch (IOException ioex)
            {
                MessageBox.Show("O arquivo já está aberto","MS2000",MessageBoxButtons.OK);
                ioex.Source = "";
            }

        }


        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            montaRelatorio();
        }

        private void mskProcesso_TextChanged(object sender, EventArgs e)
        {
            consultaProcesso();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {

        }      
    }
}
