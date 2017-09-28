using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmNavios : MS2000.Desktop.Componentes.MSForm01
    {

        private bool _canInsertEditAndDelete;
        protected StatusCadastro statusCadastro;
        private int PK_NAVIO;

        public FrmNavios()
        {
            InitializeComponent();
            _canInsertEditAndDelete = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Controles - Controle Chegada de Navios - Inclui, Edita e Exclui",
                Chave_Busca = "OperaçõesChegadaNavios"
            });
        }
        
        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None) && (_canInsertEditAndDelete);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Novo);
            gvNavios.Enabled = statusCadastro == StatusCadastro.None;
            gbPesquisar.Enabled = statusCadastro == StatusCadastro.None;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gbNavio.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }
        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            txtPesquisar.Clear();
            txtNavio.Clear();
            HabilitarDesabilitaControles(true);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                string queryvalida = "Select Nome_Navio from CONTROLE_NAVIOS where Nome_Navio = @Nome_Navio and Excluido = 0";
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryvalida, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome_Navio", txtNavio.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                MessageBox.Show("Ja existe um Navio Registrado com esse nome.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }
                    }
                }

                GeraIDNavio();
                string query = "INSERT INTO CONTROLE_NAVIOS VALUES (@PK_NAVIO,@Nome_Navio,@EXCLUIDO)";
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK_NAVIO", PK_NAVIO);
                        cmd.Parameters.AddWithValue("@Nome_Navio", txtNavio.Text);
                        cmd.Parameters.AddWithValue("@EXCLUIDO", 0);
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);

                LogSistemas.AddLogSistema(PK_NAVIO.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Navio:{0}", txtNavio.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


            txtNavio.Clear();
            bindingSource1.DataSource = PopulaNavios();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private DataTable PopulaNavios()
        {
            string queryNavios = "SELECT PK_NAVIO, NOME_NAVIO, EXCLUIDO " +
                                 "FROM Controle_Navios " +
                                 "WHERE EXCLUIDO = 0 " +
                                 "ORDER BY NOME_NAVIO";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(queryNavios, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtNavio.Clear();
            bindingSource1.DataSource = PopulaNavios();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {

                    string query = "UPDATE CONTROLE_NAVIOS SET EXCLUIDO = @EXCLUIDO WHERE PK_NAVIO = @PK_NAVIO";
                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@EXCLUIDO", 1);
                            cmd.Parameters.AddWithValue("@PK_NAVIO", bindingSource1.GetRelatedCurrencyManager("PK_NAVIO").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }


                    LogSistemas.AddLogSistema(bindingSource1.GetRelatedCurrencyManager("PK_NAVIO").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag),
                        string.Format("Navio: {0} ", txtNavio.Text));

                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);

                    bindingSource1.DataSource = PopulaNavios();
                    gvNavios.DataSource = bindingSource1;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void GeraIDNavio()
        {

            string query = "SELECT MAX(PK_NAVIO) as ID from Controle_Navios";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                            PK_NAVIO = Convert.ToInt32(reader["ID"].ToString()) + 1;
                    }
                }
            }

        }
        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void FrmNavios_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            bindingSource1.DataSource = PopulaNavios();
            bindingNavigator.BindingSource = bindingSource1;
            txtNavio.DataBindings.Add(new Binding("Text", bindingSource1, "Nome_Navio", true));
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            bindingSource1.Filter = "Nome_Navio like '%" + txtPesquisar.Text + "%'";
        }


    }
}
