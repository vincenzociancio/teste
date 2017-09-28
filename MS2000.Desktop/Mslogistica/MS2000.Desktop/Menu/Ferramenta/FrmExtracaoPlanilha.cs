using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmExtracaoPlanilha : MS2000.Desktop.Componentes.MSForm01
    {
        private void getImportador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM TAB_INCOTERMS_VENDA";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbImportador.DataSource = table;
                cbbImportador.DisplayMember = "Descricao";
                cbbImportador.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getStatus()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select CODIGO, DESCRICAO from Tipos_status_processos " +
				           "union all "+
				           "select '5', 'Todos' " +
				           "order by CODIGO desc";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbStatus.DataSource = table;
                cbbStatus.DisplayMember = "Descricao";
                cbbStatus.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public FrmExtracaoPlanilha()
        {
            InitializeComponent();
        }

        private void FrmExtracaoPlanilha_Load(object sender, EventArgs e)
        {
            getImportador();
            getStatus();
        }
    }
}
