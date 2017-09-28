using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmProcessoVinculado : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmProcessoVinculado()
        {
            InitializeComponent();
        }

        private DataTable getProcessoVinculado(string processo)
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CODIGO FROM PROCESSOS WHERE PROC_VINC = @Processo ORDER BY CODIGO ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (txtProcesso.MaskCompleted)
                {
                    dataGridView.AutoGenerateColumns = false;
                    dataGridView.DataSource = getProcessoVinculado(txtProcesso.Text);
                    if (dataGridView.RowCount == 0)
                    {
                        MessageBox.Show("Não existem processos vinculados ao Processo - " + txtProcesso.Text, "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                }
                else
                {
                    dataGridView.DataSource = null;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                throw;
            }
        }
    }
}
