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
    public partial class FrmLocalizaMSDOC : MS2000.Desktop.Componentes.MSForm01
    {
        public string Processo { get; set; }

        public FrmLocalizaMSDOC()
        {
            InitializeComponent();
        }

        private void getPesquisaPor()
        {
            Dictionary<int, string> itens = new Dictionary<int, string>();

            itens.Add(0, "Processo");
            itens.Add(1, "Número do Documento");

            cbbPesquisarPor.DisplayMember = "Value";
            cbbPesquisarPor.ValueMember = "Key";
            cbbPesquisarPor.DataSource = new BindingSource(itens, null);
        }

        private DataTable getDocumentos(int valor)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            if (valor == 1)
            {
                query = "SELECT  Processo, Numero_Doc " +
                        "FROM Documentos " +
                        "WHERE Processo = @Processo " +
                        "GROUP BY Importador, Processo, Tipo_Doc, Sub_Tipo_Doc, Numero_Doc, Codigo, pdf " +
                        "ORDER BY Processo, Numero_Doc, Tipo_Doc, Sub_Tipo_Doc, Codigo ";
            }
            else
            {
                query = "SELECT Top 100 Processo, Numero_Doc  " +
                        "FROM Documentos " +
                        "WHERE  Numero_DOC like @Numero_DOC  " +
                        "GROUP BY Importador, Processo, Tipo_Doc, Sub_Tipo_Doc, Numero_Doc, Codigo, pdf " +
                        "ORDER BY Processo, Numero_Doc, Tipo_Doc, Sub_Tipo_Doc, Codigo ";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (valor == 1)
                {
                    cmd.Parameters.AddWithValue("@Processo", txtPesquisar.Text);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Numero_DOC",string.Format("{0}%", txtPesquisar.Text));
                }
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            dataGridView1.AutoGenerateColumns = false;
            if (cbbPesquisarPor.SelectedIndex == 0)
            {
                if (txtPesquisar.Text.Length == 8)
                {                   
                    dataGridView1.DataSource = getDocumentos(1);
                }
                else
                {                   
                    dataGridView1.DataSource = null;
                }
            }
            else
            {
                if (txtPesquisar.Text.Length >= 3)
                {                    
                    dataGridView1.DataSource = getDocumentos(2);
                }
                else
                {                   
                    dataGridView1.DataSource = null;
                }
            }
        }

        private void cbbPesquisarPor_SelectedIndexChanged(object sender, EventArgs e)
        {
            //processo
            if (cbbPesquisarPor.SelectedIndex == 0)
            {
                txtPesquisar.MaxLength = 8;
            }
            else
            {
                txtPesquisar.MaxLength = 30;
            }
        }

        private void FrmLocalizaMSDOC_Load(object sender, EventArgs e)
        {
            getPesquisaPor();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
           // processo =  
        }
    }
}
