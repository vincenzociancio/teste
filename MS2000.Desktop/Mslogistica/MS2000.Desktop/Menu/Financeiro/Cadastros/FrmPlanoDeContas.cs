using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmPlanoDeContas : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmPlanoDeContas()
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

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;

            txtDescricao.Focus();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtCodigo.Focus();
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
                    string query = "UPDATE Plano_Contas SET Descricao = @Descricao WHERE Codigo = @Codigo";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), txtCodigo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Plano_Contas      " +
                                   " ( Codigo,  Descricao) VALUES " +
                                   " (@Codigo, @Descricao)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
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
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Plano_Contas WHERE Codigo = @Codigo ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", (txtCodigo.Text == "  /  /  ") ? DBNull.Value : (object)txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Codigo: {0}", txtCodigo.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtCodigo.Text.Trim()))
            {
                MessageBox.Show("Código obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigo.Focus();
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
                if (PlanoDeContasJaExistente() == true)
                {
                    txtCodigo.Focus();
                    return false;
                }
            }

            return true;
        }

        private Boolean PlanoDeContasJaExistente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Codigo, Descricao FROM Plano_Contas WHERE Codigo = @Codigo ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Já existe Plano de Conta com este código!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
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

        private DataTable getPlanoDeContas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Codigo, Descricao FROM Plano_Contas ORDER BY Descricao";

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

        private DataTable getNumerarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Codigo, Descricao, Plano_contas FROM Tipos_Numerario WHERE Plano_contas = @Plano_contas ORDER BY Descricao ";


            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Plano_contas", txtCodigo.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }        

        private void dataGridView_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            dataGridView1.AutoGenerateColumns = false;

            bindingSource1.DataSource = getNumerarios();

            dataGridView1.DataSource = bindingSource1;  
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getPlanoDeContas();

            dataGridView.DataSource = bindingSource;
        }
    }
}
