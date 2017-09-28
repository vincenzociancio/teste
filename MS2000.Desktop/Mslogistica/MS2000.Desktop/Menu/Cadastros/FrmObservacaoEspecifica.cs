using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmObservacaoEspecifica : MS2000.Desktop.Componentes.MSForm01
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
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
            txtCodigo.Enabled = false;
        }


        public FrmObservacaoEspecifica()
        {
            InitializeComponent();
        }

        private void FrmObservacaoEspecifica_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getObservacao();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            this.txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "PK_OBS", true));
            this.txtObservacao.DataBindings.Add(new Binding("Text", bindingSource, "DESC_OBS", true));
        }

        private DataTable getObservacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_OBS, DESC_OBS from TB_RCR_OBS_ESPECIFICA where Excluido = 0";
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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtObservacao.Text))
            {
                MessageBox.Show("A observação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtObservacao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update TB_RCR_OBS_ESPECIFICA set DESC_OBS = @DESC_OBS where PK_OBS = @PK";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@DESC_OBS", txtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["DESC_OBS"].ToString(), txtObservacao.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into TB_RCR_OBS_ESPECIFICA (DESC_OBS)values(@DESC_OBS)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@DESC_OBS", txtObservacao.Text);                        
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Observação: {0} ", txtObservacao.Text));
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
            if (statusCadastro == StatusCadastro.Novo)
            {
                bindingSource.CancelEdit();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
            }
            else
            {
                bindingSource.CancelEdit();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update TB_RCR_OBS_ESPECIFICA set Excluido = 1 where PK_OBS = @PK";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Observação: {0}", txtObservacao.Text));
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
    }
}
