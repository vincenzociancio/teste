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
    public partial class FrmUsuarioCheck : MS2000.Desktop.Componentes.MSForm01
    {
        public int PK_Usuario { get; set; }
        public string usuario { get; set; }
        class UsuarioClientesCheck
        {
            public int ID { get; set; }
            public string RazaoSocial { get; set; }
            public string CodigoCliente { get; set; }
        }

        private List<UsuarioClientesCheck> _UsuarioClientes;
        private List<UsuarioClientesCheck> _UsuarioNotClientes;
        public FrmUsuarioCheck()
        {
            InitializeComponent();
            _UsuarioClientes = new List<UsuarioClientesCheck>();
            _UsuarioNotClientes = new List<UsuarioClientesCheck>();
        }
        private void SetButtonsEditable()
        {
            btnSelect.Enabled = (lstUnselected.SelectedItems.Count > 0);
            btnSelectAll.Enabled = (lstUnselected.Items.Count > 0);
            btnDeselect.Enabled = (lstSelected.SelectedItems.Count > 0);
            btnDeselectAll.Enabled = (lstSelected.Items.Count > 0);
        }

        private void FrmUsuarioCheck_Load(object sender, EventArgs e)
        {
            _UsuarioNotClientes = getNotUsuarioClientesByUsuario(usuario);
            lstUnselected.Items.AddRange(_UsuarioNotClientes.ToArray());
            lstUnselected.DisplayMember = "RazaoSocial";


            _UsuarioClientes = getUsuarioClientesByUsuario(usuario);
            lstSelected.Items.AddRange(_UsuarioClientes.ToArray());
            lstSelected.DisplayMember = "RazaoSocial";


            SetButtonsEditable();
        }

        private List<UsuarioClientesCheck> getUsuarioClientesByUsuario(string usuarios)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select i.Codigo, RIGHT(REPLICATE('0', 4)+ CAST(I.Codigo AS varchar(4)), 4) +'  |  '+i.Razao_Social as 'Full',f.PK_ID " +
                           "from FollowUp_Check_Clientes f "+
                           "inner join Importadores i on (i.Codigo = f.fk_importador) "+
                           "where fk_usuario=@usuario "+
                           "order by Razao_Social";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuarios);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioClientesCheck> lista = new List<UsuarioClientesCheck>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioClientesCheck
                            {
                                ID = Convert.ToInt32(reader["PK_ID"].ToString()),
                                CodigoCliente = reader["Codigo"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private List<UsuarioClientesCheck> getNotUsuarioClientesByUsuario(string usuarios)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo as 'Codigo', RIGHT(REPLICATE('0', 4)+ CAST(I.Codigo AS varchar(4)), 4) +'  |  '+i.Razao_Social as 'Full' "+
                           "from importadores i "+
                           "where "+
                           "Not Exists(select * from FollowUp_Check_Clientes f where f.fk_importador = i.Codigo and f.fk_usuario=@usuario) "+
                           "And Ativo = 1 " +
                           "order by Razao_Social ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuarios);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioClientesCheck> lista = new List<UsuarioClientesCheck>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioClientesCheck
                            {
                                CodigoCliente = reader["Codigo"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            MoveSelectedItems(lstUnselected, lstSelected);
        }

        private void btnSelectAll_Click(object sender, EventArgs e)
        {
            MoveAllItems(lstUnselected, lstSelected);
        }

        private void btnDeselect_Click(object sender, EventArgs e)
        {
            MoveSelectedItems(lstSelected, lstUnselected);
        }

        private void btnDeselectAll_Click(object sender, EventArgs e)
        {
            MoveAllItems(lstSelected, lstUnselected);
        }

        private void MoveAllItems(ListBox lstFrom, ListBox lstTo)
        {          
            btnFechar.Enabled = false;           
            Application.DoEvents();        
            foreach (UsuarioClientesCheck item in lstFrom.Items)
            {
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                    item.ID = 0;
                    lstTo.Items.Add(item);
                }
                else
                {
                    item.ID = insertUsuarioClientes(usuario, item.CodigoCliente);
                    lstTo.Items.Add(item);
                }                
            }            
            lstFrom.Items.Clear();
            SetButtonsEditable();         
            btnFechar.Enabled = true;
            
        }
        private void MoveSelectedItems(ListBox lstFrom, ListBox lstTo)
        {
            btnFechar.Enabled = false;         
            Application.DoEvents();              

            while (lstFrom.SelectedItems.Count > 0)
            {
                UsuarioClientesCheck item = (UsuarioClientesCheck)lstFrom.SelectedItems[0];
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                }
                else
                {
                    item.ID = insertUsuarioClientes(usuario, item.CodigoCliente);
                }
                lstTo.Items.Add(item);
                lstFrom.Items.Remove(item);               
            }
            SetButtonsEditable();         
            btnFechar.Enabled = true;
           
        }

        private void lstUnselected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

        private void lstSelected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

        private void deleteUsuarioClientes(int id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "delete from FollowUp_Check_Clientes where PK_ID = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
            }
        }

        private int insertUsuarioClientes(string pk_usuario, string pk_importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into FollowUp_Check_Clientes(FK_Importador,FK_Usuario)values(@FK_Importador, @FK_Usuario); SELECT SCOPE_IDENTITY()";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Importador", pk_importador);
                cmd.Parameters.AddWithValue("@FK_Usuario", pk_usuario);
                int newID = Convert.ToInt32(cmd.ExecuteScalar());
                return newID;
            }
        }

        private void btnTipoProcesso_Click(object sender, EventArgs e)
        {
            FrmUsuarioCheckTipoProcesso frmUsuarioCheckTipoProcesso = new FrmUsuarioCheckTipoProcesso();
            frmUsuarioCheckTipoProcesso.usuario = usuario;
            FrmPrincipal.ShowModalMdiChildren(frmUsuarioCheckTipoProcesso);
        }

    }
}
