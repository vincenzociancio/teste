using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Financeiro
{
    public partial class FrmContratoFornecedoresUpload : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public string ID { get; set; }
        public string RazaoSocial { get; set; }
        string CaminhoProposta;

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
        }

        public FrmContratoFornecedoresUpload()
        {
            InitializeComponent();
        }

        private DataTable getUploadContratoFornecedores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Cast(Data as date) as Data,Descricao_Arquivo,Titulo from Contratos_Fornecedores_Cadastrados_Upload where lixo = '0' and fk_contrato = @id ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@ID", ID);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        const int CODIGO_CAMINHO_DOCUMENTOS_CONTRATO_FORNECEDORES = 5;
        string _caminho_doc_contrato_fornecedores;

        private void FrmContratoFornecedoresUpload_Load(object sender, EventArgs e)
        {
            _caminho_doc_contrato_fornecedores = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_CONTRATO_FORNECEDORES)).Caminho;

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUploadContratoFornecedores();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            lblRazaoSocial.Text = RazaoSocial;
            txtTitulo.DataBindings.Add(new Binding("Text", bindingSource, "Titulo", true));
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "files (*.pdf,) |*.pdf;";
            dlg.ShowDialog();
            txtArquivoProposta.Text = Path.GetFileName(dlg.FileName);
            CaminhoProposta = dlg.FileName;
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtArquivoProposta.Enabled = false;
            txtArquivoProposta.Text = "";
        }

        private string getNovoCodigo()
        {           
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select MAX(id)as id from Contratos_Fornecedores_Cadastrados_Upload order by id desc";

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

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string Destino;

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO Contratos_Fornecedores_Cadastrados_Upload " +
                               "(fk_contrato,Descricao_Arquivo,Tipo_Arquivo " +
                               ",Data,Lixo,Titulo,fk_usuario) " +
                               "VALUES " +
                               "(@fk_contrato,@Descricao_Arquivo,@Tipo_Arquivo " +
                               ",@Data,@Lixo,@Titulo,@fk_usuario)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_contrato", ID);
                    cmd.Parameters.AddWithValue("@Descricao_Arquivo", txtArquivoProposta.Text);                    
                    cmd.Parameters.AddWithValue("@Tipo_Arquivo", ".pdf");
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Lixo", "0");
                    cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                    cmd.Parameters.AddWithValue("@fk_usuario", FrmPrincipal.PK_UsuarioLogado);
                    cmd.ExecuteNonQuery();
                }

                Destino = _caminho_doc_contrato_fornecedores + getNovoCodigo() + ".pdf";
                File.Copy(CaminhoProposta, Destino, true);
                bindingSource.DataSource = getUploadContratoFornecedores();
                dataGridView.DataSource = bindingSource;
                bindingNavigator.BindingSource = bindingSource;
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricão:{0}", txtTitulo.Text));
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
            txtArquivoProposta.Text = "";
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "Download")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;
                try
                {
                    System.Diagnostics.Process.Start(_caminho_doc_contrato_fornecedores + Id + ".pdf");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}
