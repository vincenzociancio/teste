using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Classes;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmCadastroDestinatario : Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);

        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            txtDestinatario.Enabled = bValue;
            txtLocalizar.Enabled = !bValue;
            grvDestinatario.Enabled = !bValue;

            VerificaBotoes();
        }

        public FrmCadastroDestinatario()
        {
            InitializeComponent();
        }

        private DataTable getDestinatario()
        {
            string query = "SELECT ID, destinatario " +
                            "FROM Destinatario " +
                            "ORDER BY destinatario, ID";

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

        private void FrmCadastroDestinatario_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            grvDestinatario.AutoGenerateColumns = false;
            HabilitarDesabilitaControles(false);
            bsDestinatario.DataSource = getDestinatario();
            bindingNavigator.BindingSource = bsDestinatario;
            grvDestinatario.DataSource = bsDestinatario;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            bsDestinatario.Filter = "Destinatario like '" + txtLocalizar.Text + "%'";
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            bsDestinatario.AddNew();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            txtDestinatario.Text = ((DataRowView)this.bsDestinatario.Current).Row["Destinatario"].ToString();

        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            bsDestinatario.CancelEdit();
            txtDestinatario.Clear();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDestinatario.Text))
            {
                MessageBox.Show("O Campo Destinatario é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDestinatario.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "Update Destinatario set Destinatario = @Destinatario where ID = @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Destinatario", txtDestinatario.Text);
                            cmd.Parameters.AddWithValue("@ID", bsDestinatario.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                            string.Format("ID : {0} Destinatário :{1}",
                                 bsDestinatario.GetRelatedCurrencyManager("ID").Current, txtDestinatario.Text));
                    MessageBox.Show("Destinatário Alterado com Sucesso", "Alteração", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query =
                        "insert into Destinatario (Destinatario) " +
                        "values (@Destinatario)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Destinatario", txtDestinatario.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                        Convert.ToInt32(this.Tag), string.Format("Destinatario :{0}", txtDestinatario.Text));
                    MessageBox.Show("Destinatário Salvo com Sucesso", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                txtDestinatario.Clear();
                statusCadastro = StatusCadastro.None;
                bsDestinatario.DataSource = getDestinatario();
                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    string query = "delete from Destinatario where ID = @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", bsDestinatario.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                            bsDestinatario.RemoveCurrent();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                    string.Format("Destinatário :{0}", txtDestinatario.Text));

            MessageBox.Show("Destinatário excluido com Sucesso", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}
