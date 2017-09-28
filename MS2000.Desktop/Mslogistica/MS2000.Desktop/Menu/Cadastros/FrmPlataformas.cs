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
    public partial class FrmPlataformas : MS2000.Desktop.Componentes.MSForm01
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
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmPlataformas()
        {
            InitializeComponent();
        }

        private void FrmPlataformas_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            getImportador();

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getPlataforma();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            this.txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Plataforma", true));
            this.txtSigla.DataBindings.Add(new Binding("Text", bindingSource, "Sigla", true));
            cbbCliente.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Importador", true));
        }

        private DataTable getPlataforma()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select P.PK_Plataforma, P.Plataforma,P.Sigla,P.FK_Importador,I.CNPJ_CPF_COMPLETO,I.Razao_social from Plataformas P Inner Join Importadores I on P.FK_Importador =I.Codigo where P.Excluido = '0' Order by I.Razao_social";
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

        private void getImportador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Razao_social +'  -  '+ CNPJ_CPF_COMPLETO as campo from Importadores order by Razao_social ";
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
                cbbCliente.DataSource = table;

                cbbCliente.DisplayMember = "campo";
                cbbCliente.ValueMember = "codigo";
                //cbbCliente
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            if (string.IsNullOrEmpty(cbbCliente.Text) || cbbCliente.SelectedValue == null)
            {
                MessageBox.Show("Campo cliente não pode ser vazio!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbCliente.Focus();
                return;
            }            

            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("Campo descrição da plataforma não pode ser vazio!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Plataformas set FK_Importador=@FK_Importador,  Plataforma=@Plataforma, Sigla=@Sigla  where  PK_Plataforma=@PK_Plataforma";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", (cbbCliente.SelectedValue == null ? (object)DBNull.Value : cbbCliente.SelectedValue));
                        cmd.Parameters.AddWithValue("@Plataforma", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Sigla", txtSigla.Text);
                        cmd.Parameters.AddWithValue("@PK_Plataforma", bindingSource.GetRelatedCurrencyManager("PK_Plataforma").Current);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtSigla.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["plataforma"].ToString(), txtDescricao.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Plataformas (FK_Importador, Plataforma, Sigla) values(@FK_Importador, @Plataforma, @Sigla)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Importador", (cbbCliente.SelectedValue == null ? (object)DBNull.Value : cbbCliente.SelectedValue));
                        cmd.Parameters.AddWithValue("@Plataforma", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Sigla", txtSigla.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
                    bindingSource.DataSource = getPlataforma();
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
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
                    string query = "Update Plataformas set Excluido = '1' where PK_Plataforma = @PK_Plataforma";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PK_Plataforma", bindingSource.GetRelatedCurrencyManager("PK_Plataforma").Current);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtSigla.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
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
            bindingSource.Filter = "razao_social LIKE '%" + txtLocalizar.Text + "%'";
        }
    }
}
