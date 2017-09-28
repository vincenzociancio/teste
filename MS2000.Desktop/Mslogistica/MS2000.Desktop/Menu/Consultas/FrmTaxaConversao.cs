using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;

namespace MS2000.Desktop.Menu.Consultas
{
    public partial class FrmTaxaConversao : MS2000.Desktop.Componentes.MSForm01
    {
        DataTable dt = new DataTable();

        public FrmTaxaConversao()
        {
            InitializeComponent();
        }

        private DataTable getTaxas()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Select Codigo,Descricao,Taxa_Conversao,Vigencia_Inicio_Taxa,Vigencia_Fim_Taxa  " +
                           "From TAB_CONVERSAO_CAMBIO " +
                           "Order by Codigo ";
                           
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

        private void FrmTaxaConversao_Load(object sender, EventArgs e)
        {
            dt = getTaxas();

            grvTaxa.AutoGenerateColumns = false;
            grvTaxa.DataSource = dt;
        }

        private void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            dt.DefaultView.RowFilter = string.Format("Descricao LIKE '{0}%'", txtPesquisa.Text);
        }
    }
}
