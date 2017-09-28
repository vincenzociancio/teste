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
    public partial class FrmHistoricoFerias : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public int ID_Empregado { get; set; }

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

        public FrmHistoricoFerias()
        {
            InitializeComponent();
        }

        private DataTable getHistoricoFerias(int id_empregado)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID, Aquisitivo_Inicio, Aquisitivo_Final, Gozo_Inicio,Gozo_Final " +
                "FROM RH_Historico_Ferias where FK_Empregado = @id_empregado order by Aquisitivo_Inicio";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id_empregado", id_empregado);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmHistoricoFerias_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getHistoricoFerias(ID_Empregado);

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtAquisitivoInicio.DataBindings.Add(new Binding("Text", bindingSource, "Aquisitivo_Inicio", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtAquisitivoFinal.DataBindings.Add(new Binding("Text", bindingSource, "Aquisitivo_Final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtGozoInicio.DataBindings.Add(new Binding("Text", bindingSource, "Gozo_Inicio", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtGozoFinal.DataBindings.Add(new Binding("Text", bindingSource, "Gozo_Final", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            CarregaIdioma();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete FROM RH_Historico_Ferias Where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID{0} - Histórico de férias", ID));
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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (!txtAquisitivoInicio.MaskCompleted)
            {
                MessageBox.Show("Período aquisição inicial é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtAquisitivoInicio.Focus();
                return;
            }

            if (!txtAquisitivoFinal.MaskCompleted)
            {
                MessageBox.Show("Período aquisição final é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtAquisitivoFinal.Focus();
                return;
            }

            if (!txtGozoInicio.MaskCompleted)
            {
                MessageBox.Show("Período gozo inicial é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtGozoInicio.Focus();
                return;
            }

            if (!txtGozoFinal.MaskCompleted)
            {
                MessageBox.Show("Período gozo final é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtGozoFinal.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Historico_Ferias set Aquisitivo_Inicio=@Aquisitivo_Inicio, Aquisitivo_Final=@Aquisitivo_Final, Gozo_Inicio=@Gozo_Inicio, Gozo_Final=@Gozo_Final where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Aquisitivo_Inicio", !txtAquisitivoInicio.MaskCompleted ? DBNull.Value : (object)txtAquisitivoInicio.Text);
                        cmd.Parameters.AddWithValue("@Aquisitivo_Final", !txtAquisitivoFinal.MaskCompleted ? DBNull.Value : (object)txtAquisitivoFinal.Text);
                        cmd.Parameters.AddWithValue("@Gozo_Inicio", !txtGozoInicio.MaskCompleted ? DBNull.Value : (object)txtGozoInicio.Text);
                        cmd.Parameters.AddWithValue("@Gozo_Final", !txtGozoFinal.MaskCompleted ? DBNull.Value : (object)txtGozoFinal.Text);
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }                  
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Historico_Ferias (Aquisitivo_Inicio, Aquisitivo_Final, Gozo_Inicio, Gozo_Final,FK_Empregado) values(@Aquisitivo_Inicio, @Aquisitivo_Final, @Gozo_Inicio, @Gozo_Final, @FK_Empregado)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Aquisitivo_Inicio", !txtAquisitivoInicio.MaskCompleted ? DBNull.Value : (object)txtAquisitivoInicio.Text);
                        cmd.Parameters.AddWithValue("@Aquisitivo_Final", !txtAquisitivoFinal.MaskCompleted ? DBNull.Value : (object)txtAquisitivoFinal.Text);
                        cmd.Parameters.AddWithValue("@Gozo_Inicio", !txtGozoInicio.MaskCompleted ? DBNull.Value : (object)txtGozoInicio.Text);
                        cmd.Parameters.AddWithValue("@Gozo_Final", !txtGozoFinal.MaskCompleted ? DBNull.Value : (object)txtGozoFinal.Text);
                        cmd.Parameters.AddWithValue("@FK_Empregado", ID_Empregado);
                        cmd.ExecuteNonQuery();
                    }                    
                    bindingSource.DataSource = getHistoricoFerias(ID_Empregado);
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
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmHistoricoFerias).Assembly);
            this.Text = resourceManager.GetString("rh_historico_ferias");

            //Tradução dos Botões
            btnNovo.Text = resourceManager.GetString("novo");
            btnFechar.Text = resourceManager.GetString("fechar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnEditar.Text = resourceManager.GetString("editar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");
            //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("historico_ferias");
            label1.Text = resourceManager.GetString("a");
            label2.Text = resourceManager.GetString("a");
            groupBox1.Text = resourceManager.GetString("periodo_aquisitivo");
            groupBox2.Text = resourceManager.GetString("periodo_gozo");

            Aquisitivo_Inicio.HeaderText = resourceManager.GetString("aquisitivo_inicial");
            Aquisitivo_Final.HeaderText = resourceManager.GetString("aquisitivo_final");
            Gozo_Inicio.HeaderText = resourceManager.GetString("gozo_inicial");
            Gozo_Final.HeaderText = resourceManager.GetString("gozo_final");
        }
    }
}
