using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class TiposAcrescimosFaturaDAL : BancoDados
    {
        internal DataTable BuscarTiposAcrescimosFatura(string Incoterm)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT T.Codigo, T.Descricao FROM Tipos_Acrescimos_Faturas AS T ");
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
        internal DataTable BuscarTiposAcrescimosProcessoEFatura(string Processo, string Fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM Acrescimos_Faturas ");
            strSql.Append("WHERE Processo = @Pprocesso AND Fatura = @Fatura");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", Fatura);
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
        internal DataTable Soma_Vl_Acrescimo_Moeda_Igual_ValTot(string Processo, string Fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Sum(VL_ACRESCIMO_MOEDA) AS ValTot  FROM Acrescimos_Faturas ");
            strSql.Append("GROUP BY Processo, Fatura HAVING Processo = @Processo AND Fatura = @Fatura ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", Fatura);
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
