using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmTiposCreditos : MS2000.Desktop.Componentes.MSForm01
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

        public FrmTiposCreditos()
        {
            InitializeComponent();
        }

        private void FrmTiposCreditos_Load(object sender, EventArgs e)
        {            
            getPlanoDeContas();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtDescricao_Ingles.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_Ingles", true));
            cbbPlanoDeContas.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Plano_Contas"));
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

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (CodigoEmUso(txtCodigo.Text) == true) return;

            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Tipos_Creditos WHERE Codigo = @Codigo ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;                    

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Tipos_creditos SET Descricao = @Descricao, Descricao_Ingles = @Descricao_Ingles, Plano_contas = @Plano_contas WHERE Codigo = @Codigo ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Ingles", txtDescricao_Ingles.Text);
                        cmd.Parameters.AddWithValue("@Plano_contas", (cbbPlanoDeContas.SelectedValue == null ? "" : cbbPlanoDeContas.SelectedValue));                        
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), txtCodigo.Text));
                }
                else
                {                    
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Tipos_creditos                   " +
                                   " ( Codigo,  Descricao,  Descricao_Ingles,  Plano_contas) VALUES " +
                                   " (@Codigo, @Descricao, @Descricao_Ingles, @Plano_contas)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo",    txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Ingles", txtDescricao_Ingles.Text);
                        cmd.Parameters.AddWithValue("@Plano_Contas", (cbbPlanoDeContas.SelectedValue == null ? "" : cbbPlanoDeContas.SelectedValue));                        

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
                MessageBox.Show("Descrição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtDescricao_Ingles.Text.Trim()))
            {
                MessageBox.Show("Descrição inglês obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao_Ingles.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbPlanoDeContas.Text))
            {
                MessageBox.Show("Plano de Contas obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPlanoDeContas.Focus();
                return false;
            }

            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                if (Util.CodigoOuDescricaoJaExistente("Tipos_creditos", txtDescricao.Text, txtCodigo.Text, statusCadastro))
                {
                    if (statusCadastro == StatusCadastro.Novo)
                    {
                        txtCodigo.Focus();
                    }
                    else
                    {
                        txtDescricao.Focus();
                    }

                    return false;
                }
            }

            return true;
        }        

        private Boolean CodigoEmUso(String Credito)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TOP 1 Credito FROM Creditos_Processos WHERE Credito = @Credito ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Credito", Credito);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Crédito já em uso não pode ser excluído!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

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

        private DataTable getTiposCreditos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "   SELECT Tipos_creditos.Codigo, Tipos_creditos.Descricao, Tipos_creditos.Descricao_Ingles, Tipos_creditos.Plano_Contas, PC.Descricao AS Plano_Desc " +
                           "     FROM Tipos_creditos INNER JOIN Plano_Contas PC" +
                           "       ON Tipos_creditos.Plano_Contas = PC.Codigo " +
                           " ORDER BY Tipos_creditos.Descricao ";

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

        private void getPlanoDeContas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Plano_Contas";
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

                cbbPlanoDeContas.DataSource    = table;
                cbbPlanoDeContas.DisplayMember = "Descricao";
                cbbPlanoDeContas.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getTiposCreditos();

            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Descricao LIKE '" + txtPesquisar.Text + "%'";
            }
        }
    }
}
