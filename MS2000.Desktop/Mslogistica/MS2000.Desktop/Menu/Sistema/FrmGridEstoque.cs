using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmGridEstoque : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmGridEstoque()
        {
            InitializeComponent();
        }

        private void FrmGridEstoque_Load(object sender, EventArgs e)
        {
            getTipo();
        }

        private void multiColumnComboBox1_DropDownClosed(object sender, EventArgs e)
        {
            PopulaConteudo();
        }

        private DataTable getEquipamentoTabela()
        {
            if (mcbEquipamento.SelectedValue != null)
            {
                string query = "SELECT *, CASE WHEN EmUso=1 THEN 'Sim' " +
                                "WHEN EmUso=0 THEN 'Não' " +
                                "END AS  [EmUsoString] from [Sistemas.CadastroEquipamento] C inner join "+
                                "[Sistemas.CadastroEquipamentoSerie] S on C.ID = S.FK_Equipamento "+
                                "where C.ID = @Equipamento and C.FK_Tipo = @FK_Tipo";

                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {

                        cmd.Parameters.AddWithValue("@FK_Tipo", (mcbTipo.SelectedValue == null ? "" : mcbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@Equipamento", (mcbEquipamento.SelectedValue == null ? "" : mcbEquipamento.SelectedValue));
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable table = new DataTable();
                            table.Load(reader);
                            return table;
                        }
                    }
                }
            }
            else
            {
                DataTable table = new DataTable();
                return table;
            }
        }       

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void mcbEquipamento_DropDownClosed(object sender, EventArgs e)
        {
            PopulaConteudo();
        }

        private void getTipo()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Descricao from [dbo].[Sistemas.CadastroEquipamentoTipo] order by ID ASC ";
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
                mcbTipo.DataSource = null;
                mcbTipo.DataSource = table;
                mcbTipo.DisplayMember = "Descricao";
                mcbTipo.ValueMember = "ID";
                mcbTipo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEquipamento()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select ID, Equipamento from [dbo].[Sistemas.CadastroEquipamento] where FK_Tipo = @FK_Tipo order by ID ASC ";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Tipo", mcbTipo.SelectedValue);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbEquipamento.DataSource = null;
                mcbEquipamento.DataSource = table;
                mcbEquipamento.DisplayMember = "Equipamento";
                mcbEquipamento.ValueMember = "ID";
                mcbEquipamento.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void PopulaConteudo()
        {
           
            bsEquipamentos.DataSource = getEquipamentoTabela();
            bindingNavigator.BindingSource = bsEquipamentos;
            if (gvEquipamento.Rows.Count == 0)
            {
                label3.Text = "";
                label4.Text = "";
                label6.Text = "";
                return;
            }
            else
            {
                if (mcbEquipamento.SelectedIndex == -1)
                {
                    label3.Text = bsEquipamentos.Count.ToString();
                }
                else
                {
                    label3.Text = bsEquipamentos.Count.ToString();
                    bsGeral.DataSource = getEquipamentoTabela();
                    bsGeral.Filter = "EmUso = 1";
                    label4.Text = bsGeral.Count.ToString();
                    label6.Text = (Convert.ToInt32(label3.Text) - bsGeral.Count).ToString();
                }
                
            }

        }

        private void mcbTipo_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (mcbTipo.SelectedValue != null)
            {
                getEquipamento();
                label3.Text = mcbEquipamento.Items.Count.ToString();
                label4.Text = "";
                label6.Text = "";
                bsEquipamentos.DataSource = null;
                if (mcbEquipamento.Items.Count == 0)
                {
                    mcbEquipamento.Enabled = false;
                }
                else
                {
                    mcbEquipamento.Enabled = true;
                    label2.Enabled = true;
                }
            }
        }

        private void mcbEquipamento_SelectionChangeCommitted(object sender, EventArgs e)
        {
            PopulaConteudo();
        }
    }
}
