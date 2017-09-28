using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Componentes
{
    public partial class FrmLocalizarClientes : MS2000.Desktop.Componentes.MSForm01
    {
        public string CodigoRetorno { get; set; }
        
        public FrmLocalizarClientes()
        {
            InitializeComponent();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Abort;
            Close();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (bindingLocalizar.Count > 0)
            {
                CodigoRetorno = ((DataRowView)bindingLocalizar.Current).Row["Codigo"].ToString();
                this.DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void FrmLocalizarClientes_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
        }

        private void btnLocalizar_Click(object sender, EventArgs e)
        {
            //if (txtParametro.Text.Length > 3)
            //{
            //    bindingLocalizar.DataSource = getClientes(txtNomeCliente.Text);
            //    dataGridView.DataSource = bindingLocalizar;
            //}
        }

        private DataTable getClientes(string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;        
            query = "select Codigo, razao_social, endereco, cidade, bairro, CNPJ_CPF_COMPLETO "+
                "from Importadores "+
                "where razao_social like @razao_social and Ativo = '1' " +
                "Order by razao_social ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@razao_social", string.Format("%{0}%", descricao));
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void txtParametro_KeyDown(object sender, KeyEventArgs e)
        {
            //if (e.KeyCode == Keys.Enter)
            //{
            //    btnLocalizar_Click(null, null);
            //}
        }

        private void txtParametro_TextChanged(object sender, EventArgs e)
        {
            //btnLocalizar_Click(null, null);
        }
            

        private void txtNomeCliente_TextChanged(object sender, EventArgs e)
        {
            if (txtNomeCliente.Text.Length > 3)
            {
                bindingLocalizar.DataSource = getClientes(txtNomeCliente.Text);
                dataGridView.DataSource = bindingLocalizar;
            }            
        }

        private void dataGridView_DoubleClick(object sender, EventArgs e)
        {
            btnOK_Click(null, null);
        }

    }
}
