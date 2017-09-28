using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmGerenciaNormaProcedimentoSetor : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            btnCadastroSubSetor.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmGerenciaNormaProcedimentoSetor()
        {
            InitializeComponent();
        }

        private DataTable getSetor()
        {
            string query = " SELECT PK_SETOR,Nome_setor,Excluido FROM controle_normas_setor  WHERE EXCLUIDO = 0 ORDER BY nome_setor";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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
        }

        private bool SetorEmUso()
        {
            string query = "SELECT nome_setor FROM controle_normas_setor WHERE nome_setor = @nome_setor and Excluido = '0' ";
          
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@nome_setor", txtDescricao.Text); 
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


        private void FrmGerenciaNormaProcedimentoSetor_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            bindingSource.DataSource = getSetor();

            dataGridView.DataSource = bindingSource;

            bindingNavigator.BindingSource = bindingSource;

            this.txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Nome_setor", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtDescricao.Focus();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (SetorEmUso())
            {
                MessageBox.Show("Favor verificar pois este Setor já está cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update Controle_normas_setor set Nome_setor = @Nome_setor where PK_SETOR = @PK_SETOR";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome_setor", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@PK_SETOR", ((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Nome_setor"].ToString(), txtDescricao.Text));
                }
                else
                {
                    string query = "insert into Controle_normas_setor (Nome_setor) values (@Nome_setor)";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome_setor", txtDescricao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    var sequencial = ((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString();
                    bindingSource.DataSource = getSetor();
                    bindingSource.Position = bindingSource.Find("PK_SETOR", sequencial);
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
                }

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

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "update Controle_normas_setor set Excluido = @Excluido where PK_SETOR = @PK_SETOR";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Excluido", true);
                        cmd.Parameters.AddWithValue("@PK_SETOR", ((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
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
        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtDescricao.Focus();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCadastroSubSetor_Click(object sender, EventArgs e)
        {
            using (var form = new FrmGerenciaNormaProcedimentoSubSetor())
            {
                form.fk_setor = ((DataRowView)this.bindingSource.Current).Row["PK_SETOR"].ToString();
                if ( FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    getSetor();
                }
            }
        }
    }
}
