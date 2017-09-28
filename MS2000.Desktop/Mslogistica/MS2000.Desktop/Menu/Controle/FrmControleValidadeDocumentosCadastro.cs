using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleValidadeDocumentosCadastro : MS2000.Desktop.Componentes.MSForm01
    {
        public string vigenciaInicial { get; set; }
        public string vigenciaFinal { get; set; }
        public string dataBaixa { get; set; }
        public string dataProrrogacao { get; set; }
        public string status { get; set; }
        public string di { get; set; }
        public string rcr { get; set; }
        public string valorII { get; set; }
        public string valorIPI { get; set; }
        public string valorPIS { get; set; }
        public string valorCOFINS { get; set; }
        public string seguradora { get; set; }
        public string fiador { get; set; }
        public string processo { get; set; }
        public string arquivo { get; set; }
        public string PDF { get; set; }
        public string tipoDoc { get; set; }
        public string subTipoDoc { get; set; }
        public string numeroDoc { get; set; }
        public string codigo { get; set; }
        public FrmControleValidadeDocumentosCadastro()
        {
            InitializeComponent();
        }

        private void getStatus()
        {
            string query = "SELECT CODIGO, DESCRICAO FROM Tipos_status_documentos order by CODIGO";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            cbbStatus.DataSource = null;
            cbbStatus.DataSource = table;
            cbbStatus.DisplayMember = "DESCRICAO";
            cbbStatus.ValueMember = "CODIGO";
            //cbbStatus.SelectedIndex = -1;
        }

        private void getFiador()
        {
            string query = "select Codigo,Razao_Social from Fiadores where Lixo = 0";

            DataTable table;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }

            cbbFiador.DataSource = null;
            cbbFiador.DataSource = table;
            cbbFiador.DisplayMember = "Razao_Social";
            cbbFiador.ValueMember = "CODIGO";
            //  cbbFiador.SelectedIndex = -1;
        }


        private void FrmControleValidadeDocumentosCadastro_Load(object sender, EventArgs e)
        {
            getStatus();
            getFiador();
            txtVigenciaInicial.Text = vigenciaInicial;
            txtVigenciaFinal.Text = vigenciaFinal;
            txtDataBaixa.Text = dataBaixa;
            txtDataProrrogacao.Text = dataProrrogacao;
            cbbStatus.SelectedValue = status;
            txtDI.Text = di;
            txtRCR.Text = rcr;
            txtValorII.Text = valorII;
            txtValorIPI.Text = valorIPI;
            txtValorPIS.Text = valorPIS;
            txtValorCOFINS.Text = valorCOFINS;
            txtSeguradora.Text = seguradora;
            cbbFiador.SelectedValue = fiador;

            if (string.IsNullOrEmpty(di))
            {
                panel2.Enabled = false;
            }
        }

        private void btnConfirma_Click(object sender, EventArgs e)
        {
            if (txtVigenciaInicial.MaskCompleted)
            {
                if (!txtVigenciaFinal.MaskCompleted)
                {
                    MessageBox.Show("Documento sem Vigência Final!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    txtVigenciaFinal.Focus();

                    return;
                }

                if (Convert.ToDateTime(txtVigenciaInicial.Text) > Convert.ToDateTime(txtVigenciaFinal.Text))
                {
                    MessageBox.Show("A data da Vigência Final é menor do que a data da Vigência Inicial!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    txtVigenciaFinal.Focus();

                    return;
                }

                if ((txtDataBaixa.MaskCompleted) && (Convert.ToDateTime(txtVigenciaInicial.Text) > Convert.ToDateTime(txtDataBaixa.Text)))
                {
                    MessageBox.Show("A Data da Baixa é menor do que a data da Vigência Inicial!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    txtDataBaixa.Focus();

                    return;
                }

                if ((txtDataProrrogacao.MaskCompleted) && (Convert.ToDateTime(txtVigenciaInicial.Text) > Convert.ToDateTime(txtDataProrrogacao.Text)))
                {
                    MessageBox.Show("A Data da Renovação Final é menor do que a data da Vigência Inicial!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                    txtDataProrrogacao.Focus();

                    return;
                }
            }

            if ((tipoDoc == "PROC") && (subTipoDoc == "11"))
            {
                updateProcesso();
            }
            updateDocumento();

            Close();
        }

        private void btnCancela_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void updateProcesso()
        {
            try
            {
                string query = "UPDATE PROCESSOS SET  " +
                               "Data_Entrada_TR = @Data_Entrada_TR, Data_vencimento_TR = @Data_vencimento_TR,data_baixa_tr = @data_baixa_tr " +
                               ",NR_DECLARACAO_IMP = @NR_DECLARACAO_IMP, Numero_RCR = @Numero_RCR, TR_VAL_II = @TR_VAL_II " +
                               ",TR_VAL_IPI =@TR_VAL_IPI, TR_VAL_PIS = @TR_VAL_PIS, TR_VAL_COFINS = @TR_VAL_COFINS " +
                               ",Nome_seguradora_GAR =@Nome_seguradora_GAR, nome_fiador_GAR =@nome_fiador_GAR, Fk_Fiador =@Fk_Fiador " +
                               "where Codigo = @Codigo ";

                using (var conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data_Entrada_TR", txtVigenciaInicial.MaskCompleted ? txtVigenciaInicial.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@Data_vencimento_TR", txtVigenciaFinal.MaskCompleted ? txtVigenciaFinal.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@data_baixa_tr", txtDataBaixa.MaskCompleted ? txtDataBaixa.Text : (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@NR_DECLARACAO_IMP", txtDI.Text);
                        cmd.Parameters.AddWithValue("@Numero_RCR", txtRCR.Text);
                        cmd.Parameters.AddWithValue("@TR_VAL_II", string.IsNullOrEmpty(txtValorII.Text) ? 0 : Convert.ToDouble(txtValorII.Text));
                        cmd.Parameters.AddWithValue("@TR_VAL_IPI", string.IsNullOrEmpty(txtValorIPI.Text) ? 0 : Convert.ToDouble(txtValorIPI.Text));
                        cmd.Parameters.AddWithValue("@TR_VAL_PIS", string.IsNullOrEmpty(txtValorPIS.Text) ? 0 : Convert.ToDouble(txtValorPIS.Text));
                        cmd.Parameters.AddWithValue("@TR_VAL_COFINS", string.IsNullOrEmpty(txtValorCOFINS.Text) ? 0 : Convert.ToDouble(txtValorCOFINS.Text));
                        cmd.Parameters.AddWithValue("@Nome_seguradora_GAR", txtSeguradora.Text);
                        cmd.Parameters.AddWithValue("@nome_fiador_GAR", string.IsNullOrEmpty(cbbFiador.Text) ? (object)DBNull.Value : cbbFiador.Text);
                        cmd.Parameters.AddWithValue("@Fk_Fiador", string.IsNullOrEmpty(cbbFiador.Text) ? (object)DBNull.Value : cbbFiador.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@Codigo", processo);
                        cmd.ExecuteNonQuery();
                    }
                }
                LogSistemas.AddLogSistema(processo,
                           FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                           string.Format("Alterou validade TR de docs:{0} - Data_Entrada_TR: De:{1} Para{2} - " +
                                         "Data_vencimento_TR: De:{3} Para{4} - data_baixa_tr: De:{5} Para{6} - " +
                                         "NR_DECLARACAO_IMP: De:{7} Para{8} - Numero_RCR: De:{9} Para{10} - " +
                                         "TR_VAL_II: De:{11} Para{12} - TR_VAL_IPI: De:{13} Para{14} - " +
                                         "TR_VAL_PIS: De:{15} Para{16} - TR_VAL_COFINS: De:{17} Para{18} - " +
                                         "Nome_seguradora_GAR: De:{19} Para{20} - FK_fiador: De:{21} Para{22} ",
                           numeroDoc, vigenciaInicial, txtVigenciaInicial.Text, vigenciaFinal, txtVigenciaFinal.Text,
                           dataBaixa, txtDataBaixa.Text, di, txtDI.Text, rcr, txtRCR.Text, valorII, txtValorII.Text,
                           valorIPI, txtValorIPI.Text, valorPIS, txtValorPIS.Text, valorCOFINS, txtValorCOFINS.Text,
                           seguradora, txtSeguradora.Text, fiador, cbbFiador.SelectedValue.ToString()));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void updateDocumento()
        {
            try
            {
                if (PDF == "1")
                {
                    string query = "UPDATE Documentos SET  " +
                                 "Vigencia_inicial = @Vigencia_inicial, Vigencia_final = @Vigencia_final,data_baixa = @data_baixa, " +
                                 "data_renovacao = @data_renovacao,status = @status " +
                                 "where PDF = 1 and Processo = @Processo and Arquivo = @Arquivo ";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? txtVigenciaInicial.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? txtVigenciaFinal.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@data_baixa", txtDataBaixa.MaskCompleted ? txtDataBaixa.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@data_renovacao", txtDataProrrogacao.MaskCompleted ? txtDataProrrogacao.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@status", cbbStatus.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Arquivo", arquivo);
                            cmd.Parameters.AddWithValue("@Processo", processo);
                            cmd.ExecuteNonQuery();

                        }
                    }
                    LogSistemas.AddLogSistema(processo,
                          FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                          string.Format("Alterou validade de docs:{0} - Vigencia_inicial: De:{1} Para{2} - " +
                                        "Vigencia_final: De:{3} Para{4} - data_baixa: De:{5} Para{6} - " +
                                        "data_renovacao: De:{7} Para{8} - status: De:{9} Para{10} - ",
                          numeroDoc, vigenciaInicial, txtVigenciaInicial.Text, vigenciaFinal, txtVigenciaFinal.Text,
                          dataBaixa, txtDataBaixa.Text, dataProrrogacao, txtDataProrrogacao.Text, status, cbbStatus.SelectedValue.ToString()));

                    MessageBox.Show("Dados Alterado com Sucesso", "Alteração", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    string query = "UPDATE Documentos SET  " +
                                  "Vigencia_inicial = @Vigencia_inicial, Vigencia_final = @Vigencia_final,data_baixa = @data_baixa, " +
                                  "data_renovacao = @data_renovacao,status = @status " +
                                  "where PDF = 0 and Processo = @Processo and Tipo_Doc =@Tipo_Doc " +
                                  "and Sub_Tipo_Doc = @Sub_Tipo_Doc and NUMERO_DOC = @NUMERO_DOC and Codigo =@Codigo ";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Vigencia_inicial", txtVigenciaInicial.MaskCompleted ? txtVigenciaInicial.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@Vigencia_final", txtVigenciaFinal.MaskCompleted ? txtVigenciaFinal.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@data_baixa", txtDataBaixa.MaskCompleted ? txtDataBaixa.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@data_renovacao", txtDataProrrogacao.MaskCompleted ? txtDataProrrogacao.Text : (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@status", cbbStatus.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Processo", processo);
                            cmd.Parameters.AddWithValue("@Tipo_Doc", tipoDoc);
                            cmd.Parameters.AddWithValue("@Sub_Tipo_Doc", subTipoDoc);
                            cmd.Parameters.AddWithValue("@NUMERO_DOC", numeroDoc);
                            cmd.Parameters.AddWithValue("@Codigo", codigo);
                            cmd.ExecuteNonQuery();

                        }
                    }
                    LogSistemas.AddLogSistema(processo,
                          FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                          string.Format("Alterou validade de docs:{0} - Vigencia_inicial: De:{1} Para{2} - " +
                                        "Vigencia_final: De:{3} Para{4} - data_baixa: De:{5} Para{6} - " +
                                        "data_renovacao: De:{7} Para{8} - status: De:{9} Para{10} - ",
                          numeroDoc, vigenciaInicial, txtVigenciaInicial.Text, vigenciaFinal, txtVigenciaFinal.Text,
                          dataBaixa, txtDataBaixa.Text, dataProrrogacao, txtDataProrrogacao.Text, status, cbbStatus.SelectedValue.ToString()));

                    MessageBox.Show("Dados Alterado com Sucesso", "Alteração", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtValorII_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorIPI_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorPIS_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }

        private void txtValorCOFINS_KeyPress(object sender, KeyPressEventArgs e)
        {
            Util.SomenteNumero(e);
        }
    }
}
