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
    public partial class FrmLocalizarFabricantes : MS2000.Desktop.Componentes.MSForm01
    {
        public string CodigoRetorno { get; set; }

        public FrmLocalizarFabricantes()
        {
            InitializeComponent();
        }

        private void FrmLocalizarFabricantes_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
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

        private void btnLocalizar_Click(object sender, EventArgs e)
        {
            //if (txtParametro.Text.Length > 3)
            //{
            //    bindingLocalizar.DataSource = getFabricantes(txtParametro.Text);
            //    dataGridView.DataSource = bindingLocalizar;
            //}
        }

        private void txtParametro_KeyDown(object sender, KeyEventArgs e)
        {
            //if (e.KeyCode == Keys.Enter)
            //{
            //    btnLocalizar_Click(null, null);
            //}
        }

        private DataTable getFabricantes(string descricao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;

            query = "select Codigo, razao_social, endereco, cidade, bairro , CGC_CPF from Fabricantes_Produtores where lixo = 0 and razao_social like @razao_social order by razao_social ";

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

        private void txtParametro_TextChanged(object sender, EventArgs e)
        {
            //btnLocalizar_Click(null, null);
        }

        private void txtNomeCliente_TextChanged(object sender, EventArgs e)
        {
            if (txtNomeCliente.Text.Length > 3)
            {
                bindingLocalizar.DataSource = getFabricantes(txtNomeCliente.Text);
                dataGridView.DataSource = bindingLocalizar;
            }
        }

        private void dataGridView_DoubleClick(object sender, EventArgs e)
        {
            btnOK_Click(null, null);
        }    
    }
}
