using MS2000.Desktop.Classes;
using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Resources;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmContribuicaoSindical : MS2000.Desktop.Componentes.MSForm01
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

        public FrmContribuicaoSindical()
        {
            InitializeComponent();
        }

        private void FrmContribuicaoSindical_Load(object sender, EventArgs e)
        {
            Hashtable hasSindicato = new Hashtable();
            hasSindicato.Add(1, "SEC/ES - EMPREG DO COM DE EXP E IMPORT DO EST DO ES");
            hasSindicato.Add(2, "SINDEAPRJ - SIND EMP AG COM EMP ASSES INF P MUN DO RJ");
            hasSindicato.Add(3, "FIRMA ANTERIOR");
            hasSindicato.Add(4, "SINDEAPRJ - SIND EMP AG AUT COM EMP ASSES INF P MUN DO RJ");
            hasSindicato.Add(5, "OAB - Ordem dos Advogados do Brasil");
            hasSindicato.Add(6, "SIND DOS ADVOGADOS DO EST DO RJ");
            hasSindicato.Add(7, "SIND COND VEIC ROD E T T URB P DO MUNIC do RJ");
            hasSindicato.Add(8, "SINDICATO DA CLASSE");

            cbbSindicato.DisplayMember = "Value";
            cbbSindicato.ValueMember = "Key";
            cbbSindicato.DataSource = new BindingSource(hasSindicato, null);

            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getContribuicaoSindical(ID_Empregado);

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtData.DataBindings.Add(new Binding("Text", bindingSource, "Data", true, DataSourceUpdateMode.OnValidation, "  /  /"));
            txtValor.DataBindings.Add(new Binding("Text", bindingSource, "Valor", true, DataSourceUpdateMode.OnValidation, "0.00", "N"));
            cbbSindicato.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_SIndicato"));
            CarregaIdioma();
        }

 

        private DataTable getContribuicaoSindical(int id_empregado)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID, Data, FK_Sindicato, Valor " +
                "FROM RH_Contribuicao_Sindical where FK_Empregado = @id_empregado order by data";

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

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(cbbSindicato.Text))
            {
                MessageBox.Show("Sindicato é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbSindicato.Focus();
                return;
            }
            if (!txtData.MaskCompleted)
            {
                MessageBox.Show("A data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return;
            }
            if (string.IsNullOrWhiteSpace(txtValor.Text))
            {
                MessageBox.Show("O valor é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtValor.Focus();
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {                    
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;                    

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update RH_Contribuicao_Sindical set Data=@Data, Valor=@Valor, FK_Sindicato=@FK_Sindicato where ID=@ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@FK_Sindicato", (cbbSindicato.SelectedValue == null) ? DBNull.Value : (object)cbbSindicato.SelectedValue);
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(txtValor.Text));                        
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    //LogSistemas.AddLogSistema(ID_Empregado.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De: {0} - Para: {1}", ((DataRowView)this.bindingSource.Current).Row["Descricao"].ToString(), cbbCargo.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into RH_Contribuicao_Sindical (Valor,Data,FK_Sindicato,FK_Empregado) values(@Valor,@Data,@FK_Sindicato,@FK_Empregado)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Data", !txtData.MaskCompleted ? DBNull.Value : (object)txtData.Text);
                        cmd.Parameters.AddWithValue("@FK_Sindicato", (cbbSindicato.SelectedValue == null) ? DBNull.Value : (object)cbbSindicato.SelectedValue);
                        cmd.Parameters.AddWithValue("@Valor", Convert.ToDouble(txtValor.Text));
                        cmd.Parameters.AddWithValue("@FK_Empregado", ID_Empregado);
                        cmd.ExecuteNonQuery();
                    }                    
                    //LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("FK_Empregado: {0} - Data: {1} - Descricao Cargo:{2} ", FK_Empregado, txtData.Text, cbbCargo.Text));
                    bindingSource.DataSource = getContribuicaoSindical(ID_Empregado);
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

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Exclusão", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    int ID = (int)bindingSource.GetRelatedCurrencyManager("ID").Current;   

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete FROM RH_Contribuicao_Sindical Where ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID{0} - Contribuição Sindical", ID));
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
        private void CarregaIdioma()
        {

            ResourceManager resourceManager = new ResourceManager("MS2000.Desktop.Idiomas.res", typeof(FrmContribuicaoSindical).Assembly);
            this.Text = resourceManager.GetString("rh_contribuicao_sindical");

            //Tradução dos Botões
            btnNovo.Text = resourceManager.GetString("novo");
            btnFechar.Text = resourceManager.GetString("fechar");
            btnSalvar.Text = resourceManager.GetString("salvar");
            btnExcluir.Text = resourceManager.GetString("deletar");
            btnCancelar.Text = resourceManager.GetString("cancelar");
            btnEditar.Text = resourceManager.GetString("editar");
            printToolStripButton.Text = resourceManager.GetString("relatorios");
            //Tradução dos Botões
            tabFormulario.Text = resourceManager.GetString("contribuicao_sindical");
            label1.Text = resourceManager.GetString("data");
            label2.Text = resourceManager.GetString("valor");
            label4.Text = resourceManager.GetString("sindicato");

            data.HeaderText = resourceManager.GetString("data");
            Valor.HeaderText = resourceManager.GetString("valor");

        }
    }
}
