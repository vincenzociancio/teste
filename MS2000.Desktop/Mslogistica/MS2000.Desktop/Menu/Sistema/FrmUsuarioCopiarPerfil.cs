using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmUsuarioCopiarPerfil : MS2000.Desktop.Componentes.MSForm01
    {
        public int Pk_Usuario { get; set; }
        public string Usuario { get; set; }
        public string Nome_Completo { get; set; }
        public FrmUsuarioCopiarPerfil()
        {
            InitializeComponent();
        }


        private void getUsuario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = query = "select usuario,Nome_Completo from usuarios where usuario <> @Usuario order by Nome_Completo";

            DataTable table;

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Usuario", Usuario);    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                cbbCopia.DataSource = table;
                cbbCopia.DisplayMember = "Nome_Completo";
                cbbCopia.ValueMember = "usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCopiar_Click(object sender, EventArgs e)
        {
           if (string.IsNullOrEmpty(cbbCopia.Text))
            {
                MessageBox.Show("Campo perfil não pode ser vazio!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbCopia.Focus();
                return;
            }

           if (ckbMenu.Checked)
           {
               SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
               string query = "delete from UsuariosMenus where Usuario =@Usuario";
               using (SqlCommand cmd = new SqlCommand(query, conn))
               {
                   cmd.Parameters.AddWithValue("@Usuario", Usuario);                
                   cmd.ExecuteNonQuery();
               }

               string query1 = "insert into UsuariosMenus(FK_Usuario, Usuario, Menu, ACESSA) " +
                               "Select @FKUsuarioMenu, @UsuarioDest, Menu, ACESSA from UsuariosMenus where Usuario =@UsuarioCopia ";
               using (SqlCommand cmd = new SqlCommand(query1, conn))
               {
                   cmd.Parameters.AddWithValue("@FKUsuarioMenu", Pk_Usuario);
                   cmd.Parameters.AddWithValue("@UsuarioDest", Usuario);
                   cmd.Parameters.AddWithValue("@UsuarioCopia", cbbCopia.SelectedValue.ToString());
                   cmd.ExecuteNonQuery();
               }
           }

           if (ckbAcesso.Checked)
           {
               SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
               string query = "delete from UsuariosClientes where Usuario =@Usuario";
               using (SqlCommand cmd = new SqlCommand(query, conn))
               {
                   cmd.Parameters.AddWithValue("@Usuario", Usuario);                     
                   cmd.ExecuteNonQuery();
               }


               string query1 = "insert into UsuariosClientes(FK_Usuario, Usuario, importador) " +
                             "Select @FKUsuarioCliente, @UsuarioDest, importador from UsuariosClientes where Usuario =@UsuarioCopia  ";
               using (SqlCommand cmd = new SqlCommand(query1, conn))
               {
                   cmd.Parameters.AddWithValue("@FKUsuarioCliente", Pk_Usuario);
                   cmd.Parameters.AddWithValue("@UsuarioDest", Usuario);
                   cmd.Parameters.AddWithValue("@UsuarioCopia", cbbCopia.SelectedValue.ToString());
                   cmd.ExecuteNonQuery();
               }
           }
           cbbCopia.SelectedIndex = -1;
           MessageBox.Show("Perfil copiado com sucesso.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
           Pk_Usuario = 0;
           Close();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void FrmCopiarPerfil_Load(object sender, EventArgs e)
        {
            getUsuario();
            txtPara.Text = Nome_Completo;
        }
    }
}
