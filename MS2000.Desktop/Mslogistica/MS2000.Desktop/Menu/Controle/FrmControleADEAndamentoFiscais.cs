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
    public partial class FrmControleADEAndamentoFiscais : MS2000.Desktop.Componentes.MSForm01
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
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        public FrmControleADEAndamentoFiscais()
        {
            InitializeComponent();
        }

        private void FrmControleADEAndamentoFiscais_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFiscais();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            this.txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
        }

        private DataTable getFiscais()
        {
            string query = " select PK_Fiscais,Nome from Controle_ADE_Fiscais where Excluido = 0 order by Nome";
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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {    

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                MessageBox.Show("O Nome é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNome.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update Controle_ADE_Fiscais set Nome = @Nome where PK_Fiscais = @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_Fiscais").Current.ToString());                         
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_Fiscais").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Nome"].ToString(), txtNome.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Controle_ADE_Fiscais (Nome) values(@Nome)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                      
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nome:{0}", txtNome.Text));
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtNome.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Controle_ADE_Fiscais set Excluido = 1 where PK_Fiscais = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("PK_Fiscais").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("PK_Fiscais").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Nome: {0}", bindingSource.GetRelatedCurrencyManager("Nome").Current.ToString()));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
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

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Nome LIKE '" + txtLocalizar.Text + "%'";
        }

    }
}
