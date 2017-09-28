using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmDTR : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmDTR()
        {
            InitializeComponent();
        }

        private void getRegime()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao " +
                           "FROM Fundamentacao_RCR " +
                           "ORDER BY Descricao";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbbRegime.DataSource = null;
                mcbbRegime.DataSource = table;
                mcbbRegime.DisplayMember = "Descricao";
                mcbbRegime.ValueMember = "Codigo";
                mcbbRegime.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private bool ItensDTR(string processo)
        {
            var query = "SELECT P.Codigo, P.Tipo_Declaracao AS tdecla, IFA.NCM, IFA.Produto, IFA.Numero_serie, IFA.PO, P.Pag_proporcional, " +
                        "Max(IFA.Descricao_Produto) AS [desc], F.Codigo as Fatura, IFA.Pagina, IFA.Sequencial, Sum(TIF.Quantidade) AS SomaDeQuantidade, " +
                        "Sum(IFA.Valor_Aduaneiro) AS SomaDeValor_Aduaneiro, TIF.Regime_Tributacao_II, TIF.Regime_Tributacao_IPI, " +
                        "TIF.Prazo_permanencia " +
                        "FROM Processos P " +
                        "INNER JOIN Faturas F ON P.Codigo = F.Processo " +
                        "INNER JOIN ItensFaturas IFA ON F.Fatura_Id = IFA.Fatura_Id  " +
                        "INNER JOIN Tributacao_Item_Fatura TIF ON IFA.Sequencial = TIF.Sequencial_Item AND " +
                        "IFA.Fatura_Id = TIF.Fatura_Id " +
                        "GROUP BY P.Codigo, P.Tipo_Declaracao, IFA.NCM, IFA.Produto, IFA.Numero_serie, IFA.PO, P.Pag_proporcional, F.Codigo, " +
                        "IFA.Pagina, IFA.Sequencial, TIF.Regime_Tributacao_II, TIF.Regime_Tributacao_IPI, TIF.Prazo_permanencia " +
                        "HAVING P.Codigo = @processo AND (P.Tipo_Declaracao='12' OR P.Tipo_Declaracao='05' OR P.Tipo_Declaracao IS NULL) AND  " +
                        "(TIF.Regime_Tributacao_II='5' AND TIF.Regime_Tributacao_IPI='5' OR TIF.Prazo_permanencia<>0 OR P.Pag_proporcional = 1) " +
                        "ORDER BY F.Codigo, IFA.Pagina, cast(IFA.Sequencial as integer) ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void txtProcessoAnterior_TextChanged(object sender, EventArgs e)
        {
            if (txtProcessoAnterior.MaskCompleted)
            {
                string endereco;
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "SELECT P.importador,P.codigo,P.tipo,I.CNPJ_CPF_COMPLETO,I.Razao_Social,I.Endereco, I.Numero,I.Complemento, I.Bairro, I.Cidade, " +
                               "I.CEP, I.UF,CP.URF_Despacho, CP.Recinto_Alfandegario,P.NR_DECLARACAO_IMP,TR.Descricao,P.Numero_RCR,P.NR_DECLARACAO_IMP  " +
                               "FROM Processos P  " +
                               "INNER JOIN Importadores I ON P.Importador = I.Codigo " +
                               "LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo " +
                               "LEFT JOIN FATURAS ON FATURAS.PROCESSO = P.CODIGO " +
                               "LEFT JOIN Tributacao_Item_Fatura TIF ON TIF.Regime_Tributacao_II = '5' and TIF.Fatura_ID = faturas.Fatura_ID " +
                               "LEFT JOIN TAB_REGIME_FUNDAMENTO TR ON TIF.Regime_Tributacao_II = TR.Regime AND TIF.Fundamento_Legal_II = TR.Codigo " +
                               "where P.Codigo = @Processo " +
                               "group by P.importador,P.codigo,P.tipo,I.CNPJ_CPF_COMPLETO,I.Razao_Social,I.Endereco, I.Numero,I.Complemento, I.Bairro, I.Cidade,  " +
                               "I.CEP, I.UF,CP.URF_Despacho, CP.Recinto_Alfandegario,P.NR_DECLARACAO_IMP,TR.Descricao,P.Numero_RCR,P.NR_DECLARACAO_IMP   " +
                               "ORDER BY P.Codigo";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcessoAnterior.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        try
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                var usuario = new Usuario(FrmPrincipal.PK_UsuarioLogado);
                               /* if (usuario.AcessaCliente(reader["importador"].ToString()))
                                {
                                    if (Usuario.AcessaPasta(txtProcessoAnterior.Text, this, string.IsNullOrEmpty(reader["tipo"].ToString()) ? "" : reader["tipo"].ToString()))
                                    {
                                        BloqueiaCampos(true);
                                    }
                                }
                                else
                                {
                                    MessageBox.Show(usuario.getMensagem(), "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                    LimparCamposAnterior();
                                    txtProcessoAnterior.Clear();
                                    BloqueiaCampos(false);
                                    return;
                                }

                                */
                                BloqueiaCampos(true);

                                if (!ItensDTR(txtProcessoAnterior.Text) && reader["Numero_RCR"].ToString() == "")
                                {
                                    MessageBox.Show("Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    LimparCamposAnterior();
                                    txtProcessoAnterior.Clear();
                                    BloqueiaCampos(false);
                                    return;
                                }

                                txtDSI.Text = reader["NR_DECLARACAO_IMP"].ToString();
                                txtRegimeAnterior.Text = reader["Descricao"].ToString();
                                txtBenificiarioRegimeAnterior.Text = reader["Razao_Social"].ToString();
                                txtCNPJAnterior.Text = reader["CNPJ_CPF_COMPLETO"].ToString();

                                if (!string.IsNullOrEmpty(reader["Endereco"].ToString()))
                                {
                                    endereco = reader["Endereco"].ToString();
                                    if (!string.IsNullOrEmpty(reader["Numero"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Numero"].ToString();
                                    }
                                    if (!string.IsNullOrEmpty(reader["Complemento"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Complemento"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["Bairro"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Bairro"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["Cidade"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Cidade"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["CEP"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["CEP"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["UF"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["UF"].ToString();
                                    }
                                    txtEnderecoAnterior.Text = endereco;
                                }
                                txtURFAnterior.Text = reader["URF_Despacho"].ToString();
                                txtRecintoAnterior.Text = reader["Recinto_Alfandegario"].ToString();
                                txtProcesso.Focus();
                            }
                            else
                            {
                                LimparCamposAnterior();
                                txtProcessoAnterior.Clear();
                                MessageBox.Show("Processo não encontrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                txtProcessoAnterior.Focus();
                                BloqueiaCampos(false);
                                return;
                            }

                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            LimparCamposAnterior();
                            txtProcessoAnterior.Clear();
                            BloqueiaCampos(false);
                        }
                    }
                }
            }
            else
            {
                LimparCamposAnterior();
                BloqueiaCampos(false);
            }
        }

        private void LimparCamposAnterior()
        {
            txtDSI.Clear();
            txtRegimeAnterior.Clear();
            txtBenificiarioRegimeAnterior.Clear();
            txtCNPJAnterior.Clear();
            txtEnderecoAnterior.Clear();
            txtURFAnterior.Clear();
            txtRecintoAnterior.Clear();
            txtProcesso.Clear();
        }

        private void LimparCampos()
        {
            mcbbRegime.SelectedIndex = -1;
            txtBeneficiarioRegime.Clear();
            txtCNPJ.Clear();
            txtEndereco.Clear();
            txtURF.Clear();
            txtRecinto.Clear();
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                getRegime();

                string endereco;
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "SELECT P.importador,P.codigo,P.tipo, I.CNPJ_CPF_COMPLETO,I.Razao_Social,I.Endereco, I.Numero,I.Complemento, I.Bairro, I.Cidade, " +
                               "I.CEP, I.UF,CP.URF_Despacho, CP.Recinto_Alfandegario,P.NR_DECLARACAO_IMP,TR.Descricao,P.Numero_RCR,P.NR_DECLARACAO_IMP  " +
                               "FROM Processos P  " +
                               "INNER JOIN Importadores I ON P.Importador = I.Codigo " +
                               "LEFT JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo " +
                               "LEFT JOIN FATURAS ON FATURAS.PROCESSO = P.CODIGO " +
                               "LEFT JOIN Tributacao_Item_Fatura TIF ON TIF.Regime_Tributacao_II = '5' and TIF.Fatura_ID = faturas.Fatura_ID " +
                               "LEFT JOIN TAB_REGIME_FUNDAMENTO TR ON TIF.Regime_Tributacao_II = TR.Regime AND TIF.Fundamento_Legal_II = TR.Codigo " +
                               "where P.Codigo = @Processo " +
                               "group by P.importador,P.codigo,P.tipo,I.CNPJ_CPF_COMPLETO,I.Razao_Social,I.Endereco, I.Numero,I.Complemento, I.Bairro, I.Cidade,  " +
                               "I.CEP, I.UF,CP.URF_Despacho, CP.Recinto_Alfandegario,P.NR_DECLARACAO_IMP,TR.Descricao,P.Numero_RCR,P.NR_DECLARACAO_IMP   " +
                               "ORDER BY P.Codigo";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        try
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();

                                var usuario = new Usuario(FrmPrincipal.PK_UsuarioLogado);
                                if (usuario.AcessaCliente(reader["importador"].ToString()))
                                {
                                    if (Usuario.AcessaPasta(txtProcesso.Text, this, string.IsNullOrEmpty(reader["tipo"].ToString()) ? "" : reader["tipo"].ToString()))
                                    {
                                        BloqueiaCampos(true);
                                    }
                                }
                                else
                                {
                                    MessageBox.Show(usuario.getMensagem(), "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                    LimparCampos();
                                    txtProcesso.Clear();
                                    BloqueiaCampos(false);
                                    groupBox3.Enabled = true;
                                    return;
                                }

                                if (!ItensDTR(txtProcesso.Text)) //&& reader["Numero_RCR"].ToString() == "")
                                {
                                    MessageBox.Show("Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                    BloqueiaCampos(false);
                                    LimparCampos();
                                    txtProcesso.Clear();
                                    groupBox3.Enabled = true;
                                    return;
                                }

                                txtBeneficiarioRegime.Text = reader["Razao_Social"].ToString();
                                txtCNPJ.Text = reader["CNPJ_CPF_COMPLETO"].ToString();

                                if (!string.IsNullOrEmpty(reader["Endereco"].ToString()))
                                {
                                    endereco = reader["Endereco"].ToString();
                                    if (!string.IsNullOrEmpty(reader["Numero"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Numero"].ToString();
                                    }
                                    if (!string.IsNullOrEmpty(reader["Complemento"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Complemento"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["Bairro"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Bairro"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["Cidade"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["Cidade"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["CEP"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["CEP"].ToString();
                                    }

                                    if (!string.IsNullOrEmpty(reader["UF"].ToString()))
                                    {
                                        endereco = endereco + '-' + reader["UF"].ToString();
                                    }
                                    txtEndereco.Text = endereco;
                                }
                                txtURF.Text = reader["URF_Despacho"].ToString();
                                txtRecinto.Text = reader["Recinto_Alfandegario"].ToString();
                            }
                            else
                            {
                                BloqueiaCampos(false);
                                LimparCampos();
                                txtProcesso.Clear();
                                groupBox3.Enabled = true;
                                MessageBox.Show("Processo não encontrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                txtProcesso.Focus();
                                return;
                            }

                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            LimparCampos();
                            txtProcesso.Clear();
                            BloqueiaCampos(false);
                            groupBox3.Enabled = true;
                        }
                    }
                }
            }
            else
            {
                LimparCampos();
            }
        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {
            double valorfatura = 0;
            double valordolar = 0;


            DataTable table = new DataTable();
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            var query = "SELECT P.Codigo, P.Tipo_Declaracao AS tdecla, IFA.NCM, IFA.Produto, IFA.Numero_serie, IFA.PO, P.Pag_proporcional, " +
                        "Max(IFA.Descricao_Produto) AS [Descricao_Produto], F.Codigo as Fatura, IFA.Pagina, IFA.Sequencial, Sum(TIF.Quantidade) AS Quantidade, " +
                        "Sum(IFA.Valor_Aduaneiro) AS SomaDeValor_Aduaneiro, TIF.Regime_Tributacao_II, TIF.Regime_Tributacao_IPI, " +
                        "TIF.Prazo_permanencia,TAB_UNID_MEDIDA.DESCRICAO AS Unidade,IFA.Valor_Total " +
                        "FROM Processos P " +
                        "INNER JOIN Faturas F ON P.Codigo = F.Processo " +
                        "INNER JOIN ItensFaturas IFA ON  F.Fatura_Id = IFA.Fatura_Id " +
                        "INNER JOIN Tributacao_Item_Fatura TIF ON IFA.Sequencial = TIF.Sequencial_Item AND " +
                        "IFA.Fatura_Id = TIF.Fatura_Id LEFT OUTER JOIN " +
                        "TAB_UNID_MEDIDA ON IFA.Unidade = TAB_UNID_MEDIDA.CODIGO " +
                        "GROUP BY P.Codigo, P.Tipo_Declaracao, IFA.NCM, IFA.Produto, IFA.Numero_serie, IFA.PO, P.Pag_proporcional, F.Codigo, " +
                        "IFA.Pagina, IFA.Sequencial, TIF.Regime_Tributacao_II, TIF.Regime_Tributacao_IPI, TIF.Prazo_permanencia,TAB_UNID_MEDIDA.DESCRICAO,IFA.Valor_Total " +
                        "HAVING P.Codigo = @processo AND (P.Tipo_Declaracao='12' OR P.Tipo_Declaracao='05' OR P.Tipo_Declaracao IS NULL) AND  " +
                        "(TIF.Regime_Tributacao_II='5' AND TIF.Regime_Tributacao_IPI='5' OR TIF.Prazo_permanencia<>0 OR P.Pag_proporcional = 1) " +
                        "ORDER BY F.Codigo, IFA.Pagina, cast(IFA.Sequencial as integer) ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table.Load(reader);
                }
            }

            try
            {

                SaveFileDialog saveFileDialog1 = new SaveFileDialog();

                saveFileDialog1.Filter = "*PDF files (*.pdf)|*.pdf";
                saveFileDialog1.FilterIndex = 2;
                saveFileDialog1.RestoreDirectory = true;
                saveFileDialog1.FileName = "DTR" + txtProcesso.Text.Replace("/", "");

                IList<ReportParameter> parametros = new List<ReportParameter>();
                if (MessageBox.Show("Deseja imprimir o DTR com a moeda igual a registrada da fatura?", "Informação ", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    valorfatura = 1;
                    valordolar = 1;
                    parametros.Add(new ReportParameter("ValorFatura", Convert.ToString(valorfatura)));
                    parametros.Add(new ReportParameter("ValorDolar", Convert.ToString(valordolar)));
                }
                else
                {
                    valorfatura = Cambio(txtProcesso.Text, MoedaFatura(txtProcesso.Text));
                    valordolar = Cambio(txtProcesso.Text, "220");
                    parametros.Add(new ReportParameter("ValorFatura", Convert.ToString(valorfatura)));
                    parametros.Add(new ReportParameter("ValorDolar", Convert.ToString(valordolar)));
                }

                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {

                    ReportViewer RV = new ReportViewer();
                    RV.ProcessingMode = ProcessingMode.Local;
                    RV.LocalReport.ReportEmbeddedResource = "MS2000.Desktop.Menu.Processos.rptDTR.rdlc";

                    ReportDataSource rps = new ReportDataSource("ds01", table);
                    RV.LocalReport.DataSources.Clear();
                    RV.LocalReport.DataSources.Add(rps);

                    parametros.Add(new ReportParameter("RegimeAnterior", txtRegimeAnterior.Text));
                    parametros.Add(new ReportParameter("BenificiarioAnterior", txtBenificiarioRegimeAnterior.Text));
                    parametros.Add(new ReportParameter("CNPJAnterior", txtCNPJAnterior.Text));
                    parametros.Add(new ReportParameter("EnderecoAnterior", txtEnderecoAnterior.Text));
                    parametros.Add(new ReportParameter("URFAnterior", txtURFAnterior.Text));
                    parametros.Add(new ReportParameter("RecintoAnterior", txtRecintoAnterior.Text));

                    parametros.Add(new ReportParameter("RegimeNovo", mcbbRegime.Text));
                    parametros.Add(new ReportParameter("BenificiarioNovo", txtBeneficiarioRegime.Text));
                    parametros.Add(new ReportParameter("CNPJNovo", txtCNPJ.Text));
                    parametros.Add(new ReportParameter("EnderecoNovo", txtEndereco.Text));
                    parametros.Add(new ReportParameter("URFNovo", txtURF.Text));
                    parametros.Add(new ReportParameter("RecintoNovo", txtRecinto.Text));

                    parametros.Add(new ReportParameter("DSI", txtDSI.Text));


                    RV.LocalReport.SetParameters(parametros);

                    Warning[] warnings;
                    string[] streamids;
                    string mimeType;
                    string encoding;
                    string extension;

                    byte[] bytePDF = RV.LocalReport.Render("Pdf", null, out mimeType, out encoding, out extension, out streamids, out warnings);

                    FileStream newFile = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                    newFile.Write(bytePDF, 0, bytePDF.Length);
                    newFile.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private double Cambio(string processo, string moeda)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PTC.Processo, PTC.Moeda, PTC.Taxa_conversao " +
                           "FROM Processos_Taxas_Conversao PTC " +
                           "WHERE PTC.Processo=@processo and Moeda = @moeda";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                cmd.Parameters.AddWithValue("@moeda", moeda);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();

                        return Convert.ToDouble(reader["Taxa_conversao"].ToString());
                    }
                    return 1;
                }
            }
        }

        private string MoedaFatura(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Processo, Codigo, Moeda " +
                           "FROM Faturas " +
                           "WHERE Processo = @processo";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();

                        return reader["Moeda"].ToString();
                    }
                    return "1";
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void BloqueiaCampos(bool value)
        {
            groupBox1.Enabled = value;
            groupBox3.Enabled = value;
            printToolStripButton.Enabled = value;
        }

        private void FrmDTR_Load(object sender, EventArgs e)
        {
            BloqueiaCampos(false);
            this.ActiveControl = txtProcesso;
        }
    }
}
