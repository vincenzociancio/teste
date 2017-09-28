using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{
    public partial class FrmTiposNumerarios : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public FrmTiposNumerarios()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled    = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled   = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled      = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled    = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled  = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }        

        private void FrmTiposDeNumerarios_Load(object sender, EventArgs e)
        {                        
            bindingNavigator.DeleteItem = null;            

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            getPlanoDeContas();
            getTiposDeRateio();

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
            txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Descricao", true));
            txtDescricaoIngles.DataBindings.Add(new Binding("Text", bindingSource, "Descricao_Ingles", true));
            cbbPlanoDeContas.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Plano_contas", true));
            cbbTipoRateio.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Rateio", true));
            ckbContabilizadoCC.DataBindings.Add("Checked", bindingSource, "ContabilizaCC", true);
            ckbVerificarDuplicidadeNoPagamento.DataBindings.Add("Checked", bindingSource, "Verifica_Duplicidade_Pagamento", true);                        
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);            
            txtCodigo.Enabled = false;

            txtDescricao.Focus();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtCodigo.Enabled = true;

            txtCodigo.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (CodigoEmUso(txtCodigo.Text) == true) return;            
            
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Tipos_Numerario WHERE ID = @ID ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("ID: {0}", bindingSource.GetRelatedCurrencyManager("ID").Current));
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
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Tipos_Numerario SET Descricao = @Descricao, Descricao_Ingles = @Descricao_Ingles, Plano_contas = @Plano_contas, Rateio = @Rateio, ContabilizaCC = @ContabilizaCC, Verifica_Duplicidade_Pagamento=@Verifica_Duplicidade_Pagamento WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Ingles", txtDescricaoIngles.Text);
                        cmd.Parameters.AddWithValue("@Plano_contas", (cbbPlanoDeContas.SelectedValue == null ? "" : cbbPlanoDeContas.SelectedValue));
                        cmd.Parameters.AddWithValue("@Rateio", (cbbTipoRateio .SelectedValue == null ? "" : cbbTipoRateio.SelectedValue));
                        cmd.Parameters.AddWithValue("@ContabilizaCC", ckbContabilizadoCC.Checked);
                        cmd.Parameters.AddWithValue("@Verifica_Duplicidade_Pagamento", ckbVerificarDuplicidadeNoPagamento.Checked);                        
                        cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current);

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString(), bindingSource.GetRelatedCurrencyManager("ID").Current));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Tipos_Numerario                                                                        " +
                                   "           ( Codigo,  Descricao,  Descricao_Ingles,  Plano_contas,  Rateio,  ContabilizaCC,  Verifica_Duplicidade_Pagamento) VALUES " +
                                   "           (@Codigo, @Descricao, @Descricao_Ingles, @Plano_contas, @Rateio, @ContabilizaCC, @Verifica_Duplicidade_Pagamento)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@Descricao_Ingles", txtDescricaoIngles.Text);
                        cmd.Parameters.AddWithValue("@Plano_contas", (cbbPlanoDeContas.SelectedValue == null ? "" : cbbPlanoDeContas.SelectedValue));
                        cmd.Parameters.AddWithValue("@Rateio", (cbbTipoRateio.SelectedValue == null ? "" : cbbTipoRateio.SelectedValue));
                        cmd.Parameters.AddWithValue("@ContabilizaCC", ckbContabilizadoCC.Checked);
                        cmd.Parameters.AddWithValue("@Verifica_Duplicidade_Pagamento", ckbVerificarDuplicidadeNoPagamento.Checked);                                                
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo: {0} ", txtCodigo.Text));

                    AtualizaGrid();
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

        private DataTable getTiposDeNumerarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TN.ID, TN.Codigo, TN.Descricao, Descricao_Ingles, Plano_contas, PC.Descricao AS Plano_Descricao, Rateio, TR.DESCRICAO AS Rateio_Descricao, TN.ContabilizaCC, " +
                           " TN.Verifica_Duplicidade_Pagamento FROM Tipos_Numerario TN                                                                                                           " +
                           "        LEFT JOIN Plano_Contas PC ON TN.Plano_contas = PC.Codigo                                                                                                     " +
                           "        LEFT JOIN Tipos_Rateio TR ON TN.Rateio = TR.CODIGO                                                                                                           " +
                           " ORDER BY TN.Descricao ";            

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

        private void getPlanoDeContas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Plano_Contas ORDER BY Descricao ";
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
                cbbPlanoDeContas.DataSource = table;
                cbbPlanoDeContas.DisplayMember = "Descricao";
                cbbPlanoDeContas.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTiposDeRateio()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Tipos_Rateio ORDER BY Descricao ";
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
                
                cbbTipoRateio.DataSource    = table;
                cbbTipoRateio.DisplayMember = "Descricao";
                cbbTipoRateio.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private Boolean ValidaCampos()
        {
            if (string.IsNullOrEmpty(txtCodigo.Text.Trim()))
            {
                MessageBox.Show("Código obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigo.Focus();
                return false;
            }       

            if (string.IsNullOrEmpty(txtDescricao.Text.Trim()))
            {
                MessageBox.Show("Descrição obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return false;
            }   

            if (string.IsNullOrEmpty(txtDescricaoIngles.Text.Trim()))
            {
                MessageBox.Show("Descrição Inglês obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricaoIngles.Focus();
                return false;
            }   

            if (string.IsNullOrEmpty(cbbPlanoDeContas.Text.Trim()))
            {
                MessageBox.Show("Plano de Contas obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbPlanoDeContas.Focus();
                return false;
            }   

            if (string.IsNullOrEmpty(cbbTipoRateio.Text.Trim()))
            {
                MessageBox.Show("Tipo de Rateio obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoRateio.Focus();
                return false;
            }

            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar)) 
            {
                if (Util.CodigoOuDescricaoJaExistente("Tipos_Numerario", txtDescricao.Text, txtCodigo.Text, statusCadastro))
                {
                    if (statusCadastro == StatusCadastro.Novo)
                    {                        
                        txtCodigo.Focus();                        
                    }
                    else
                    {                        
                        txtDescricao.Focus();                        
                    }

                    return false;
                }                                
            }

            return true;
        }

        private Boolean CodigoEmUso(String Numerario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TOP 1 Numerario FROM Numerarios_Processos WHERE Numerario = @Numerario ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Numerario", Numerario);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Numerário já em uso não pode ser excluído!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

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

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {                        
            if ((string.IsNullOrEmpty(txtPesquisar.Text)))
            {
                bindingSource.RemoveFilter();                
            }
            else
            {
                bindingSource.Filter = "Descricao LIKE '" + txtPesquisar.Text + "%'";
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getTiposDeNumerarios();
            
            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }
    }




}
