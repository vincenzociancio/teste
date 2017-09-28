using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleAtaUpload : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public string ID { get; set; }
        public string Tema { get; set; }

        string Caminho;
        const int CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP = 13;
        string _caminho_doc_ata;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
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

        private DataTable getUploadAtas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select pk_atas_arquivos, Cast(Data as date) as Data, tipo_arquivo, descricao_arquivo from Controle_Atas_Arquivos where fk_atas = @fk_atas ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@fk_atas", ID);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmControleAtaUpload_Load(object sender, EventArgs e)
        {
            _caminho_doc_ata = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOCUMENTOS_NOTAFISCAL_EQUIP)).Caminho;

            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource1.DataSource = getUploadAtas();
            dataGridView.DataSource = bindingSource1;
            bindingNavigator.BindingSource = bindingSource1;

            lblRazaoSocial.Text = Tema;
        }

        public FrmControleAtaUpload()
        {
            InitializeComponent();
        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "files (*.pdf,*.doc,*.docx) |*.pdf;*.doc;*.docx";
            dlg.ShowDialog();
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            Caminho= dlg.FileName;
        
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource1.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            txtArquivo.Enabled = false;
            txtArquivo.Text = "";
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string Destino;
            try
            {
                if (!string.IsNullOrEmpty(txtArquivo.Text))
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Atas_Arquivos " +
                                   "(fk_atas,Data, descricao_arquivo,tipo_arquivo) " +
                                   "VALUES " +
                                   "(@fk_atas,@Data,@descricao_arquivo,@TipoArquivo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@fk_atas", ID);
                        cmd.Parameters.AddWithValue("@descricao_arquivo", txtArquivo.Text);
                        cmd.Parameters.AddWithValue("@TipoArquivo", System.IO.Path.GetExtension(txtArquivo.Text));
                        cmd.Parameters.AddWithValue("@Data", DateTime.Now);                        
                        cmd.ExecuteNonQuery();
                    }
                    bindingSource1.DataSource = getUploadAtas();
                    Destino = _caminho_doc_ata + bindingSource1.GetRelatedCurrencyManager("pk_atas_arquivos").Current + System.IO.Path.GetExtension(txtArquivo.Text);
                    File.Copy(Caminho, Destino, true);
                    bindingSource1.DataSource = getUploadAtas();
                    dataGridView.DataSource = bindingSource1;
                    bindingNavigator.BindingSource = bindingSource1;
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    statusCadastro = StatusCadastro.None;
                    HabilitarDesabilitaControles(false);
                    LogSistemas.AddLogSistema(ID, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricão Upload:{0}", txtArquivo.Text));
                }
                else
                {
                    MessageBox.Show("Você precisa selecionar um arquivo antes de salvar.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }



        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource1.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtArquivo.Text = "";
        }

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "Download")
            {
                var Id = ((DataRowView)this.bindingSource1.Current).Row["pk_atas_arquivos"];
                try
                {
                    System.Diagnostics.Process.Start(_caminho_doc_ata + Id + System.IO.Path.GetExtension(txtArquivo.Text));
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.Rows.Count >= 1)
            {
                txtArquivo.Text = ((DataRowView)this.bindingSource1.Current).Row["descricao_arquivo"].ToString(); 
            }
            
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
