using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.RH
{
    public partial class FrmControleHierarquico : MS2000.Desktop.Componentes.MSForm01
    {
        public FrmControleHierarquico()
        {
            InitializeComponent();
            dgvColaboradores.AutoGenerateColumns = false;
        }

        private void FrmControleHierarquico_Load(object sender, EventArgs e)
        {
            getAllGestores();

            bindingSource.DataSource = getAllColaboradores();
            dgvColaboradores.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;
        }

        private void getAllGestores()
        {
            lbGerente.Items.AddRange(getGestores(0).ToArray());
            lbGerente.DisplayMember = "NomeCompleto";

            lbCoordenador.Items.AddRange(getGestores(1).ToArray());
            lbCoordenador.DisplayMember = "NomeCompleto";

            lbSupervisor.Items.AddRange(getGestores(2).ToArray());
            lbSupervisor.DisplayMember = "NomeCompleto";
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
            string query = "SELECT PK_USUARIO, lower(Usuario)as Usuario, Nome_Completo " +
                    "FROM Usuarios WHERE (Ativo = 1 or Ferias = 1) and Setor <> '' ORDER BY Nome_Completo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Id = (int)reader["PK_USUARIO"],
                            Usuario = reader["Usuario"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private List<Funcionario> getGestores(int nivel)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CHC.PK_ID, CHC.colaborador, U.Nome_Completo  " +
                        "FROM Controle_Hierarquico_Colaborador CHC " +
                        "INNER JOIN Usuarios U on CHC.Colaborador = U.Usuario " +
                        "WHERE ((U.Ativo = 1) OR (U.Ferias = 1)) AND CHC.Nivel = @nivel " +
                        "ORDER BY CHC.colaborador";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@nivel", nivel);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Funcionario> lista = new List<Funcionario>();
                    while (reader.Read())
                    {
                        lista.Add(new Funcionario
                        {
                            Id = (int)reader["PK_ID"],
                            Usuario = reader["colaborador"].ToString(),
                            NomeCompleto = reader["Nome_Completo"].ToString()
                        });
                    }
                    return lista;
                }
            }
        }

        private bool NotRelated(string usuario, int nivel)
        {
            bool GoOn = true;
            string query = string.Empty;

            if (nivel == 0)
            {
                query = "select fk_gerente from Controle_Hierarquico_Celulas where fk_gerente=@usuario and excluido = 0";
            }
            else
                if (nivel == 1)
                {
                    query = "select fk_coordenador from Controle_Hierarquico_Celulas where fk_coordenador=@usuario and excluido = 0";
                }
                else
                    if (nivel == 2)
                    {
                        query = "select fk_supervisor from Controle_Hierarquico_Celulas where fk_supervisor=@usuario and excluido = 0";
                    }
            //else
            //if ( Hierarquia = 'COLABORADOR' ) then
            //  qryRelacao.SQL.Text := format('select fk_supervisor from Controle_Hierarquico_Celulas where FK_Colaborador_Independente=%s and excluido = 0', [quotedstr(Usuario)]);

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        GoOn = false;
                    }
                }
            }
            return GoOn;
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

        private void deleteControle_Hierarquico_Colaborador(int id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "delete from Controle_Hierarquico_Colaborador where PK_ID = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
            }
        }

        private void addControle_Hierarquico_Colaborador(string colaborador, string hierarquia, int nivel)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into Controle_Hierarquico_Colaborador (Colaborador, Hierarquia, Nivel)values(@Colaborador, @Hierarquia, @Nivel)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Colaborador", colaborador);
                cmd.Parameters.AddWithValue("@Hierarquia", hierarquia);
                cmd.Parameters.AddWithValue("@Nivel", nivel);
                cmd.ExecuteNonQuery();
            }
        }

        //void addDataGrid()
        //{
        //    //DataGridViewRow row = (DataGridViewRow)dgvColaboradores.Rows[0].Clone();
        //    //row.Cells["Column2"].Value = "XYZ";
        //    //row.Cells["Column6"].Value = 50.2;
        //    //dgvColaboradores.Rows.Add(gerente);            
        //}

        private void btnRemoveGerente_Click(object sender, EventArgs e)
        {
            List<Funcionario> gerentes = new List<Funcionario>();
            gerentes = lbGerente.SelectedItems.Cast<Funcionario>().ToList();
            foreach (Funcionario gerente in gerentes)
            {
                if (gerente.Id > 0)
                {
                    if (NotRelated(gerente.Usuario, 0))
                    {
                        if (TemSolicitacaoNumerario(gerente.Usuario))
                        {
                            MessageBox.Show("Usuário " + gerente.NomeCompleto + " possui solicitação(ões) de autorização de numerários em aberto, não será possível removê-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        }
                        else
                        {
                            deleteControle_Hierarquico_Colaborador(gerente.Id);
                            lbGerente.Items.Remove(gerente);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Não foi possível remover o registro: " + gerente.NomeCompleto + ", pois ele está vinculado a uma célula.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }
        }

        private void btnRemoveCoordenador_Click(object sender, EventArgs e)
        {
            List<Funcionario> coordenadores = new List<Funcionario>();
            coordenadores = lbCoordenador.SelectedItems.Cast<Funcionario>().ToList();
            foreach (Funcionario coordenador in coordenadores)
            {
                if (coordenador.Id > 0)
                {
                    if (NotRelated(coordenador.Usuario, 1))
                    {
                        if (TemSolicitacaoNumerario(coordenador.Usuario))
                        {
                            MessageBox.Show("Usuário " + coordenador.NomeCompleto + " possui solicitação(ões) de autorização de numerários em aberto, não será possível removê-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        }
                        else
                        {
                            deleteControle_Hierarquico_Colaborador(coordenador.Id);
                            lbCoordenador.Items.Remove(coordenador);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Não foi possível remover o registro: " + coordenador.NomeCompleto + ", pois ele está vinculado a uma célula.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }
        }

        private void btnRemoverSupervisor_Click(object sender, EventArgs e)
        {
            List<Funcionario> supervisores = new List<Funcionario>();
            supervisores = lbSupervisor.SelectedItems.Cast<Funcionario>().ToList();
            foreach (Funcionario supervisor in supervisores)
            {
                if (supervisor.Id > 0)
                {
                    if (NotRelated(supervisor.Usuario, 2))
                    {
                        if (TemSolicitacaoNumerario(supervisor.Usuario))
                        {
                            MessageBox.Show("Usuário " + supervisor.NomeCompleto + " possui solicitação(ões) de autorização de numerários em aberto, não será possível removê-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                        }
                        else
                        {
                            deleteControle_Hierarquico_Colaborador(supervisor.Id);
                            lbSupervisor.Items.Remove(supervisor);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Não foi possível remover o registro: " + supervisor.NomeCompleto + ", pois ele está vinculado a uma célula.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }
        }

        private void btnAddGerente_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dgvColaboradores.SelectedRows)
            {
                Funcionario gerente = row.DataBoundItem as Funcionario;
                if (gerente.Id > 0)
                {
                    try
                    {
                        addControle_Hierarquico_Colaborador(gerente.Usuario, "GERENTE", 0);
                        lbGerente.Items.Add(gerente);
                    }
                    catch
                    {
                        MessageBox.Show(gerente.NomeCompleto + " já consta na relação de GERENTE.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }

        private void btnAddCoordenador_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dgvColaboradores.SelectedRows)
            {
                Funcionario coordenador = row.DataBoundItem as Funcionario;
                if (coordenador.Id > 0)
                {
                    try
                    {
                        addControle_Hierarquico_Colaborador(coordenador.Usuario, "COORDENADOR", 1);
                        lbCoordenador.Items.Add(coordenador);
                    }
                    catch
                    {
                        MessageBox.Show(coordenador.NomeCompleto + " já consta na relação de COORDENADOR.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }

        private void btnAddSupervisor_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dgvColaboradores.SelectedRows)
            {
                Funcionario supervisor = row.DataBoundItem as Funcionario;
                if (supervisor.Id > 0)
                {
                    try
                    {
                        addControle_Hierarquico_Colaborador(supervisor.Usuario, "SUPERVISOR", 2);
                        lbSupervisor.Items.Add(supervisor);
                    }
                    catch
                    {
                        MessageBox.Show(supervisor.NomeCompleto + " já consta na relação de SUPERVISOR.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
