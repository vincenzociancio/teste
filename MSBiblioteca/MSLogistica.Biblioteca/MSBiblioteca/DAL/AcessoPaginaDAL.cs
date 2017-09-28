using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class AcessoPaginaDAL : BancoDados
    {
        internal bool Incluir(AcessoPaginaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO AcessoPaginas (titulo, pagina, ativa ) ");
            strSql.Append("VALUES ( @titulo, @pagina, @ativa ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@titulo", obj.Titulo);
                    objCommand.Parameters.AddWithValue("@pagina", obj.Pagina.ToLower());
                    objCommand.Parameters.AddWithValue("@ativa", obj.Ativa);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Existe(AcessoPaginaDTO obj, out int PaginaId)
        {
            bool GoOn = false;
            PaginaId = 0;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 PK_AcessoPaginas, pagina ");
            strSql.Append("FROM AcessoPaginas ");
            strSql.Append("WHERE pagina = @pagina ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@pagina", obj.Pagina.ToLower());
                    SqlDataReader dr = objCommand.ExecuteReader();
                    if(dr.HasRows)
                    {
                        while (dr.Read())
	                    {
	                        PaginaId = (int)dr["PK_AcessoPaginas"];
                            GoOn = true;
	                    }
                    }
                    return GoOn;
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

        internal int BuscarID(string paginaNome)
        {
            int PaginaId = 0;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 PK_AcessoPaginas ");
            strSql.Append("FROM AcessoPaginas ");
            strSql.Append("WHERE pagina = @pagina ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@pagina", paginaNome.ToLower());
                    SqlDataReader dr = objCommand.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            PaginaId = (int)dr["PK_AcessoPaginas"];
                            
                        }
                    }
                    return PaginaId;
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
