using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmControleCIDE : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();
        public FrmControleCIDE()
        {
            InitializeComponent();
        }
        class ProcessoAdicoes
        {
            public string Adicao { get; set; }
            public string NCM { get; set; }
            public string Descricao_Item { get; set; }
            public int ID_Processo { get; set; }
        }

        private void FrmControleCIDE_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
        }
        private void getAdicoes(string processo)
        {
            string query = "SELECT T.Adicao, I.NCM,  MAX(I.Descricao_Produto) AS 'Descricao_Produto', P.ID FROM Processos P " +
                           "INNER JOIN Tributacao_Item_Fatura T ON P.Codigo = T.Processo " +
                           "INNER JOIN Faturas F ON T.Fatura_Id = F.Fatura_Id " +
                           "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id AND I.Sequencial = T.Sequencial_Item " +
                           "WHERE P.Codigo = @Processo GROUP BY T.Adicao, I.NCM, P.ID";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    List<ProcessoAdicoes> dados = new List<ProcessoAdicoes>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                dados.Add(new ProcessoAdicoes
                                {
                                    Adicao = reader["Adicao"].ToString(),
                                    NCM = reader["NCM"].ToString(),
                                    Descricao_Item = reader["Descricao_Produto"].ToString(),
                                    ID_Processo = (int)reader["ID"]
                                });
                            }
                        }
                    }
                    cbbAdicoes.DataSource = null;
                    cbbAdicoes.DataSource = dados;
                    cbbAdicoes.DisplayMember = "Adicao";
                    cbbAdicoes.ValueMember = "Adicao";
                    cbbAdicoes.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private DataTable getControle(string processo)
        {
            string query = "SELECT C.ID, C.Numero_Adicao,C.PIS_Valor,C.PIS_Unidade, C.PIS_Quantidade, " +
                           "C.COFINS_Valor,C.COFINS_Unidade, C.COFINS_Quantidade " +
                           "FROM Controle_CIDE C " +
                           "INNER JOIN Processos P ON P.ID = C.FK_Processo " +
                           "WHERE P.Codigo = @Processo " +
                           "ORDER BY C.Numero_Adicao";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void populaGrid()
        {
            getAdicoes(txtProcesso.Text);
            //  getNivel();
            dataGridView.DataSource = getControle(txtProcesso.Text);
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {

        }

        private void btnRemover_Click(object sender, EventArgs e)
        {

        }
        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            dataGridView.DataSource = null;
            cbbAdicoes.DataSource = null;
            panelControl.Enabled = false;
//            txtAdValorem.Clear();
 //           txtBaseCalculo.Clear();
            txtValorPIS.Clear();
            txtUnidadePIS.Clear();
            txtQuantidadePIS.Clear();
        }

    }
}
