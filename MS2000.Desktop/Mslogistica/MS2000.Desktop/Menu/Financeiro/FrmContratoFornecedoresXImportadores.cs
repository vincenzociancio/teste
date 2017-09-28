using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro
{
    public partial class FrmContratoFornecedoresXImportadores : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public int FK_Contrato;
        public string Fornecedor;
        
        string Cod_Importador;
        string CaminhoProposta;

        public virtual void VerificaBotoes()
        {
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnAdicionaAnexos.Enabled = (statusCadastro == StatusCadastro.None);
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled =  (statusCadastro == StatusCadastro.None);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            
            dataGridView1.Enabled = (statusCadastro == StatusCadastro.None);
            btnExcluirAnexo.Enabled = ((statusCadastro == StatusCadastro.None) && (bindingSource1.Count > 0));

            cbbImportadores.Enabled = (statusCadastro == StatusCadastro.Novo);
            txtTitulo.Enabled = (statusCadastro == StatusCadastro.Editar);            
            btnLocalizaUpload.Enabled = (statusCadastro == StatusCadastro.Editar);

            cbbTipo.Enabled = (statusCadastro == StatusCadastro.Editar);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmContratoFornecedoresXImportadores()
        {
            InitializeComponent();
        }

        private DataTable getFornecedoresXImportadores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            query = " SELECT CFIH.ID, F.Razao_Social AS Fornecedor, I.Codigo, I.Razao_Social AS Importador, CFIH.Fk_Importador " +
                    "   FROM Contratos_Fornecedores_Importadores_Habilitados CFIH                                              " +
                    "        INNER JOIN Contratos_Fornecedores_Cadastrados_Financeiro CFCF ON CFIH.Fk_Contrato = CFCF.id       " +
                    "        INNER JOIN Fornecedores F ON CFCF.fk_fornecedor = F.id                                            " +
                    "        INNER JOIN Importadores I ON CFIH.Fk_Importador = I.Codigo                                        ";   

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
            string query = " SELECT Codigo, CNPJ_CPF_COMPLETO, Razao_Social " +
                           "   FROM Importadores                            " +
                           "  WHERE Ativo = 1 AND Codigo NOT LIKE 'X%'      " +
                           "ORDER BY Razao_Social                           ";   

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

                cbbImportadores.DataSource = table;
                cbbImportadores.DisplayMember = "Razao_Social";
                cbbImportadores.ValueMember   = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AtualizaGrid()
        {
            bindingSource.DataSource = getFornecedoresXImportadores();

            dataGridView.DataSource = bindingSource;
        }

        private void AtualizaGridDocs()
        {
            bindingSource1.DataSource = getUploadContratoFornecedores();

            dataGridView1.DataSource = bindingSource1;            
        }        

        const int CODIGO_CAMINHO_DOCUMENTOS_CONTRATO_FORNECEDORES = 16;
        string _caminho_doc_contrato_fornecedores;

        private void FrmContratoFornecedoresXImportadores_Load(object sender, EventArgs e)
        {
            _caminho_doc_contrato_fornecedores = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_CONTRATO_FORNECEDORES)).Caminho;

            lblFornecedor.Text = Fornecedor;

            getImportadores();

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            AtualizaGrid();

            if (bindingSource.Count > 0)
            {
                Cod_Importador = ((DataRowView)this.bindingSource.Current).Row["Codigo"].ToString();

                AtualizaGridDocs();
            }                        

            bindingNavigator.BindingSource = bindingSource;            
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
            
            txtArquivoProposta.Enabled = false;  

            cbbImportadores.Focus();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            if (cbbTipo.Text == ".pdf")
            {
                dlg.Filter = "files (*.pdf,) | *.pdf;";
            }
            else
            {
                dlg.Filter = "files (*.msg) | *.msg;";
            }
            
            dlg.ShowDialog();
            txtArquivoProposta.Text = Path.GetFileName(dlg.FileName);
            CaminhoProposta = dlg.FileName;
        }

        private DataTable getUploadContratoFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " select ID, Cast(Data as date) as Data, Descricao_Arquivo, Tipo_Arquivo, Titulo from Contratos_Fornecedores_Importadores_Upload where lixo = 0 and fk_contrato_importador = @fk_contrato_importador ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if ((bindingSource.Count > 0) && (!string.IsNullOrEmpty(((DataRowView)this.bindingSource.Current).Row["Id"].ToString())))
                {
                    cmd.Parameters.AddWithValue("@fk_contrato_importador", ((DataRowView)this.bindingSource.Current).Row["Id"].ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@fk_contrato_importador", 0);                
                }                

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private string getNovoCodigo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select MAX(id)as id from Contratos_Fornecedores_Importadores_Upload order by id desc";

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
                return null;
            }
        }

        private void btnAdicionaAnexos_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                bindingSource1.AddNew();
                statusCadastro = StatusCadastro.Editar;
                HabilitarDesabilitaControles(true);

                txtTitulo.Clear();
                txtArquivoProposta.Clear();
                txtArquivoProposta.Enabled = false;

                txtTitulo.Focus();   
            }                       
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                //IMPORTADORES
                if (statusCadastro == StatusCadastro.Novo)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "INSERT INTO Contratos_Fornecedores_Importadores_Habilitados (Fk_Contrato, Fk_Importador) VALUES (@Fk_Contrato, @Fk_Importador)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fk_Contrato", FK_Contrato);
                        cmd.Parameters.AddWithValue("@Fk_Importador", cbbImportadores.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FK_Contrato.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Contrato:{0} Importador Adicionado:{1}", FK_Contrato.ToString(), cbbImportadores.SelectedValue.ToString()));
                    MessageBox.Show("Importador incluído com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    AtualizaGrid();
                }

                //ANEXOS
                if (statusCadastro == StatusCadastro.Editar)
                {                    
                    string Destino;
                    
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "INSERT INTO Contratos_Fornecedores_Importadores_Upload                                         " +
                                   "    (fk_contrato_importador,Descricao_Arquivo,Tipo_Arquivo,Data,Lixo,Titulo,fk_usuario)        " +
                                   " VALUES " +
                                   "    (@fk_contrato_importador,@Descricao_Arquivo,@Tipo_Arquivo,@Data,@Lixo,@Titulo,@fk_usuario) ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_contrato_importador", ((DataRowView)this.bindingSource.Current).Row["Id"].ToString());                        
                        cmd.Parameters.AddWithValue("@Descricao_Arquivo", txtArquivoProposta.Text);

                        if (cbbTipo.Text == ".pdf")
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Arquivo", ".pdf");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Tipo_Arquivo", ".msg");                            
                        }
                                                
                        cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                        cmd.Parameters.AddWithValue("@Lixo", "0");
                        cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                        cmd.Parameters.AddWithValue("@fk_usuario", FrmPrincipal.PK_UsuarioLogado);
                        cmd.ExecuteNonQuery();
                    }

                    if (cbbTipo.Text == ".pdf")
                    {
                        Destino = _caminho_doc_contrato_fornecedores + getNovoCodigo() + ".pdf"; 
                    }
                    else
                    {
                        Destino = _caminho_doc_contrato_fornecedores + getNovoCodigo() + ".msg";                         
                    }
                    
                    File.Copy(CaminhoProposta, Destino, true);

                    AtualizaGridDocs();

                    LimpaCamposAnexo();

                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);                    

                    LogSistemas.AddLogSistema(FK_Contrato.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Descricão:{0}", txtTitulo.Text));                    
                }                                

                statusCadastro = StatusCadastro.None;

                HabilitarDesabilitaControles(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }        

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {                        
            AtualizaGridDocs();                              
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.Columns[e.ColumnIndex].Name == "Download")
            {
                var Id = dataGridView1.Rows[e.RowIndex].Cells["ID"].Value;
                try
                {
                    if (dataGridView1.Rows[e.RowIndex].Cells["Tipo_Arquivo"].Value.ToString() == ".pdf")
                    {
                        System.Diagnostics.Process.Start(_caminho_doc_contrato_fornecedores + Id + ".pdf");
                    }
                    else
                    {
                        System.Diagnostics.Process.Start(_caminho_doc_contrato_fornecedores + Id + ".msg");
                    }                                                          
                }
                catch (Exception ex)
                {                    
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void LimpaCamposAnexo()
        {
            txtTitulo.Clear();
            txtArquivoProposta.Clear();            
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (bindingSource.Count > 0)
            {
                if (MessageBox.Show("Tem certeza que deseja excluir o registro ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    try
                    {
                        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                        string query = "DELETE FROM Contratos_Fornecedores_Importadores_Habilitados WHERE Id=@Id";

                        string fk_importador = ((DataRowView)this.bindingSource.Current).Row["Fk_Importador"].ToString();

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Id", ((DataRowView)this.bindingSource.Current).Row["Id"].ToString());
                            cmd.ExecuteNonQuery();
                        }

                        LogSistemas.AddLogSistema(FK_Contrato.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Contrato:{0} Importador Excluído:{1}", FK_Contrato.ToString(), fk_importador));

                        bindingSource.RemoveCurrent();

                        statusCadastro = StatusCadastro.None;

                        HabilitarDesabilitaControles(false);

                        MessageBox.Show("Importador excluído com sucesso.", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        if (bindingSource.Count > 0)
                        {
                            AtualizaGrid();

                            AtualizaGridDocs();
                        }

                        LimpaCamposAnexo();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }   
            }            
        }

        private void btnExcluirAnexo_Click(object sender, EventArgs e)
        {            
            if (MessageBox.Show("Tem certeza que deseja excluir o anexo ?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                   SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                   string query = "DELETE FROM Contratos_Fornecedores_Importadores_Upload WHERE Id=@Id";

                   using (SqlCommand cmd = new SqlCommand(query, conn))
                   {
                        cmd.Parameters.AddWithValue("@Id", ((DataRowView)this.bindingSource1.Current).Row["Id"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(FK_Contrato.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Anexo:{0}", FK_Contrato.ToString()));

                    bindingSource1.RemoveCurrent();

                    statusCadastro = StatusCadastro.None;

                    HabilitarDesabilitaControles(false);

                    MessageBox.Show("Anexo excluído com sucesso.", "Excluir", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }               
        }                 
    }
}
