using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Faturamento
{
    public partial class FrmParametrosContabilizacao : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled             = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled            = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled               = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled             = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled           = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnImportarParametros.Enabled = (statusCadastro == StatusCadastro.None);
            dataGridView.Enabled          = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;                
            }

            txtCodigo.Enabled    = false;
            txtNumerario.Enabled = false;
            txtCredito.Enabled   = false;

            VerificaBotoes();
        }

        public FrmParametrosContabilizacao()
        {
            InitializeComponent();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtPesquisar.Enabled = false;

            cbbImportador.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtPesquisar.Enabled = true;
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {            
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = " DELETE FROM Parametros_Contabilizacao WHERE ID = @ID ";
                    
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Importador: {0}, Numerario: {1}: ", cbbImportador.Text, cbbNumerarioDescricao.Text));
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

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;
            txtPesquisar.Enabled = false;

            cbbImportador.Focus();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos() == false) return;

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Parametros_Contabilizacao SET Importador = @Importador, Numerario = @Numerario, Credito = @Credito WHERE ID = @ID ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Numerario", txtNumerario.Text);
                        cmd.Parameters.AddWithValue("@Credito", txtCredito.Text);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Numerario"].ToString(), txtNumerario.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Parametros_Contabilizacao       " +
                                   " ( Importador,  Numerario,  Credito) VALUES " +
                                   " (@Importador, @Numerario, @Credito)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Importador", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Numerario", txtNumerario.Text);
                        cmd.Parameters.AddWithValue("@Credito", txtCredito.Text);                        

                        cmd.ExecuteNonQuery();
                    }
                    
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Codigo:{0}", txtCodigo.Text));
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

        private void FrmParametrosContabilizacao_Load(object sender, EventArgs e)
        {
            getParametrosContabilizacao();
            getTiposNumerarios();
            getTiposCreditos();
            getImportadores();            

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;

            txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Importador", true));
            cbbImportador.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Importador"));
            txtNumerario.DataBindings.Add(new Binding("Text", bindingSource, "Numerario", true));
            cbbNumerarioDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Numerario", true));
            txtCredito.DataBindings.Add(new Binding("Text", bindingSource, "Credito", true));
            cbbCreditoDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Credito", true));            
        }

        private DataTable getParametrosContabilizacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PC.ID, PC.Importador, I.Razao_Social, PC.Numerario, TN.Descricao AS DescNum, PC.Credito, TC.Descricao AS DescCred " +
                           "  FROM Parametros_Contabilizacao AS PC INNER JOIN Importadores AS I  ON PC.Importador = I.Codigo                         " +
                           "                                       INNER JOIN Tipos_Numerario AS TN ON PC.Numerario = TN.Codigo                      " +
                           "                                       LEFT  JOIN Tipos_creditos  AS TC ON PC.Credito = TC.Codigo                        " +
                           " WHERE I.Ativo = 1                                                                                                       " +
                           "ORDER BY I.Razao_Social, I.Codigo, PC.Numerario                                                                          ";

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

        private void getImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT Codigo, Razao_Social FROM Importadores WHERE Ativo = 1 AND Codigo NOT LIKE 'X%' ORDER BY Razao_Social, Codigo ";
            
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

                cbbImportador.DataSource    = table;
                cbbImportador.DisplayMember = "Razao_Social";
                cbbImportador.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTiposCreditos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Tipos_creditos ORDER BY Descricao";
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

                cbbCreditoDescricao.DataSource    = table;
                cbbCreditoDescricao.DisplayMember = "Descricao";
                cbbCreditoDescricao.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTiposNumerarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Tipos_Numerario ORDER BY Descricao";
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

                cbbNumerarioDescricao.DataSource = table;
                cbbNumerarioDescricao.DisplayMember = "Descricao";
                cbbNumerarioDescricao.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getImportarParametrosOrigem()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;            
            string query = "  SELECT Codigo, Razao_Social                                                                " +
                           "    FROM Importadores                                                                        " +
                           "   WHERE Ativo = 1 AND Codigo IN (SELECT DISTINCT Importador FROM Parametros_Contabilizacao) " +
                           "ORDER BY Razao_Social                                                                        ";
                    
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

                ccbImportadorParametrosOrigem.DataSource    = null;
                ccbImportadorParametrosOrigem.DataSource    = table;
                ccbImportadorParametrosOrigem.DisplayMember = "Razao_Social";
                ccbImportadorParametrosOrigem.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getImportarParametrosDestino()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "  SELECT Codigo, Razao_Social                                                                                             " +
                           "    FROM Importadores                                                                                                     " +
                           "   WHERE Ativo = 1 AND Codigo NOT LIKE 'X%' AND Codigo NOT IN (SELECT DISTINCT Importador FROM Parametros_Contabilizacao) " +
                           "ORDER BY Razao_Social                                                                                                     ";

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

                ccbImportadorParametrosDestino.DataSource    = null;
                ccbImportadorParametrosDestino.DataSource    = table;
                ccbImportadorParametrosDestino.DisplayMember = "Razao_Social";
                ccbImportadorParametrosDestino.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getParametrosContabilizacao();

            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Razao_Social LIKE '" + txtPesquisar.Text + "%'";
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

            if (string.IsNullOrEmpty(txtNumerario.Text.Trim()))
            {
                MessageBox.Show("Numerário obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumerario.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(txtCredito.Text.Trim()))
            {
                MessageBox.Show("Crédito obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNumerario.Focus();
                return false;
            }

            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                if (JaExistente(txtCodigo.Text, txtNumerario.Text))
                {
                    txtCodigo.Focus();

                    return false;
                }
            }

            return true;
        }

        private Boolean ValidaImportacao()
        {
            if (string.IsNullOrEmpty(ccbImportadorParametrosOrigem.Text.Trim()))
            {
                MessageBox.Show("Importador de origem obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ccbImportadorParametrosOrigem.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(ccbImportadorParametrosDestino.Text.Trim()))
            {
                MessageBox.Show("Importador de destino obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                ccbImportadorParametrosDestino.Focus();
                return false;
            }                        

            return true;
        }

        private Boolean JaExistente(String Importador, String Numerario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT TOP 1 ID FROM Parametros_Contabilizacao WHERE Importador = @Importador AND Numerario = @Numerario ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", Importador);
                    cmd.Parameters.AddWithValue("@Numerario", Numerario);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show("Parâmetro de Contabilização já existente para esse numerário!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

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

        private void cbbImportador_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                txtCodigo.Text = cbbImportador.SelectedValue.ToString();                                  
            }                       
        }

        private void cbbNumerarioDescricao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                txtNumerario.Text = cbbNumerarioDescricao.SelectedValue.ToString();
            }                       
        }

        private void cbbCreditoDescricao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
            {
                txtCredito.Text = cbbCreditoDescricao.SelectedValue.ToString();
            }                       
        }

        private void btnImportarParametros_Click(object sender, EventArgs e)
        {
            bindingNavigator.Enabled = false;
            
            pnlImportarParametros.Visible = true;
            
            getImportarParametrosOrigem();
            getImportarParametrosDestino();
        }

        private void btnPnlCancelar_Click(object sender, EventArgs e)
        {
            pnlImportarParametros.Visible = false;

            bindingNavigator.Enabled = true;
        }

        private void btnPnlConfirmar_Click(object sender, EventArgs e)
        {
            if (ValidaImportacao() == false) return;

            if (MessageBox.Show("Todos os parâmetros atuais desse Importador serão excluídos. Confirma a importação de novos parâmetros?", "Importação de parâmetros", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try 
	            {                                        
                    ImportarParametros();
                
                    pnlImportarParametros.Visible = false;

                    bindingNavigator.Enabled = true;

                    AtualizaGrid();
            	}
	            catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }                                
            }                        
        }

        private void ImportarParametros()
        {                                                  
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "DELETE Parametros_Contabilizacao WHERE Importador = @ImportadorDestino ";
                
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                    
                    cmd.Parameters.AddWithValue("@ImportadorDestino", ccbImportadorParametrosDestino.SelectedValue);
                    cmd.ExecuteNonQuery();
                }                

                query = "INSERT INTO Parametros_Contabilizacao ( Importador       , Numerario, Credito) " + 
                        "								(SELECT @ImportadorDestino, Numerario, Credito  " + 
                        "								   FROM Parametros_Contabilizacao               " + 
                        "							   	  WHERE Importador = @ImportadorOrigem)         ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ImportadorOrigem", ccbImportadorParametrosOrigem.SelectedValue);
                    cmd.Parameters.AddWithValue("@ImportadorDestino", ccbImportadorParametrosDestino.SelectedValue);
                    cmd.ExecuteNonQuery();
                }
                
                statusCadastro = StatusCadastro.None;
                MessageBox.Show("Parâmetros importados com sucesso.", "Inclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
