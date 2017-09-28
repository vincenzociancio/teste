using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Controle
{
    public partial class FrmControleADEEmbarcacao : MS2000.Desktop.Componentes.MSForm01
    {
        public string importador { get; set; }
        public string embarcacao { get; set; }
        public FrmControleADEEmbarcacao()
        {
            InitializeComponent();
        }

        private DataTable getEmbarcacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select  Distinct(Descricao) as 'Descricao' from Locais_Inventario where Importador=@Importador";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", importador);                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmControleADEAndamentoEmbarcacao_Load(object sender, EventArgs e)
        {
            dataGridView.DataSource = getEmbarcacao();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;           
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
            this.DialogResult = DialogResult.Cancel;
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.SelectedCells.Count > 0)
            embarcacao = dataGridView.SelectedCells[0].Value.ToString();
        }
    }
}
