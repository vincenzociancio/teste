using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class MenuDAL : BancoDados
    {
        internal string BuscarWebForm(string webform)
        {
            string codigo = string.Empty;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo ");
            strSql.Append("FROM Menus ");
            strSql.Append("WHERE Habilitado = 1 and Web_Form = @WebForm ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@WebForm", webform);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        while (objDr.Read())
                        {
                            codigo = (string)objDr["Codigo"];    
                        }
                        
                    }
                }
                return codigo;
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
