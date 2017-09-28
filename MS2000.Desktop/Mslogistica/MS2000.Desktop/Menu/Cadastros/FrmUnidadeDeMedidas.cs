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
    public partial class FrmUnidadeDeMedidas : MS2000.Desktop.Componentes.MSForm01
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

        public FrmUnidadeDeMedidas()
        {
            InitializeComponent();
        }

        private void FrmUnidadeDeMedidas_Load(object sender, EventArgs e)
        {            
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUnidade();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            this.txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            this.txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            this.txtAbreviacao.DataBindings.Add(new Binding("Text", bindingSource, "abrev", true));
        }

        private DataTable getUnidade()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao, abrev from TAB_UNID_MEDIDA";
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

        private string getNovoCodigoUnidadeMedida()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Max(Cast(Codigo as integer))+1 AS NovoCodigo FROM TAB_UNID_MEDIDA";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            return reader[0].ToString();
                        }
                        else
                        {
                            return "1";
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return "-1";
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

            if (string.IsNullOrEmpty(txtAbreviacao.Text))
            {
                MessageBox.Show("O abreviação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update TAB_UNID_MEDIDA set descricao = @descricao, abrev = @abrev where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@abrev", txtAbreviacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text,FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["descricao"].ToString(), txtDescricao.Text));
                }
                else
                {
                    string novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into TAB_UNID_MEDIDA (codigo, descricao, abrev)values(@codigo, @descricao, @abrev)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        novoCodigo = getNovoCodigoUnidadeMedida();
                        cmd.Parameters.AddWithValue("@codigo", novoCodigo);
                        cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@abrev", txtAbreviacao.Text);
                        cmd.ExecuteNonQuery();                  
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
                    txtCodigo.Text = novoCodigo;
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
            if (UnidadeDeMedidaEmUso())
            {
                MessageBox.Show("Esta Unidade de Medida não pode ser Alterada!", "Editar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtCodigo.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (UnidadeDeMedidaEmUso())
            {
                MessageBox.Show("Esta Unidade de Medida não pode ser excluída!", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from TAB_UNID_MEDIDA where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
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

        private bool UnidadeDeMedidaEmUso()
        { 
            string[] listaQuery = new string[3];
            bool unidadeEmUso = false;

            listaQuery[0] = "SELECT top 1 empresa FROM Conhecimento_Processo WHERE Conhecimento_Processo.Unidade = @codigo";
            listaQuery[1] = "SELECT top 1 empresa FROM ItensFaturas WHERE ItensFaturas.Unidade = @codigo";
            listaQuery[2] = "SELECT top 1 reg FROM Produtosnew WHERE Unidade = @codigo";
            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                foreach (var query in listaQuery)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            unidadeEmUso = (unidadeEmUso || reader.HasRows);
                        }
                    }
                }
                return unidadeEmUso;
            }
            catch (Exception ex)
            {                
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
                 bindingSource.CancelEdit();
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);            
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
