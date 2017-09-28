using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Classes;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleTransmittalCadastro : MS2000.Desktop.Componentes.MSForm01
    {
        public string numTransmittal { get; set; }
        public string dataEnvio { get; set; }
        public string setorRemetente { get; set; }
        public string destinatario { get; set; }
        public string tipoDocumento { get; set; }
        public string importador { get; set; }
        public string destinacao { get; set; }
        public string numProcesso { get; set; }
        public string dataRecebimento { get; set; }
        public string receptor { get; set; }
        public string codImportador { get; set; }

        public string remetente { get; set; }
        public StatusCadastro statusCadastro;


        public FrmControleTransmittalCadastro()
        {
            InitializeComponent();
        }

        private void FrmControleTransmittalCadastro_Load(object sender, EventArgs e)
        {
            getImportadores();
            getSetorRemetente();
            getDestinatario();
            getTipoDocumento();

            if (statusCadastro == StatusCadastro.Editar)
            {
                panelControl.Enabled = (remetente == FrmPrincipal.UsuarioLogado);

                gpbRecebimento.Enabled = true;
                txtDataRecebimento.Enabled = true;

                //if (txtDataRecebimento.MaskCompleted || (FrmPrincipal.Hierarquia == 0 || FrmPrincipal.Hierarquia == 4))
                //{
                //    gpbRecebimento.Enabled = false;
                //}

                txtNumProcesso.Text = numProcesso;
                txtDataEnvio.Text = dataEnvio;
                mcbSetorRemetente.SelectedValue = setorRemetente;
                mcbTipoDocumento.SelectedValue = tipoDocumento;

                if (importador == "") { mcbImportador.SelectedIndex = -1; } else { mcbImportador.SelectedValue = importador; }
                txtCodImportador.Text = (mcbImportador.SelectedValue == null ? "" : mcbImportador.SelectedValue.ToString());
                if (destinatario == "") { mcbDestinatario.SelectedIndex = -1; } else { mcbDestinatario.SelectedValue = destinatario; }

                txtDestinacao.Text = destinacao;
                txtDataRecebimento.Text = dataRecebimento;
                txtReceptor.Text = receptor;
            }
            else
            {
                txtDataEnvio.Text = DateTime.Now.ToShortDateString();
                mcbTipoDocumento.SelectedIndex = -1;
                mcbSetorRemetente.SelectedIndex = -1;
                mcbImportador.SelectedIndex = -1;
                mcbDestinatario.SelectedIndex = -1;
                gpbRecebimento.Enabled = false;
            }
        }

        private void btnCancela_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void getImportadores()
        {
            string query =
                "select Codigo ,Razao_Social FROM Importadores WHERE Ativo = 1 ORDER BY Razao_social";
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

                mcbImportador.DataSource = null;
                mcbImportador.DataSource = table;
                mcbImportador.DisplayMember = "Razao_Social";
                mcbImportador.ValueMember = "Codigo";
                mcbImportador.SelectedIndex = -1;
            }

        }
        private void getSetorRemetente()
        {
            string query =
                "SELECT Codigo, Descricao FROM Setores WHERE Excluido <> 1";
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
                mcbSetorRemetente.DataSource = null;
                mcbSetorRemetente.DataSource = table;
                mcbSetorRemetente.DisplayMember = "Descricao";
                mcbSetorRemetente.ValueMember = "Codigo";
                mcbSetorRemetente.SelectedIndex = -1;
            }

        }
        private void getDestinatario()
        {
            string query =
                "SELECT id, destinatario FROM Destinatario ORDER BY destinatario, id";
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
                mcbDestinatario.DataSource = null;
                mcbDestinatario.DataSource = table;
                mcbDestinatario.DisplayMember = "Destinatario";
                mcbDestinatario.ValueMember = "id";
                mcbDestinatario.SelectedIndex = -1;
            }

        }
        private void getTipoDocumento()
        {
            string query =
                "select Codigo, Descricao from Sub_Tipo_Documentos where Tipo_doc in ('OPN','FINA') and codigo in ('106','107','108')";
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
                mcbTipoDocumento.DataSource = null;
                mcbTipoDocumento.DataSource = table;
                mcbTipoDocumento.DisplayMember = "Descricao";
                mcbTipoDocumento.ValueMember = "Codigo";
                mcbTipoDocumento.SelectedIndex = -1;
            }

        }

        private void btnConfirma_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDataEnvio.Text.Replace("/", "").Trim()))
            {
                MessageBox.Show("A Data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataEnvio.Focus();
                return;
            }
            if (string.IsNullOrEmpty(mcbSetorRemetente.Text) || mcbSetorRemetente.SelectedValue == null)
            {
                MessageBox.Show("O Setor do Remetente é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbSetorRemetente.Focus();
                return;
            }
            if (string.IsNullOrEmpty(mcbDestinatario.Text) || mcbDestinatario.SelectedValue == null)
            {
                MessageBox.Show("O Destinatario é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbDestinatario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbTipoDocumento.Text) || mcbTipoDocumento.SelectedValue == null)
            {
                MessageBox.Show("O Tipo de Documento é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbTipoDocumento.Focus();
                return;
            }
            if (mcbTipoDocumento.SelectedValue.ToString() != "107")
            {
                if (!(txtNumProcesso.MaskCompleted))
                {
                    MessageBox.Show("O Nº de Processo é obrigatório!", "Atenção", MessageBoxButtons.OK,
                        MessageBoxIcon.Stop);
                    txtNumProcesso.Focus();
                    return;
                }
            }
            if (statusCadastro == StatusCadastro.Editar)
            {
                if (string.IsNullOrEmpty(txtDataRecebimento.Text))
                {
                    MessageBox.Show("A Data de Recebimento é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtDataRecebimento.Focus();
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    if (mcbTipoDocumento.SelectedValue.ToString() != "107")
                    {
                        string queryAnexo = "select * from Documentos where Processo = @processo " +
                                            " and Tipo_Doc in ('OPN','FINA','PROC') and sub_tipo_doc = @SubTipo";

                        using (var conn = DatabaseSqlConnection.Instance.Conexao)
                        {
                            using (SqlCommand cmd = new SqlCommand(queryAnexo, conn))
                            {
                                cmd.Parameters.AddWithValue("@processo", txtNumProcesso.Text);
                                cmd.Parameters.AddWithValue("@SubTipo", mcbTipoDocumento.SelectedValue.ToString());
                                using (SqlDataReader reader = cmd.ExecuteReader())
                                {
                                    if (!reader.HasRows)
                                    {
                                        MessageBox.Show("Favor Digitalizar o Transmittal!", "Atenção",
                                            MessageBoxButtons.OK, MessageBoxIcon.Stop);
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    string query = "Update Transmittal set Data = @DataEnvio, Importador = @Importador, " +
                                   "Destinatario = @Destinatario, Destinacao = @Destinacao, " +
                        //   "Setor = @SetorRemetente, Remetente = @Remetente, Data_Recebimento = @DataRecebimento, Receptor = @Receptor, " +
                                   "Setor = @SetorRemetente, Data_Recebimento = @DataRecebimento, Receptor = @Receptor, " +
                                   "processo = @Processo, SubTipo = @SubTipo where Codigo = @Codigo";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Codigo", numTransmittal);
                            cmd.Parameters.AddWithValue("@DataEnvio", string.IsNullOrEmpty(txtDataEnvio.Text.Replace("/", "").Trim()) ? (object)DBNull.Value : Convert.ToDateTime(txtDataEnvio.Text));
                            cmd.Parameters.AddWithValue("@Importador", (mcbImportador.SelectedValue == null ? (object)DBNull.Value : mcbImportador.SelectedValue.ToString()));
                            cmd.Parameters.AddWithValue("@Destinatario", mcbDestinatario.SelectedValue);
                            cmd.Parameters.AddWithValue("@Destinacao", txtDestinacao.Text);
                            cmd.Parameters.AddWithValue("@SetorRemetente", mcbSetorRemetente.SelectedValue);
                            //  cmd.Parameters.AddWithValue("@Remetente", FrmPrincipal.UsuarioLogado);
                            cmd.Parameters.AddWithValue("@DataRecebimento", string.IsNullOrEmpty(txtDataRecebimento.Text.Replace("/", "").Trim()) ? (object)DBNull.Value : Convert.ToDateTime(txtDataRecebimento.Text));
                            cmd.Parameters.AddWithValue("@Receptor", txtReceptor.Text);
                            cmd.Parameters.AddWithValue("@Processo", txtNumProcesso.Text);
                            cmd.Parameters.AddWithValue("@SubTipo", mcbTipoDocumento.SelectedValue);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    #region INCLUI FOLLOWUP
                    if (mcbTipoDocumento.SelectedValue.ToString() == "106")
                    {
                        var follow = new FollowUp
                        {
                            Processo = txtNumProcesso.Text,
                            CodigoEvento = "1021",
                            CodigoObs = "1409",
                            Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                            Hora = DateTime.Now.ToString("HH:mm"),
                            FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                            Usuario = FrmPrincipal.UsuarioLogado,
                        };

                        follow.Incluir(follow);
                    }
                    if (mcbTipoDocumento.SelectedValue.ToString() == "107")
                    {
                        if (txtNumProcesso.MaskCompleted)
                        {
                            var follow = new FollowUp
                            {
                                Processo = txtNumProcesso.Text,
                                CodigoEvento = "1021",
                                CodigoObs = "1411",
                                Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                                Hora = DateTime.Now.ToString("HH:mm"),
                                FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                                Usuario = FrmPrincipal.UsuarioLogado,
                            };

                            follow.Incluir(follow);
                        }
                    }
                    if (mcbTipoDocumento.SelectedValue.ToString() == "108")
                    {
                        var follow = new FollowUp
                        {
                            Processo = txtNumProcesso.Text,
                            CodigoEvento = "1020",
                            CodigoObs = "1410",
                            Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                            Hora = DateTime.Now.ToString("HH:mm"),
                            FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                            Usuario = FrmPrincipal.UsuarioLogado,
                        };

                        follow.Incluir(follow);
                    }
                    #endregion INCLUI FOLLOWUP

                    LogSistemas.AddLogSistema(numTransmittal,
                            FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                            string.Format("Transmittal :{0}",
                                numTransmittal));
                    Close();
                    MessageBox.Show("Dados do Transmittal Alterado com Sucesso", "Alteração", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    FrmControleTransmittalItens frmItens = new FrmControleTransmittalItens();

                    string query =
                        "insert into Transmittal (Data, Remetente, Destinatario,Importador,Destinacao,Setor,processo,SubTipo, Codigo) " +
                        "values (Cast(@DataEnvio as Date),@Remetente ,@Destinatario,@Importador,@Destinacao,@SetorRemetente,@processo,@SubTipo,@Codigo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", ObterNovoTransmittal());
                        cmd.Parameters.AddWithValue("@DataEnvio", DateTime.Now);
                        cmd.Parameters.AddWithValue("@Remetente", FrmPrincipal.UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Importador", (mcbImportador.SelectedValue == null ? (object)DBNull.Value : mcbImportador.SelectedValue.ToString()));
                        cmd.Parameters.AddWithValue("@Destinatario", mcbDestinatario.SelectedValue);
                        cmd.Parameters.AddWithValue("@Destinacao", txtDestinacao.Text);
                        cmd.Parameters.AddWithValue("@SetorRemetente", mcbSetorRemetente.SelectedValue);
                        cmd.Parameters.AddWithValue("@Processo", txtNumProcesso.Text);
                        cmd.Parameters.AddWithValue("@SubTipo", mcbTipoDocumento.SelectedValue);
                        cmd.ExecuteNonQuery();

                        //frmItens.idTransmittal = getIdTransmittal();
                        //frmItens.transmittal   = ObterNovoTransmittal();
                        //frmItens.importador    = mcbImportador.Text;
                        //frmItens.destinatario  = mcbDestinatario.Text;
                        //frmItens.dataEnviado   = DateTime.Now.ToString();
                    }
                    #region INCLUI FOLLOWUP
                    if (mcbTipoDocumento.SelectedValue.ToString() == "106")
                    {
                        var follow = new FollowUp
                        {
                            Processo = txtNumProcesso.Text,
                            CodigoEvento = "1021",
                            CodigoObs = "1406",
                            Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                            Hora = DateTime.Now.ToString("HH:mm"),
                            FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                            Usuario = FrmPrincipal.UsuarioLogado,
                        };
                        follow.Incluir(follow);
                    }
                    if (mcbTipoDocumento.SelectedValue.ToString() == "107")
                    {
                        if (txtNumProcesso.MaskCompleted)
                        {
                            var follow = new FollowUp
                            {
                                Processo = txtNumProcesso.Text,
                                CodigoEvento = "1021",
                                CodigoObs = "1408",
                                Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                                Hora = DateTime.Now.ToString("HH:mm"),
                                FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                                Usuario = FrmPrincipal.UsuarioLogado,
                            };

                            follow.Incluir(follow);
                        }
                    }
                    if (mcbTipoDocumento.SelectedValue.ToString() == "108")
                    {
                        var follow = new FollowUp
                        {
                            Processo = txtNumProcesso.Text,
                            CodigoEvento = "1020",
                            CodigoObs = "1407",
                            Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")),
                            Hora = DateTime.Now.ToString("HH:mm"),
                            FK_Usuario = FrmPrincipal.PK_UsuarioLogado,
                            Usuario = FrmPrincipal.UsuarioLogado,
                        };

                        follow.Incluir(follow);
                    }
                    #endregion INCLUI FOLLOWUP
                    //LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                    //    Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", ));
                    Close();
                    MessageBox.Show("Transmittal Salvo com Sucesso", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //frmItens.ShowDialog();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private string getIdTransmittal()
        {
            string SQL = "SELECT MAX(ID) AS ID FROM TRANSMITTAL ";
            string idTransmittal = "";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            idTransmittal = reader["ID"].ToString();
                        }

                        return idTransmittal;
                    }
                }
            }
        }
        private void txtCodImportador_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtCodImportador.Text))
            {
                mcbImportador.SelectedValue = txtCodImportador.Text;
            }
            else
            {
                mcbImportador.SelectedIndex = -1;
            }
        }

        private void mcbImportador_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (mcbImportador.SelectedIndex != -1)
            {
                txtCodImportador.Text = mcbImportador.SelectedValue.ToString();
            }
        }

        private string ObterNovoTransmittal()
        {
            string retorno = "-1";
            var strSql = new StringBuilder();
            strSql.Append("SELECT CASE ");
            strSql.Append("WHEN SUBSTRING(CODIGO,7,2) = RIGHT(YEAR(GETDATE()),2) THEN ");
            strSql.Append("RIGHT('00000'+");
            strSql.Append("CONVERT(VARCHAR(5), CONVERT(INT, SUBSTRING(CODIGO,1,5))+1),5)+'/'+RIGHT(YEAR(GETDATE()),2) ");
            strSql.Append("ELSE RIGHT('00000'+");
            strSql.Append("CONVERT(VARCHAR(5),1),5)+'/'+RIGHT(YEAR(GETDATE()),2) ");
            strSql.Append("END AS NEWCODE FROM Transmittal ");
            strSql.Append("WHERE ID = (SELECT MAX(ID) FROM Transmittal WHERE DATA IS NOT NULL)");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                retorno = dr["NEWCODE"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                retorno = "ERRO";
            }
            return retorno;
        }
    }
}
