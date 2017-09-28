using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Resources;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmFuncionarioPublico : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public int FK_Empregado { get; set; }

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
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmFuncionarioPublico()
        {
            InitializeComponent();
        }

        private DataTable getFuncionarioPublico()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID,FK_Empregado,Nome,Setor FROM RH_Funcionario_Publico Where FK_Empregado = @FK_Empregado order by Nome";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    // table.Columns.Add("Motivo", setEnumValues(cbbMotivo, typeof(MotivoAlteracaoSalario)));
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmFuncionarioPublico_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;           

            statusCadastro = StatusCadastro.None;

            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFuncionarioPublico();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
                        
            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
            txtSetor.DataBindings.Add(new Binding("Text", bindingSource, "Setor", true));
            CarregaIdioma();
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

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete FROM RH_Funcionario_Publico Where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("FK_Empregado{0} - Nome: {1}", FK_Empregado, txtNome.Text));
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Funcionario_Publico set Nome=@Nome, Setor=@Setor where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Setor", txtSetor.Text);
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FK_Empregado.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Nome"].ToString(), txtNome.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Funcionario_Publico (FK_Empregado,Nome,Setor) values(@FK_Empregado,@Nome,@Setor)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Empregado", FK_Empregado);
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Setor", txtSetor.Text);
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource.DataSource = getFuncionarioPublico();
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("FK_Empregado: {0} - Nome: {1} - Setor:{2} ", FK_Empregado, txtNome.Text, txtSetor.Text));
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
                bindingSource.DataSource = getFuncionarioPublico();
                dataGridView.DataSource = bindingSource;
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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmFuncionarioPublico).Assembly);
            this.Text = resourceManager.GetString("rh_funcionario_publico");

            //Tradução dos Botões
            btnNovo.Text = resourceManager.GetString("novo");
            btnFechar.Text = resourceManager.GetString("fechar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnEditar.Text = resourceManager.GetString("editar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");

            //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("funcionario_publico");
            label11.Text = resourceManager.GetString("nome");
            label12.Text = resourceManager.GetString("setor");

            Nome.HeaderText = resourceManager.GetString("nome");
            Setor.HeaderText = resourceManager.GetString("setor");

        }
    }
}
