using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmControleBackupFita : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        bool _canExclui;


        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && (_canExclui); 
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }


        public FrmControleBackupFita()
        {
            InitializeComponent();
        }

        private DataTable getControle()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CB.ID,Data,cb.Status, S.Status as Descricao,Observacao FROM [dbo].[Sistemas.ControleBackupFita] CB " +
                           "INNER JOIN [dbo].[Sistemas.ControleBackupFitaStatus] S on CB.Status  = S.ID order by ID desc";
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

        private void getStatus()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,Status FROM [dbo].[Sistemas.ControleBackupFitaStatus]";
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
                mcbbStatus.DataSource = table;
                mcbbStatus.DisplayMember = "Status";
                mcbbStatus.ValueMember = "ID";
                mcbbStatus.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmControleBackupFita_Load(object sender, EventArgs e)
        {

            _canExclui = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "Sistemas - Controle de Backup em Fita - Exclui",
                Chave_Busca = "btnExcluir"
            });

            getStatus();

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControle();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtData.DataBindings.Add(new Binding("Text", bindingSource, "data", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            mcbbStatus.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Status"));
            txtObservacao.DataBindings.Add(new Binding("Text", bindingSource, "Observacao", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (!(txtData.MaskCompleted))
            {
                MessageBox.Show("A Data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbStatus.Text))
            {
                MessageBox.Show("O Status é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbStatus.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtObservacao.Text))
            {
                MessageBox.Show("A Observação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtObservacao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE [dbo].[Sistemas.ControleBackupFita] " +
                                   "SET Data = @Data,Status = @Status,Observacao = @Observacao " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Status", (mcbbStatus.SelectedValue == null ? "" : mcbbStatus.SelectedValue));
                        cmd.Parameters.AddWithValue("@Observacao", txtObservacao.Text);
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Data:{0} Status:{1} Observação{2}", txtData.Text, mcbbStatus.Text, txtObservacao.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO [dbo].[Sistemas.ControleBackupFita](Data,Status,Observacao) " +
                                   "VALUES (@Data,@Status,@Observacao)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Status", (mcbbStatus.SelectedValue == null ? "" : mcbbStatus.SelectedValue));
                        cmd.Parameters.AddWithValue("@Observacao", txtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getControle();
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Data:{0} Status:{1} Observação{2}", txtData.Text, mcbbStatus.Text, txtObservacao.Text));
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

        private void txtLocalizaData_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Convert(Data, 'System.String') like '" + txtLocalizaData.Text + "%'";
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM [dbo].[Sistemas.ControleBackupFita] where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Data: {0}", txtData.Text));
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
    }
}
