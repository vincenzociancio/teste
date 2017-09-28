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
    public partial class FrmUsuarioCheckTipoProcesso : MS2000.Desktop.Componentes.MSForm01
    {
        public string usuario { get; set; }
        class UsuarioTipoProcessoCheck
        {
            public int ID { get; set; }
            public string RazaoSocial { get; set; }
            public string CodigoTipoProcesso { get; set; }
        }

        private List<UsuarioTipoProcessoCheck> _UsuarioTipoProcesso;
        private List<UsuarioTipoProcessoCheck> _UsuarioNotTipoProcesso;
        public FrmUsuarioCheckTipoProcesso()
        {
            InitializeComponent();
            _UsuarioTipoProcesso = new List<UsuarioTipoProcessoCheck>();
            _UsuarioNotTipoProcesso = new List<UsuarioTipoProcessoCheck>();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void SetButtonsEditable()
        {
            btnSelect.Enabled = (lstUnselected.SelectedItems.Count > 0);
            btnSelectAll.Enabled = (lstUnselected.Items.Count > 0);
            btnDeselect.Enabled = (lstSelected.SelectedItems.Count > 0);
            btnDeselectAll.Enabled = (lstSelected.Items.Count > 0);
        }
        private void FrmUsuarioCheckTipoProcesso_Load(object sender, EventArgs e)
        {
            _UsuarioNotTipoProcesso = getNotUsuarioTipoProcessoByUsuario(usuario);
            lstUnselected.Items.AddRange(_UsuarioNotTipoProcesso.ToArray());
            lstUnselected.DisplayMember = "RazaoSocial";


            _UsuarioTipoProcesso = getUsuarioTipoProcessoByUsuario(usuario);
            lstSelected.Items.AddRange(_UsuarioTipoProcesso.ToArray());
            lstSelected.DisplayMember = "RazaoSocial";


            SetButtonsEditable();
        }

        private List<UsuarioTipoProcessoCheck> getUsuarioTipoProcessoByUsuario(string usuarios)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select T.Codigo,RIGHT(REPLICATE('0', 4)+ CAST(T.Codigo AS varchar(4)), 4) +'  |  '+T.DESCRICAO as 'Full',f.PK_ID "+
                           "from FollowUp_Check_Tipo_Processo f "+
                           "inner join Tipos_de_Processos T on (T.Codigo = f.FK_Tipo_Processo) "+
                           "where f.fk_usuario=@usuario " +
                           "order by DESCRICAO";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuarios);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioTipoProcessoCheck> lista = new List<UsuarioTipoProcessoCheck>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioTipoProcessoCheck
                            {
                                ID = Convert.ToInt32(reader["PK_ID"].ToString()),
                                CodigoTipoProcesso = reader["Codigo"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private List<UsuarioTipoProcessoCheck> getNotUsuarioTipoProcessoByUsuario(string usuarios)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo as 'Codigo', RIGHT(REPLICATE('0', 4)+ CAST(T.Codigo AS varchar(4)), 4) +'  |  '+T.DESCRICAO as 'Full' "+
                            "from Tipos_de_Processos T "+
                            "where "+
                            "Not Exists(select * from FollowUp_Check_Tipo_Processo f where f.FK_Tipo_Processo = T.Codigo and f.fk_usuario=@usuario) "+
                            "And Ativo = 1 "+
                            "order by DESCRICAO ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@usuario", usuarios);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioTipoProcessoCheck> lista = new List<UsuarioTipoProcessoCheck>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioTipoProcessoCheck
                            {
                                CodigoTipoProcesso = reader["Codigo"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
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
            foreach (UsuarioTipoProcessoCheck item in lstFrom.Items)
            {
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                    item.ID = 0;
                    lstTo.Items.Add(item);
                }
                else
                {
                    item.ID = insertUsuarioClientes(usuario, item.CodigoTipoProcesso);
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
                UsuarioTipoProcessoCheck item = (UsuarioTipoProcessoCheck)lstFrom.SelectedItems[0];
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                }
                else
                {
                    item.ID = insertUsuarioClientes(usuario, item.CodigoTipoProcesso);
                }
                lstTo.Items.Add(item);
                lstFrom.Items.Remove(item);
            }
            SetButtonsEditable();
            btnFechar.Enabled = true;

        }
        private void deleteUsuarioClientes(int id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "delete from FollowUp_Check_Tipo_Processo where PK_ID = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
            }
        }

        private int insertUsuarioClientes(string pk_usuario, string pk_tipo_processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into FollowUp_Check_Tipo_Processo(FK_Tipo_Processo,FK_Usuario)values(@FK_Tipo_Processo, @FK_Usuario); SELECT SCOPE_IDENTITY()";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Tipo_Processo", pk_tipo_processo);
                cmd.Parameters.AddWithValue("@FK_Usuario", pk_usuario);
                int newID = Convert.ToInt32(cmd.ExecuteScalar());
                return newID;
            }
        }

        private void lstUnselected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

        private void lstSelected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

    }
}
