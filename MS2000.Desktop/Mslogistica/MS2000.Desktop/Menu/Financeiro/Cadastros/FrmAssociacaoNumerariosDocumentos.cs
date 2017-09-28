using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro.Cadastros
{    
    public partial class FrmAssociacaoNumerariosDocumentos : MS2000.Desktop.Componentes.MSForm01    
    {
        protected StatusCadastro statusCadastro;

        bool AtivaBuscaPorCodigo = false;

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

        public FrmAssociacaoNumerariosDocumentos()
        {
            InitializeComponent();
        }

        private void FrmAssociacaoNumerariosDocumentos_Load(object sender, EventArgs e)
        {
            getNumerarios(false);
            getTipoDocumentos();            
                        
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;            
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            bindingNavigator.BindingSource = bindingSource;
            
            cbbNumerario.DataBindings.Add(new Binding("Text", bindingSource, "Tipo_Numerario", true));
            cbbTipoDocumento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "COD_Tipo_Documento", true));

            getSubTipoDocumentos();

            cbbSubTipoDocumento.DataBindings.Add(new Binding("SelectedValue", bindingSource, "COD_Sub_Tipo_Documento", true));            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;                       
            
            cbbNumerario.Enabled = false;
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            getNumerarios(true);

            cbbNumerario.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = " DELETE FROM Associacao_Numerario_Documento WHERE Codigo = @Codigo ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Codigo", bindingSource.GetRelatedCurrencyManager("Codigo").Current);                        

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Codigo: {0}", bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString()));
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
                    string query = "UPDATE Associacao_Numerario_Documento SET Cod_Tp_Documentos = @Cod_Tp_Documentos, Cod_Sub_Tp_Documentos = @Cod_Sub_Tp_Documentos WHERE Codigo = @Codigo ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Cod_Tp_Documentos", (cbbTipoDocumento.SelectedValue == null ? (object)DBNull.Value : cbbTipoDocumento.SelectedValue));
                        cmd.Parameters.AddWithValue("@Cod_Sub_Tp_Documentos", (cbbSubTipoDocumento.SelectedValue == null ? (object)DBNull.Value : cbbSubTipoDocumento.SelectedValue));
                        cmd.Parameters.AddWithValue("@Codigo", bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString());

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString(), bindingSource.GetRelatedCurrencyManager("Codigo").Current.ToString()));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Associacao_Numerario_Documento                               " +
                                   " ( Cod_Tp_Numerarios,  Cod_Tp_Documentos,  Cod_Sub_Tp_Documentos) VALUES " +
                                   " (@Cod_Tp_Numerarios, @Cod_Tp_Documentos, @Cod_Sub_Tp_Documentos)        ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Cod_Tp_Numerarios", (cbbNumerario.SelectedValue == null ? (object)DBNull.Value : cbbNumerario.SelectedValue));
                        cmd.Parameters.AddWithValue("@Cod_Tp_Documentos", (cbbTipoDocumento.SelectedValue == null ? (object)DBNull.Value : cbbTipoDocumento.SelectedValue));
                        cmd.Parameters.AddWithValue("@Cod_Sub_Tp_Documentos", (cbbSubTipoDocumento.SelectedValue == null ? (object)DBNull.Value : cbbSubTipoDocumento.SelectedValue));

                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Tipo_Numerario:{0}", cbbNumerario.Text));
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
            if (string.IsNullOrEmpty(cbbNumerario.Text.Trim()))
            {
                MessageBox.Show("Numerário obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbNumerario.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbTipoDocumento.Text.Trim()))
            {
                MessageBox.Show("Tipo de Documento obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipoDocumento.Focus();
                return false;
            }

            if (string.IsNullOrEmpty(cbbSubTipoDocumento.Text.Trim()))
            {
                MessageBox.Show("Sub Tipo de Documento obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbSubTipoDocumento.Focus();
                return false;
            }            

            return true;
        }

        private DataTable getAssociacaoNumerariosDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "   SELECT AD.Codigo, TP.Descricao AS Tipo_Numerario, TD.codigo AS COD_Tipo_Documento, TD.descricao AS Tipo_Documento, STP.codigo AS COD_Sub_Tipo_Documento, STP.Descricao AS Sub_Tipo_Documento  " +
                           "     FROM Associacao_Numerario_Documento AD LEFT JOIN Tipos_Numerario TP                                     " +
                           "       ON AD.Cod_Tp_Numerarios = TP.Codigo LEFT JOIN Tipo_Documentos TD                                      " +
                           "       ON AD.Cod_Tp_Documentos = TD.codigo LEFT JOIN Sub_Tipo_Documentos STP                                 " + 
                           "       ON AD.Cod_Tp_Documentos = STP.Tipo_doc AND                                                            " +
                           "          AD.Cod_Sub_Tp_Documentos = STP.codigo                                                              " +
                           " ORDER BY TP.Descricao, TD.descricao, STP.Descricao                                                          ";

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

        private void getNumerarios(bool Novos)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            if (Novos)
            {
                query = "SELECT Codigo, Descricao FROM Tipos_Numerario WHERE Codigo NOT IN (SELECT Cod_Tp_Numerarios FROM Associacao_Numerario_Documento) ORDER BY Descricao";
            }
            else
            {
                query = "SELECT Codigo, Descricao FROM Tipos_Numerario ORDER BY Descricao";                                    
            }                 
            
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

                cbbNumerario.DataSource    = null;
                cbbNumerario.DataSource    = table;
                cbbNumerario.DisplayMember = "Descricao";
                cbbNumerario.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTipoDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Tipo_Documentos ORDER BY Descricao";


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
                cbbTipoDocumento.DataSource    = table;
                cbbTipoDocumento.DisplayMember = "Descricao";
                cbbTipoDocumento.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSubTipoDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            query = "SELECT Tipo_Doc, Codigo, Descricao FROM Sub_Tipo_Documentos WHERE Tipo_Doc = @Tipo_Doc ";        

            DataTable table;
            try
            {
                if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
                {
                    query = query + " ORDER BY Descricao ";
                }
                else
                {
                    try 
                	{
                        if ((AtivaBuscaPorCodigo) & (!string.IsNullOrEmpty(bindingSource.GetRelatedCurrencyManager("COD_Sub_Tipo_Documento").Current.ToString())))
                        {
                            query = query + " AND Codigo = @Codigo";       
                        } 
	                }
	                catch (Exception)
	                {	
	                }                                                                                                                                        
                }                                                             

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                    
                    if ((statusCadastro == StatusCadastro.Novo) || (statusCadastro == StatusCadastro.Editar))
                    {                        
                        if (!string.IsNullOrEmpty(cbbTipoDocumento.SelectedValue.ToString()))
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Doc", cbbTipoDocumento.SelectedValue);
                        }
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(cbbTipoDocumento.SelectedValue.ToString()))
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Doc", cbbTipoDocumento.SelectedValue);
                        }

                        try
                        {
                            if ((AtivaBuscaPorCodigo) & (!string.IsNullOrEmpty(bindingSource.GetRelatedCurrencyManager("COD_Sub_Tipo_Documento").Current.ToString())))
                            {
                                cmd.Parameters.AddWithValue("@Codigo", bindingSource.GetRelatedCurrencyManager("COD_Sub_Tipo_Documento").Current);
                            }
                        }
                        catch (Exception)
                        {
                        }                                                                                           
                    }

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {                                                
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                cbbSubTipoDocumento.DataSource    = null;
                cbbSubTipoDocumento.DataSource    = table;
                cbbSubTipoDocumento.DisplayMember = "Descricao";                
                cbbSubTipoDocumento.ValueMember   = "Codigo";                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }                       

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getAssociacaoNumerariosDocumentos();

            dataGridView.DataSource = bindingSource;

            bindingSource.MoveFirst();
        }

        private void cbbSubTipoDocumento_Enter(object sender, EventArgs e)
        {
            AtivaBuscaPorCodigo = true;

            getSubTipoDocumentos();

            AtivaBuscaPorCodigo = false;
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisar.Text))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Tipo_Numerario like '" + txtPesquisar.Text + "%' ";                
            } 
        }                                
    }
}
