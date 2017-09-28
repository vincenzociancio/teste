using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class UsuariosClientes
    {
        public UsuariosClientes()
        {

        }

        public UsuariosClientes(SqlDataReader reader)
        {
            ID = (int) reader["ID"];
            FK_Usuario = (int) reader["FK_Usuario"];
            FK_Importador = reader["Importador"].ToString();
        }

        public int ID { get; set; }
        public int FK_Usuario { get; set; }
        public string FK_Importador { get; set; }

        //public static bool VerificaPermissaoCliente(int codimportador)
        //{
        //    try
        //    {
        //        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        //        string query = "SELECT UsuariosClientes.Usuario, UsuariosClientes.Importador " +
        //                       "FROM UsuariosClientes " +
        //                       "WHERE (((UsuariosClientes.Usuario) = '" + FrmPrincipal.UsuarioLogado +"' AND UsuariosClientes.Importador = @Importador)) ";
        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            cmd.Parameters.AddWithValue("@Importador", codimportador);
        //            using (SqlDataReader reader = cmd.ExecuteReader())
        //            {
        //                if (reader.HasRows)
        //                    return true;
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //    }

        //    return false;
        //}
    

    public List<UsuariosClientes> BuscarLista(int pk_usuario)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT ID, FK_Usuario, Importador ");
            strSql.Append("FROM UsuariosClientes WHERE FK_Usuario = @FK_Usuario");            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;                
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Usuario", pk_usuario);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        List<UsuariosClientes> listaClientes = new List<UsuariosClientes>();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                listaClientes.Add(new UsuariosClientes(dr));
                            }
                        }
                        return listaClientes;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

    public bool buscaImportadores(string importador)
    {
        string SQL = "SELECT IMPORTADOR FROM USUARIOSCLIENTES WHERE IMPORTADOR = @importador";

        try
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (var cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@importador", importador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        return true;
                    }
                }
            }

        }
        catch (SqlException sqlex)
        {

        }

        return false;
    }
    }
}
