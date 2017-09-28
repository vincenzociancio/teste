using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmPlanoDeContasContabil : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnFechar.Enabled    = (statusCadastro == StatusCadastro.None);

            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);

            txtCodigo.Enabled = false;
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmPlanoDeContasContabil()
        {
            InitializeComponent();
        }

        private void FrmPlanoDeContas_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "ID", true));
            txtConta.DataBindings.Add(new Binding("Text", bindingSource, "Conta", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                statusCadastro = StatusCadastro.Editar;
                HabilitarDesabilitaControles(true);
                tabControl.SelectedTab = tabFormulario;

                txtConta.Focus();   
            }                       
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtConta.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;            

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Plano_Contas_Contabil SET Conta = @Conta, Descricao = @Descricao WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Conta", txtConta.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), txtCodigo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Plano_Contas_Contabil    " +
                                   " ( Conta,  Descricao) VALUES " +
                                   " (@Conta, @Descricao)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Conta", txtConta.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", txtCodigo.Text));
                }

                AtualizaGrid();

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }        

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = " DELETE FROM Plano_Contas_Contabil WHERE ID = @ID ";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", (txtCodigo.Text == "  /  /  ") ? DBNull.Value : (object)txtCodigo.Text);
                            cmd.ExecuteNonQuery();
                        }
                        
                        LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Codigo: {0}", txtCodigo.Text));

                        bindingSource.RemoveCurrent();

                        statusCadastro = StatusCadastro.None;

                        AtualizaGrid();

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }                                              
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtConta.Text.Trim()))
            {
                MessageBox.Show("Classificação obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtConta.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text.Trim()))
            {
                MessageBox.Show("Descricão obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return false;
            }

            if (statusCadastro != StatusCadastro.Editar)
            {
                if (PlanoDeContasContabilJaExistente() == true)
                {
                    txtConta.Focus();
                    return false;
                }
            }

            return true;
        }

        private Boolean PlanoDeContasContabilJaExistente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ID FROM Plano_Contas_Contabil WHERE Conta = @Conta ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Conta", txtConta.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Já existe Plano de Conta Contábil com esta Classificação!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private DataTable getPlanoDeContasContabil()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT ID, Conta, Descricao FROM Plano_Contas_Contabil ORDER BY Conta ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }                

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getPlanoDeContasContabil();

            dataGridView.DataSource = bindingSource;
        }
    }
}