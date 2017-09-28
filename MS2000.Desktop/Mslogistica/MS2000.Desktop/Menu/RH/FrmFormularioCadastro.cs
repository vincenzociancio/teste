using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmFormularioCadastro : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        string CaminhoLocal;

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

        private DataTable getFormularioCadastro()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Cast(Data as date) as Data,Descricao_Arquivo,Titulo from RH_Formularios where lixo = '0' order by Data";

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

        public FrmFormularioCadastro()
        {
            InitializeComponent();
        }

        private void FrmFormularioCadastro_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFormularioCadastro();
            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtTitulo.DataBindings.Add(new Binding("Text", bindingSource, "Titulo", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
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
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO RH_Formularios "+
                               "(Descricao_Arquivo,Tipo_Arquivo,Data,Lixo,Titulo) "+
                               "VALUES " +
                               "(@Descricao_Arquivo,@Tipo_Arquivo,@Data,@Lixo,@Titulo)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                  
                    cmd.Parameters.AddWithValue("@Descricao_Arquivo", txtArquivo.Text);                    
                    cmd.Parameters.AddWithValue("@Tipo_Arquivo", Path.GetExtension(txtArquivo.Text));
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Lixo", "0");
                    cmd.Parameters.AddWithValue("@Titulo", txtTitulo.Text);
                    cmd.ExecuteNonQuery();
                }
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
            txtArquivo.Text = "";
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {

        }

        private void btnLocalizaUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "files (*.pdf,*.doc*,.docx) |*.pdf;*.doc;*.docx;";
            dlg.ShowDialog();
            txtArquivo.Text = Path.GetFileName(dlg.FileName);
            CaminhoLocal = dlg.FileName;
        }
    }
}
