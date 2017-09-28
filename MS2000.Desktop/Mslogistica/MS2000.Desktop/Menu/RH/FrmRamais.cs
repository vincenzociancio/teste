using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmRamais : MS2000.Desktop.Componentes.MSForm01
    {
        const int CODIGO_CAMINHO_FOTOS_RH = 7;
        string _caminho_doc_fotos_rh;

        string[] listaFotos;
        
        public FrmRamais()
        {
            InitializeComponent();
        }

        private void FrmRamais_Load(object sender, EventArgs e)
        {
            _caminho_doc_fotos_rh = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FOTOS_RH)).Caminho;
            //listaFotos = Directory.GetFiles(CAMINHOFOTO, "*.jpg");
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getUsuarios();
            dataGridView.DataSource = bindingSource;
        }

        private DataTable getUsuarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT " +
                "RH_Empregados.ID, Setores.Descricao, Usuarios.Nome_Completo,Usuarios.Ramal,Usuarios.Email,Usuarios.Celular " +
                "FROM Usuarios " +
                "left join  Setores on ( codigo = Setor ) " +
                "left join  RH_Empregados on ( FK_Usuario = PK_Usuario ) " +
                "where  Usuarios.Ativo = 1 order by  Nome_Completo";
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

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Nome_Completo like '" + txtLocalizar.Text + "%'";
        }

        private void dataGridView_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {

        }

        private void dataGridView_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            foreach (DataGridViewRow row in dataGridView.Rows)
            {
                var id = row.Cells["id"].Value;
                //string value = CAMINHOFOTO + id + ".JPG";
                //int pos = Array.IndexOf(listaFotos, value);
                //if (pos > -1)
                //{
                //    row.Cells[0].Value = Image.FromFile(listaFotos[pos]);
                //}
                //else
                //{
                //    int pos_sem = Array.IndexOf(listaFotos, CAMINHOFOTO + id + "sem_foto.JPG");
                //    row.Cells[0].Value = Image.FromFile(listaFotos[pos_sem]);
                //}               
                //row.Cells[0].Value = Image.FromStream

                    //my program always stopped here
                //MemoryStream ms = new MemoryStream(files.);
                //row.Cells[0].Value = Image.FromStream(ms);


                if (File.Exists(_caminho_doc_fotos_rh + id + ".jpg"))
                {
                    FileStream fs;
                    fs = new FileStream(_caminho_doc_fotos_rh + id + ".jpg", FileMode.Open, FileAccess.Read);
                    row.Cells[0].Value = Image.FromStream(fs);
                    fs.Close();
                }
                else
                {
                    FileStream fs;
                    fs = new FileStream(_caminho_doc_fotos_rh + "sem_foto.jpg", FileMode.Open, FileAccess.Read);
                    row.Cells[0].Value = Image.FromStream(fs);
                    fs.Close();
                }             
            }
        }
    }
}
