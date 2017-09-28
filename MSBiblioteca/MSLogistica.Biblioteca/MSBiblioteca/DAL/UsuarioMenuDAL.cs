using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class UsuarioMenuDAL : BancoDados
    {
        internal DataTable BuscarFKUsuario(string usuario)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Usuario, Menu, Acessa, Editar, Excluir, Incluir ");
            strSql.Append("FROM UsuariosMenus ");
            strSql.Append("WHERE Usuario = @Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", usuario);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        using (DataTable objTable = new DataTable())
                        {
                            objTable.Load(objDr);
                            return objTable;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
