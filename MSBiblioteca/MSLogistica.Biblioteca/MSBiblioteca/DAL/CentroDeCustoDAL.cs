using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class CentroDeCustoDAL : BancoDados
    {
        internal List<CentroDeCusto> BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT codigo, UPPER(descricao)as descricao ");
            strSql.Append("FROM Centros_Custos ");
            strSql.Append("ORDER BY descricao");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<CentroDeCusto> ccusto = new List<CentroDeCusto>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                ccusto.Add(new CentroDeCusto
                                {
                                    Codigo = objDr["Codigo"].ToString(),
                                    Descricao = objDr["descricao"].ToString()                                    
                                });
                            }
                        }
                        return ccusto;
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
