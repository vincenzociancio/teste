using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class SiscomexUFDAL : BancoDados
    {
        internal DataTable Listar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao ");
            strSql.Append("FROM TAB_UF ");
            strSql.Append("ORDER BY Descricao");

            try
            {
                AbrirConexao();

                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
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
