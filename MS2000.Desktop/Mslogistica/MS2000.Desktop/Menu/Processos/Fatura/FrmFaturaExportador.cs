using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos.Fatura
{
    public partial class FrmFaturaExportador : MS2000.Desktop.Componentes.MSForm01
    {
        public string codigoExportador { get; set; }
        public string dadosExportador { get; set; }
        public FrmFaturaExportador()
        {
            InitializeComponent();
        }

        private DataTable getExportador(string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Razao_Social, endereco, cidade, bairro, CGC_CPF " +
                           "FROM Exportadores Where Lixo = 0  " +
                //  if (!string.IsNullOrEmpty(descricao))
                //  {
                "And Razao_Social like @razao_social " +
                //  }
             "ORDER BY Razao_Social ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@razao_social", string.Format("{0}%", descricao));
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnSelecionar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void FrmFaturaExportador_Load(object sender, EventArgs e)
        {
            PreencheGrid("");
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dataGridView.SelectedRows)
            {
                codigoExportador = row.Cells[0].Value.ToString();
                dadosExportador = row.Cells[0].Value.ToString() + " - " + row.Cells[1].Value.ToString();
            }
        }

        private void dataGridView_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void txtLocaliza_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtLocaliza.Text))
            {
                PreencheGrid(txtLocaliza.Text);
            }
            else
            {
                PreencheGrid("");
            }
        }

        private void PreencheGrid(string localiza)
        {
            dataGridView.AutoGenerateColumns = false;
            dataGridView.DataSource = getExportador(localiza);
        }
    }
}
