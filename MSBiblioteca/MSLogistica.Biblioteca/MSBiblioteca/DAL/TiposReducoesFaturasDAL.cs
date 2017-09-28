using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class TiposReducoesFaturasDAL :BancoDados
    {
        internal DataTable BuscarTiposReducaoFatura(string Incoterm)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT T.Codigo, T.Descricao  ");
            strSql.Append("FROM Tipos_Reducoes_Faturas  AS T");
            strSql.Append("WHERE T.Incoterm = @Incoterm ");
            strSql.Append("ORDER BY Cast(T.Codigo as real) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Incoterm", Incoterm);

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
