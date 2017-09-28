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
    public partial class FrmFundamentoLegalICMS : MS2000.Desktop.Componentes.MSForm01
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
            gpbFiltro.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmFundamentoLegalICMS()
        {
            InitializeComponent();
        }

        private void FrmFundamentoLegalICMS_Load(object sender, EventArgs e)
        {
            getTratamento();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFundamentoLegalICMS();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            cbbTratamento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tratamento_Tributario"));


            ccbFiltro_SelectedIndexChanged(null, null);
        }

        private DataTable getFundamentoLegalICMS()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Tratamento_Tributario, Descricao from Fundamento_Legal_ICMS";
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

        private void getTratamento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select codigo, descricao from Tratamento_Tributario_ICMS where lixo = 0";
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
                cbbTratamento.DataSource = table;
                cbbTratamento.DisplayMember = "descricao";
                cbbTratamento.ValueMember = "codigo";


                //Filtro
                ccbFiltro.DataSource = table;
                ccbFiltro.DisplayMember = "descricao";
                ccbFiltro.ValueMember = "codigo";

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

        private bool CodigoEmUso()
        {
            var query = "select codigo from Fundamento_Legal_ICMS  where codigo = @codigo ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);

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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCodigo.Text))
            {
                MessageBox.Show("O código é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("O descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbTratamento.Text))
            {
                MessageBox.Show("O tratamento tributário é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTratamento.Focus();
                return;
            }
            DataGridViewRow row = dataGridView.CurrentCell.OwningRow;
            string Tratamento = row.Cells["Tratamento_Tributario"].Value.ToString();

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Fundamento_Legal_ICMS set descricao = @descricao, Tratamento_Tributario = @Tratamento_Tributario where codigo = @codigo and Tratamento_Tributario = @Tratamento";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Tratamento", Tratamento);
                        cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Tratamento_Tributario", (cbbTratamento.SelectedValue == null) ? (object)DBNull.Value : cbbTratamento.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["descricao"].ToString(), txtDescricao.Text));
                }
                else
                {
                    if (CodigoEmUso())
                    {
                        MessageBox.Show("Código já Cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Fundamento_Legal_ICMS (codigo, descricao, Tratamento_Tributario)values(@codigo, @descricao, @Tratamento_Tributario)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Tratamento_Tributario", (cbbTratamento.SelectedValue == null) ? (object)DBNull.Value : cbbTratamento.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
                    bindingSource.DataSource = getFundamentoLegalICMS();                    
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
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (FundamentoLegalICMSEmUso(cbbTratamento.SelectedValue.ToString(), txtCodigo.Text))
            {
                MessageBox.Show("Este fundamento legal não pode ser excluída!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Fundamento_Legal_ICMS where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
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

        private bool FundamentoLegalICMSEmUso(string tratamento, string fundamento)
        {
            var query = "SELECT top 1 Tratamento_Tributario, Fundamento_Legal FROM Tributacao_Item_Fatura WHERE Tratamento_Tributario = @Tratamento_Tributario and Fundamento_Legal = @Fundamento_Legal";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Tratamento_Tributario", tratamento);
                    cmd.Parameters.AddWithValue("@Fundamento_Legal", fundamento);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void ccbFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (statusCadastro == StatusCadastro.None)
            {
                bindingSource.Filter = "Tratamento_Tributario = '" + ccbFiltro.SelectedValue.ToString() + "'";
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
