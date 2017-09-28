using MS2000.Desktop.Classes;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmAtosLegais : MS2000.Desktop.Componentes.MSForm01
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
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();           
        }

        public FrmAtosLegais()
        {
            InitializeComponent();
        }

        private void FrmAtosLegais_Load(object sender, EventArgs e)
        {
            //1 - II
            //2 - IPI
            //3 - ANALADI

            Dictionary<string, string> itens = new Dictionary<string, string>();

            itens.Add("1", "II"); itens.Add("2", "IPI"); itens.Add("3", "NALADI"); itens.Add("4", "ANTIDUMPING");

            cbbTipoDeAto.DisplayMember = "Value";
            cbbTipoDeAto.ValueMember = "Key";
            cbbTipoDeAto.DataSource = new BindingSource(itens, null);

            // 1
            getTipoAtoLegal();
            getOrgaoEmissor();
            getAtosLegais();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getAtosLegais();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
            
            txtNumero.DataBindings.Add(new Binding("Text", bindingSource, "Numero", true));
            txtEX.DataBindings.Add(new Binding("Text", bindingSource, "EX"));
            txtAno.DataBindings.Add(new Binding("Text", bindingSource, "Ano_Ato_Legal", true));
            txtObs.DataBindings.Add(new Binding("Text", bindingSource, "obs", true));
            cbbTipoDeAto.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo_Ato"));
            cbbAtoLegal.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Tipo_Ato_Legal"));
            cbbOrgaoEmissor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Orgao_Emissor"));
        }

        private DataTable getAtosLegais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Tipo_Ato,Numero,EX,Tipo_Ato_Legal,Orgao_Emissor,Ano_Ato_Legal,obs " +
                "from Atos_Legais";
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

        private void getTipoAtoLegal()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM TAB_TP_ATO_LEGAL";
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
                cbbAtoLegal.DataSource = table;
                cbbAtoLegal.DisplayMember = "descricao";
                cbbAtoLegal.ValueMember   = "codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getOrgaoEmissor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from TAB_ORGAO_EMISS_ATO_LEGAL";
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
                cbbOrgaoEmissor.DataSource = table;
                cbbOrgaoEmissor.DisplayMember = "descricao";
                cbbOrgaoEmissor.ValueMember = "codigo";
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
            if (string.IsNullOrEmpty(txtNumero.Text))
            {
                MessageBox.Show("O número é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumero.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbTipoDeAto.Text))
            {
                MessageBox.Show("O tipo de Ato é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoDeAto.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtObs.Text))
            {
                MessageBox.Show("A Observação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoDeAto.Focus();
                return;
            }


            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Atos_Legais set " +
                        "EX = @EX, Tipo_Ato_Legal = @Tipo_Ato_Legal, Orgao_Emissor = @Orgao_Emissor, Ano_Ato_Legal = @Ano_Ato_Legal, obs = @obs " +
                        "where tipo_ato = @tipo_ato and numero = @numero";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@EX", txtEX.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Tipo_Ato", (cbbTipoDeAto.SelectedValue == null ? "" : cbbTipoDeAto.SelectedValue));                                            
                        cmd.Parameters.AddWithValue("@Ano_Ato_Legal", txtAno.Text);
                        cmd.Parameters.AddWithValue("@obs", txtObs.Text);
                        cmd.Parameters.AddWithValue("@Tipo_Ato_Legal", (cbbAtoLegal.SelectedValue == null ? "" : cbbAtoLegal.SelectedValue));
                        cmd.Parameters.AddWithValue("@Orgao_Emissor", (cbbOrgaoEmissor.SelectedValue == null ? "" : cbbOrgaoEmissor.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(cbbTipoDeAto.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Numero"].ToString(), txtNumero.Text));
                }
                else
                {                    
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Atos_Legais" +
                        "(Tipo_Ato, Numero, EX, Tipo_Ato_Legal, Orgao_Emissor, Ano_Ato_Legal, obs)" +
                        "values" +
                         "(@Tipo_Ato, @Numero, @EX, @Tipo_Ato_Legal, @Orgao_Emissor, @Ano_Ato_Legal, @obs)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {   
                        cmd.Parameters.AddWithValue("@EX", txtEX.Text);
                        cmd.Parameters.AddWithValue("@Numero", txtNumero.Text);
                        cmd.Parameters.AddWithValue("@Tipo_Ato", (cbbTipoDeAto.SelectedValue == null ? "" : cbbTipoDeAto.SelectedValue));
                        cmd.Parameters.AddWithValue("@Ano_Ato_Legal", txtAno.Text);
                        cmd.Parameters.AddWithValue("@obs", txtObs.Text);
                        cmd.Parameters.AddWithValue("@Tipo_Ato_Legal", (cbbAtoLegal.SelectedValue == null ? "" : cbbAtoLegal.SelectedValue));
                        cmd.Parameters.AddWithValue("@Orgao_Emissor", (cbbOrgaoEmissor.SelectedValue == null ? "" : cbbOrgaoEmissor.SelectedValue));
                
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Numero:{0}", txtNumero.Text));
                    bindingSource.DataSource = getAtosLegais();
                    dataGridView.DataSource = bindingSource;
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
            cbbTipoDeAto.Enabled = false;
            txtNumero.Enabled = false;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Atos_Legais where tipo_ato = @tipo_ato and numero = @numero";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@tipo_ato", cbbAtoLegal.Text);
                        cmd.Parameters.AddWithValue("@numero", txtNumero.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(cbbAtoLegal.Text,FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Numero:{0}", txtNumero.Text));
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
