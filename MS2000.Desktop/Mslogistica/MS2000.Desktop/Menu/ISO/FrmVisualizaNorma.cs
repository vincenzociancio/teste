using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmVisualizaNorma : Form
    {
        const int CODIGO_CAMINHO_DOC_ISO = 1;
        string _caminho_doc_iso;
        public string tag { get; set; }
        public string titulo { get; set; }
        public int Setor { get; set; }
        public int SubSetor { get; set; }

        readonly string[] _arrayNorma = { "IMPORTAÇÃO", "DOCUMENTAL", "EXPORTAÇÃO" };
        public FrmVisualizaNorma()
        {
            InitializeComponent();
        }

        private DataTable getNorma(int setor)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT sequencial, Norma,Nome_PDF from Normas_gerencia_Proc " +
                           "where Setor = @setor order by norma";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@setor", setor);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }
        private DataTable getNormaSubSetor(int setor, int subsetor)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT sequencial, Norma,Nome_PDF from Normas_gerencia_Proc " +
                           "where Setor = @setor AND Subsetor = @Subsetor order by norma";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@setor", setor);
                cmd.Parameters.AddWithValue("@Subsetor", subsetor);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private bool NormaRevisando(string Seq)
        {
            var query = "select * from Normas_gerencia_Proc where Ativo = '1' and sequencial = @Sequencial  ";
            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Sequencial", Seq);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }


        private void FrmVisualizaNorma_Load(object sender, EventArgs e)
        {
            _caminho_doc_iso = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_DOC_ISO)).Caminho;
            this.Text = titulo;
            dataGridView.AutoGenerateColumns = false;

            if (Setor == 8)
            {
                dataGridView.DataSource = getNormaSubSetor(Setor, SubSetor);
            }
            else
            {
                dataGridView.DataSource = getNorma(Setor);
            }
        }

        //private string Caminho()
        //{
        //    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        //    string query = "select Caminho from CaminhoDiretorioServidor where ID = '1' ";                          

        //    using (SqlCommand cmd = new SqlCommand(query, conn))
        //    {                
        //        using (SqlDataReader reader = cmd.ExecuteReader())
        //        {
        //            reader.Read();
        //            return reader[0].ToString();
        //        }
        //    }
        //}

        private void dataGridView_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (NormaRevisando(dataGridView.Rows[e.RowIndex].Cells["sequencial"].Value.ToString()))
            {
                MessageBox.Show("Norma em fase de revisão!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                var norma = dataGridView.Rows[e.RowIndex].Cells["Nome_PDF"].Value;
                Process.Start(_caminho_doc_iso + norma + ".pdf");
                LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.None, Convert.ToInt32(tag), string.Format("Norma Visualizada: {0} ", dataGridView.Rows[e.RowIndex].Cells["Norma"].Value.ToString()));
            }
        }

        private void dataGridView_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0)
            {
                return;
            }
            var dataGridView = (sender as DataGridView);

            if (e.ColumnIndex == 0)
                dataGridView.Cursor = Cursors.Hand;
            else
                dataGridView.Cursor = Cursors.Default;
        }

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
