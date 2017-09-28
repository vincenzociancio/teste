
using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmTerminais : Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        private int PK_TERMINAL;
        private bool _canInsertEditAndDelete;

        public FrmTerminais()
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
            gvTerminais.Enabled = statusCadastro == StatusCadastro.None;
            gbPesquisar.Enabled = statusCadastro == StatusCadastro.None;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gbTerminal.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            txtPesquisa.Clear();
            txtTerminal.Clear();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                string queryvalida = "Select Nome_Terminal from CONTROLE_NAVIOS_Terminal where Nome_Terminal = @Nome_Terminal and Excluido = 0";
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(queryvalida, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome_Terminal", txtTerminal.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                MessageBox.Show("Ja existe um Terminal Registrado com esse nome.", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                txtTerminal.Focus();
                                return;
                            }
                        }
                    }
                }

                GeraIDTerminal();
                string query = "INSERT INTO CONTROLE_NAVIOS_TERMINAL VALUES (@PK_TERMINAL,@Nome_Terminal,@EXCLUIDO)";
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK_TERMINAL", PK_TERMINAL);
                        cmd.Parameters.AddWithValue("@Nome_Terminal", txtTerminal.Text);
                        cmd.Parameters.AddWithValue("@EXCLUIDO", 0);
                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);

                LogSistemas.AddLogSistema(PK_TERMINAL.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                    string.Format("Terminal :{0}", txtTerminal.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


            txtTerminal.Clear();
            bindingSource1.DataSource = PopulaTerminais();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private DataTable PopulaTerminais()
        {
            string queryTerminal = "SELECT PK_TERMINAL, NOME_TERMINAL, EXCLUIDO " +
                                 "FROM Controle_Navios_TERMINAL " +
                                 "WHERE EXCLUIDO = 0 " +
                                 "ORDER BY NOME_TERMINAL";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(queryTerminal, conn))
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
            txtTerminal.Clear();
            bindingSource1.DataSource = PopulaTerminais();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,
                  MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    string query = "UPDATE CONTROLE_NAVIOS_TERMINAL SET EXCLUIDO = @EXCLUIDO WHERE PK_TERMINAL = @PK_TERMINAL";
                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@EXCLUIDO", 1);
                            cmd.Parameters.AddWithValue("@PK_TERMINAL", bindingSource1.GetRelatedCurrencyManager("PK_TERMINAL").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }


                    LogSistemas.AddLogSistema(bindingSource1.GetRelatedCurrencyManager("PK_TERMINAL").Current.ToString(),
                        FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag),
                        string.Format("Terminal: {0} ", txtTerminal.Text));

                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);

                    bindingSource1.DataSource = PopulaTerminais();
                    gvTerminais.DataSource = bindingSource1;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void GeraIDTerminal()
        {

            string query = "SELECT MAX(PK_TERMINAL) as ID from Controle_Navios_Terminal";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                            PK_TERMINAL = Convert.ToInt32(reader["ID"].ToString()) + 1;
                    }
                }
            }

        }
        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            bindingSource1.Filter = "Nome_Terminal like '%" + txtPesquisa.Text + "%'";
        }

        private void FrmTerminais_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            bindingSource1.DataSource = PopulaTerminais();
            bindingNavigator.BindingSource = bindingSource1;
            txtTerminal.DataBindings.Add(new Binding("Text", bindingSource1, "Nome_Terminal", true));
        }

        private void FrmTerminais_FormClosed(object sender, FormClosedEventArgs e)
        {
            FrmControleNaviosChegada frmnavioschegada = new FrmControleNaviosChegada();
            frmnavioschegada.Show();
        }


    }
}
