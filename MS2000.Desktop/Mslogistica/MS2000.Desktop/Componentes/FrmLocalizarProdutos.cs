using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Componentes
{
    public partial class FrmLocalizarProdutos : MS2000.Desktop.Componentes.MSForm01
    {
        public int IdProduto { get; set; }
        public string CodFabricante { get; set; }
        public string CodigoProduto { get; set; }
        public string Part_Number { get; set; }
        public string DescPortugues { get; set; }
        public string DescIngles { get; set; }
        public string ncm{ get; set; }
        public string DestaqueNCM { get; set; }
        public string NALADI { get; set; }
        public string UnidadeComercializada { get; set; }
        public FrmLocalizarProdutos()
        {
            InitializeComponent();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Abort;
            Close();
        }

        private void FrmLocalizarProdutos_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
            cbbFiltro.SelectedIndex = 0;
        }

        private DataTable getProdutos(string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            query = " SELECT P.REG,P.CodigoProdutoCliente, P.CODIGO, P.PART_NUMBER, P.Descricao, P.Descricao_ing, P.NCM, " +
                     " P.Destaque_NCM, P.NALADI, P.Unidade, P.Unidade_Medida_Estat, P.DATA_INCLUSAO, " +
                     " P.Usuario_INCLUSAO, P.DATA_ULTIMA_ALTERACAO, P.Usuario_ALTERACAO, P.Revisado, " +
                     " P.Revisao_Data, P.Revisao_Usuario, P.Revisao_OBS, I.Razao_Social AS Importador, " +
                     " F.Razao_Social AS Fabricante, P.Importador AS codimp, P.Fabricante AS codfab " +
                     "FROM Produtosnew P " +
                     "LEFT JOIN Importadores I ON P.Importador = I.Codigo " +
                     "LEFT JOIN Fabricantes_Produtores F ON P.Fabricante = F.Codigo " +
                     "WHERE ";
            if (cbbFiltro.SelectedIndex == 0)
            {
                query = query + " P.CODIGO Like @descricao ";
            }
            else if (cbbFiltro.SelectedIndex == 1)
            {
                query = query + " P.CodigoProdutoCliente Like @descricao ";
            }
            else if (cbbFiltro.SelectedIndex == 2)
            {
                query = query + " P.PART_NUMBER Like @descricao ";
            }
            else if (cbbFiltro.SelectedIndex == 3)
            {
                query = query + " P.Descricao Like @descricao ";
            }
            else
            {
                query = query + " P.Descricao_ing Like @descricao ";
            }

            query = query + " AND P.Importador = @importador ORDER BY P.CODIGO, P.PART_NUMBER ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@descricao", string.Format("%{0}%", descricao));
                cmd.Parameters.AddWithValue("@importador", "477");
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }


        private void txtLocaliza_TextChanged(object sender, EventArgs e)
        {
            if (txtLocaliza.Text.Length > 3)
            {
                bindingLocalizar.DataSource = getProdutos(txtLocaliza.Text);
                dataGridView.DataSource = bindingLocalizar;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (bindingLocalizar.Count > 0)
            {
                IdProduto = Convert.ToInt32(((DataRowView)bindingLocalizar.Current).Row["REG"].ToString());
                CodFabricante = ((DataRowView)bindingLocalizar.Current).Row["codfab"].ToString();
                CodigoProduto = ((DataRowView)bindingLocalizar.Current).Row["CODIGO"].ToString();
                Part_Number = ((DataRowView)bindingLocalizar.Current).Row["PART_NUMBER"].ToString();
                DescPortugues = ((DataRowView)bindingLocalizar.Current).Row["Descricao"].ToString();
                DescIngles = ((DataRowView)bindingLocalizar.Current).Row["Descricao_ing"].ToString();
                ncm = ((DataRowView)bindingLocalizar.Current).Row["NCM"].ToString();
                DestaqueNCM = ((DataRowView)bindingLocalizar.Current).Row["Destaque_NCM"].ToString();
                NALADI = ((DataRowView)bindingLocalizar.Current).Row["NALADI"].ToString();
                UnidadeComercializada = ((DataRowView)bindingLocalizar.Current).Row["Unidade"].ToString();
                this.DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void dataGridView_DoubleClick(object sender, EventArgs e)
        {
            btnOK_Click(null, null);
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            txtDescricaoPortugues.Text = ((DataRowView)bindingLocalizar.Current).Row["Descricao"].ToString();
            txtDescricaoIngles.Text = ((DataRowView)bindingLocalizar.Current).Row["Descricao_ing"].ToString();
        }
    }
}
