using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmDownloadFormulario : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmDownloadFormulario()
        {
            InitializeComponent();
        }

        private DataTable getFormulario()
        {
            string query = "Select id,Cast(data as Date) as Data,Titulo,Descricao_Arquivo, Tipo_Arquivo from RH_Formularios where lixo = 0";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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
        }

        const int CODIGO_CAMINHO_FORMULARIOS_RH = 6;
        string _caminho_formularios__rh;

        private void FrmDownloadFormulario_Load(object sender, EventArgs e)
        {
            _caminho_formularios__rh = (new CaminhoDiretorioServidor().GetCaminhoById(CODIGO_CAMINHO_FORMULARIOS_RH)).Caminho;

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getFormulario();
            dataGridView.DataSource = bindingSource;

        }

        private void dataGridView_CellDoubleClick(object sender, System.Windows.Forms.DataGridViewCellEventArgs e)
        {
            if (dataGridView.Columns[e.ColumnIndex].Name == "PDF")
            {
                var Id = dataGridView.Rows[e.RowIndex].Cells["ID"].Value;
                try
                {
                    SaveFileDialog dlg = new SaveFileDialog();

                    if (((DataRowView)bindingSource.Current).Row["Tipo_Arquivo"].ToString() == ".pdf")
                    {
                        dlg.Filter = "*PDF files (*.pdf)|*.pdf";
                    }
                    else
                    {
                        dlg.Filter = "*Excel files (*.xlsx)|*.xlsx";
                    }
                    
                    dlg.FilterIndex = 2;
                    dlg.RestoreDirectory = true;                    
                    dlg.FileName = ((DataRowView)bindingSource.Current).Row["Titulo"].ToString();

                    if (dlg.ShowDialog() == DialogResult.OK)
                    {
                       File.Copy(_caminho_formularios__rh + Id + ((DataRowView)bindingSource.Current).Row["Tipo_Arquivo"].ToString(), dlg.FileName, true);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            } 
        }

        private void dataGridView_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0)
            {
                return;
            }
            var dataGridView = (sender as DataGridView);
            //Check the condition as per the requirement casting the cell value to the appropriate type
            if (e.ColumnIndex == 0)
                dataGridView.Cursor = Cursors.Hand;
            else
                dataGridView.Cursor = Cursors.Default;
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            bindingSource.Filter = "Titulo LIKE '" + txtLocalizar.Text + "%'";
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
