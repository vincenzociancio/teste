using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.RH
{
    public partial class FrmControleHierarquicoColaboradorDaCelula : MS2000.Desktop.Componentes.MSForm01
    {
        public int PK_Celula { get; set; }

        public FrmControleHierarquicoColaboradorDaCelula()
        {
            InitializeComponent();
        }

        private void FrmControleHierarquicoColaboradorDaCelula_Load(object sender, EventArgs e)
        {
            dgvColaboradores.AutoGenerateColumns = false;

            PreencherGridColaboradores();

            PreencherListaColaboradoresdaCelula();
        }

        private void PreencherGridColaboradores()
        {
            bindingSource.DataSource = getAllColaboradores();
            dgvColaboradores.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
        }

        private void PreencherListaColaboradoresdaCelula()
        {
            lbColaboradores.Items.Clear();
            lbColaboradores.Items.AddRange(getColaboradoresDaCelula(PK_Celula).ToArray());
            lbColaboradores.DisplayMember = "NomeCompleto";
        }

        private class Funcionario
        {
            public int Id { get; set; }
            public string Usuario { get; set; }
            public string NomeCompleto { get; set; }
        }

        private List<Funcionario> getAllColaboradores()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT lower(Usuario) as Usuario, Nome_Completo FROM Usuarios  " +
                          "WHERE ((ativo = 1) or (ferias = 1)) and not Exists " +
                          "(SELECT * FROM Controle_Hierarquico_Colaborador_Cel WHERE FK_Colaborador = Usuario) " +
                          "Order by Nome_Completo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {               
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private List<Funcionario> getColaboradoresDaCelula(int celula)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT H.PK_Colaborador_Cel, lower(U.Usuario) as Usuario, U.Nome_Completo from Controle_Hierarquico_Colaborador_Cel H " +
                        "INNER JOIN Usuarios U on H.FK_Colaborador = U.Usuario " +
                        "WHERE ((U.ativo = 1) or (U.ferias = 1)) and H.FK_Celula =@celula " +
                        "Order by U.Nome_Completo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@celula", celula);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Id = (int)reader["PK_Colaborador_Cel"],
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private void addColaboradorCelula(string colaborador, int celula)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Hierarquico_Colaborador_Cel (FK_Colaborador, FK_Celula)values(@FK_Colaborador, @FK_Celula)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Colaborador", colaborador.ToUpper());
                cmd.Parameters.AddWithValue("@FK_Celula", celula);
                cmd.ExecuteNonQuery();
            }
        }

        private void deleteColaboradorCelula(int id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "delete from Controle_Hierarquico_Colaborador_Cel where PK_Colaborador_Cel = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
            }
        }

        private bool TemSolicitacaoNumerario(string usuario)
        {
            bool GoOn = false;

            string query = "select Solicitante from Controle_Numerarios_Solicitacao where Solicitante=@Usuario and Status_Atual = 1";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        GoOn = true;
                    }
                }
            }
            return GoOn;
        }

        private void btnAddColaborador_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dgvColaboradores.SelectedRows)
            {
                Funcionario colaborador = row.DataBoundItem as Funcionario;
                if (!string.IsNullOrEmpty(colaborador.Usuario))
                {
                    addColaboradorCelula(colaborador.Usuario, PK_Celula);
                    lbColaboradores.Items.Add(colaborador);
                    dgvColaboradores.Rows.Remove(row);
                    PreencherListaColaboradoresdaCelula();
                }
            }
        }

        private void btnRemoverColaborador_Click(object sender, EventArgs e)
        {
            List<Funcionario> colaboradores = new List<Funcionario>();
            colaboradores = lbColaboradores.SelectedItems.Cast<Funcionario>().ToList();
            foreach (Funcionario colaborador in colaboradores)
            {
                if (colaborador.Id > 0)
                {
                    if (TemSolicitacaoNumerario(colaborador.Usuario))
                    {
                        MessageBox.Show("Usuário " + colaborador.NomeCompleto + " possui solicitação(ões) de autorização de numerários em aberto, não será possível removê-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                    else
                    {
                        deleteColaboradorCelula(colaborador.Id);
                        lbColaboradores.Items.Remove(colaborador);
                        PreencherGridColaboradores();
                        //DataGridViewRow row = (DataGridViewRow)dgvColaboradores.Rows[0].Clone();
                        //row.SetValues(colaborador);
                        //row.Cells["Column2"].Value = "XYZ";
                        //row.Cells["Column6"].Value = 50.2;
                        //dgvColaboradores.Rows.Add(gerente);
                    }
                }
            }
        }

        private void txtLocalizar_TextChanged(object sender, EventArgs e)
        {
            dgvColaboradores.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            string searchValue = txtLocalizar.Text.ToLower();
            int rowIndex = -1;
            foreach (DataGridViewRow row in dgvColaboradores.Rows)
            {
                if (row.Cells["NomeCompleto"].Value != null)
                {
                    if (row.Cells["NomeCompleto"].Value.ToString().ToLower().Contains(searchValue))
                    {
                        rowIndex = row.Index;
                        dgvColaboradores.ClearSelection();
                        dgvColaboradores.FirstDisplayedScrollingRowIndex = rowIndex;
                        dgvColaboradores.Rows[rowIndex].Selected = true;
                        break;
                    }
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
