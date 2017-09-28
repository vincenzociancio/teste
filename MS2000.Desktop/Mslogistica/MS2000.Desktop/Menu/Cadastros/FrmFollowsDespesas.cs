using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmFollowsDespesas : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmFollowsDespesas()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {                        
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            
            mccbDespesa.Enabled = (statusCadastro == StatusCadastro.Novo);

            groupBox4.Enabled = (statusCadastro == StatusCadastro.None);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);            
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            txtCodigoDespesa.Enabled = false;
            txtCodigoEvento.Enabled = false;
            txtCodigoObs.Enabled = false;

            VerificaBotoes();
        }

        private DataTable getDespesasFollows()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = " SELECT TF.ID, TF.Fk_TpNumerario, TN.Descricao AS Despesa, TF.Fk_codevento, E.Descricao AS Evento, TF.Fk_codobs, OE.Descricao  AS Obs " +  
                           "   FROM TipoNumerario_Follow TF                                                                                                       " + 
                           "        INNER JOIN Tipos_Numerario TN ON TN.Codigo = TF.Fk_TpNumerario                                                                " +
                           "        INNER JOIN Eventos E ON TF.Fk_codevento = E.Codigo                                                                            " +
                           "         LEFT JOIN Obs_Eventos OE ON TF.Fk_codevento = OE.Evento AND TF.Fk_codobs = OE.Codigo                                         ";

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

        private void getDespesas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Codigo, Descricao FROM Tipos_Numerario WHERE Plano_contas = 'NUM' ORDER BY Descricao";

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

                mccbDespesa.DataSource    = null;
                mccbDespesa.DataSource    = table;
                mccbDespesa.DisplayMember = "Descricao";
                mccbDespesa.ValueMember   = "Codigo";
                mccbDespesa.SelectedValue = -1;    
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEventos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Codigo, Descricao FROM Eventos WHERE Ativo = 1 ORDER BY Descricao";            

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

                mcbbEventos.DataSource = null;
                mcbbEventos.DataSource = table;
                mcbbEventos.DisplayMember = "Descricao";
                mcbbEventos.ValueMember   = "Codigo";
                mcbbEventos.SelectedValue = -1;    
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getObs_Eventos(string evento)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Codigo, Descricao FROM Obs_Eventos WHERE Ativo = 1 and Evento = '" + evento + "' ORDER BY Descricao";

            DataTable table = new DataTable();

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {                                                
                        table.Load(reader);                        
                    }
                }                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            return table;
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getDespesasFollows();

            dataGridView.DataSource = null;
            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }

        private void FrmFollowsDespesas_Load(object sender, EventArgs e)
        {
            getDespesas();
            getEventos();

            LimpaCampos();

            bindingNavigator.DeleteItem = null;
            dataGridView.AutoGenerateColumns = false;

            statusCadastro = StatusCadastro.None;                        
            HabilitarDesabilitaControles(false);                                            

            AtualizaGrid();
            
            bindingNavigator.BindingSource = bindingSource;                       

            mccbDespesa.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fk_TpNumerario"));            
            mcbbEventos.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fk_codevento"));            
            mcbbObs.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Fk_codobs"));

            this.ActiveControl = txtCodigoDespesa;
        }

        private void LimpaCampos()
        {
            txtCodigoDespesa.Clear();            
            mccbDespesa.SelectedValue = -1;
            txtCodigoEvento.Clear();
            mcbbEventos.SelectedValue = -1;
            txtCodigoObs.Clear();   
            mcbbObs.SelectedValue = -1;                                               
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            LimpaCampos();

            mccbDespesa.Focus();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                statusCadastro = StatusCadastro.Editar;
                HabilitarDesabilitaControles(true);
                tabControl.SelectedTab = tabFormulario;

                mcbbEventos.Focus();   
            }                       
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = "DELETE TipoNumerario_Follow WHERE ID = @ID";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema(txtCodigoDespesa.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", mccbDespesa.Text));

                        AtualizaGrid();

                        bindingSource.RemoveCurrent();

                        statusCadastro = StatusCadastro.None;

                        MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return; 
            
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE TipoNumerario_Follow SET Fk_codevento=@Fk_codevento, Fk_codobs=@Fk_codobs WHERE ID = @ID";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {                            
                            cmd.Parameters.AddWithValue("@Fk_codevento", txtCodigoEvento.Text);
                            cmd.Parameters.AddWithValue("@Fk_codobs", string.IsNullOrEmpty(txtCodigoObs.Text) ? 0 : (object)txtCodigoObs.Text);                            

                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Despesa:{0}, Evento:{1}, Obs:{2}", mccbDespesa.Text, mcbbEventos.Text, mcbbObs.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "INSERT INTO TipoNumerario_Follow(Fk_TpNumerario, Fk_codevento, Fk_codobs) values(@Fk_TpNumerario, @Fk_codevento, @Fk_codobs)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_TpNumerario", txtCodigoDespesa.Text);
                        cmd.Parameters.AddWithValue("@Fk_codevento", txtCodigoEvento.Text);
                        cmd.Parameters.AddWithValue("@Fk_codobs", string.IsNullOrEmpty(txtCodigoObs.Text) ? 0 : (object)txtCodigoObs.Text);                            
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Despesa:{0}, Evento:{1}, Obs:{2}", mccbDespesa.Text, mcbbEventos.Text, mcbbObs.Text));
                }

                AtualizaGrid();

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

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtCodigoDespesa.Text.Trim()))
            {
                MessageBox.Show("Despesa obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mccbDespesa.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtCodigoEvento.Text.Trim()))
            {
                MessageBox.Show("Evento do Follow obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbEventos.Focus();
                return false;
            }

            if (statusCadastro == StatusCadastro.Novo)
            {
                if (JaExistente())
                {
                    MessageBox.Show("Despesa já possui follow cadastrado, favor verificar!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    mccbDespesa.Focus();
                    return false;    
                }
            }        

            return true;
        }        

        private void mcbbEventos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mcbbEventos.SelectedValue == null)
                return;

            if (mcbbEventos.SelectedValue is DataRowView)
                return;

            mcbbObs.DataSource = null;
            mcbbObs.DataSource = getObs_Eventos(mcbbEventos.SelectedValue.ToString());
            mcbbObs.DisplayMember = "Descricao";
            mcbbObs.ValueMember   = "Codigo";
            mcbbObs.SelectedValue = -1;

            txtCodigoEvento.Text = mcbbEventos.SelectedValue.ToString();
        }

        private void mcbbObs_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mcbbObs.SelectedValue == null)
            {
                txtCodigoObs.Text = "0";
                return;
            }                

            txtCodigoObs.Text = mcbbObs.SelectedValue.ToString();
        }

        private void mccbDespesa_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (mccbDespesa.SelectedValue == null)
                return;

            txtCodigoDespesa.Text = mccbDespesa.SelectedValue.ToString();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Despesa LIKE '" + txtPesquisar.Text + "%'";
            }
        }     
   
        private bool JaExistente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Fk_TpNumerario FROM TipoNumerario_Follow WHERE Fk_TpNumerario = @Fk_TpNumerario ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fk_TpNumerario", txtCodigoDespesa.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return true;
            }

        }
    }
}
