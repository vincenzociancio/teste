using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class AcessoPaginaGrupoDAL : BancoDados
    {
        internal List<AcessoPaginaGrupoDTO> BuscarPaginaGrupoFK(int FK_AcessoGrupo)
        {
            AcessoPaginaGrupoDTO PaginaGrupo = null;
            List<AcessoPaginaGrupoDTO> ListaPaginaGrupo = new List<AcessoPaginaGrupoDTO>();

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PG.*, P.Titulo ");
            strSql.Append("FROM AcessoPaginaGrupo PG ");
            strSql.Append("INNER JOIN AcessoPaginas P ON PG.FK_AcessoPaginas = P.PK_AcessoPaginas ");
            strSql.Append("WHERE FK_AcessoGrupo = @FK_AcessoGrupo ");
            strSql.Append("ORDER BY P.Titulo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_AcessoGrupo", FK_AcessoGrupo);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    while (objDr.Read())
                    {
                        PaginaGrupo = new AcessoPaginaGrupoDTO();
                        PaginaGrupo.PK_PaginaGrupo = (int)objDr["PK_PaginaGrupo"];
                        PaginaGrupo.FK_AcessoPaginas = (int)objDr["FK_AcessoPaginas"];
                        PaginaGrupo.FK_AcessoGrupo = (int)objDr["FK_AcessoGrupo"];
                        PaginaGrupo.C = (bool)objDr["C"];
                        PaginaGrupo.R = (bool)objDr["R"];
                        PaginaGrupo.U = (bool)objDr["U"];
                        PaginaGrupo.D = (bool)objDr["D"];
                        PaginaGrupo.Paginas.Titulo = (string)objDr["Titulo"];

                        ListaPaginaGrupo.Add(PaginaGrupo);
                    }
                    return ListaPaginaGrupo;
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

        internal AcessoPaginaGrupoDTO BuscarPaginaGrupoFK(int FK_AcessoGrupo, int FK_AcessoPagina)
        {
            AcessoPaginaGrupoDTO PaginaGrupo = null;
            
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PG.*, P.Titulo ");
            strSql.Append("FROM AcessoPaginaGrupo PG ");
            strSql.Append("INNER JOIN AcessoPaginas P ON PG.FK_AcessoPaginas = P.PK_AcessoPaginas ");
            strSql.Append("WHERE FK_AcessoGrupo = @FK_AcessoGrupo AND FK_AcessoPaginas = @FK_AcessoPaginas ");
            strSql.Append("ORDER BY P.Titulo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_AcessoGrupo", FK_AcessoGrupo);
                    objCommand.Parameters.AddWithValue("@FK_AcessoPaginas", FK_AcessoPagina);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    while (objDr.Read())
                    {
                        PaginaGrupo = new AcessoPaginaGrupoDTO();
                        PaginaGrupo.PK_PaginaGrupo = (int)objDr["PK_PaginaGrupo"];
                        PaginaGrupo.FK_AcessoPaginas = (int)objDr["FK_AcessoPaginas"];
                        PaginaGrupo.FK_AcessoGrupo = (int)objDr["FK_AcessoGrupo"];
                        PaginaGrupo.C = (bool)objDr["C"];
                        PaginaGrupo.R = (bool)objDr["R"];
                        PaginaGrupo.U = (bool)objDr["U"];
                        PaginaGrupo.D = (bool)objDr["D"];
                        PaginaGrupo.Paginas.Titulo = (string)objDr["Titulo"];                        
                    }
                    return PaginaGrupo;
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

        internal bool Alterar(AcessoPaginaGrupoDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE AcessoPaginaGrupo ");
            strSql.Append("SET ");
            strSql.Append("C = @C,");
            strSql.Append("R = @R,");
            strSql.Append("U = @U,");
            strSql.Append("D = @D ");
            strSql.Append("WHERE PK_PaginaGrupo = @PK_PaginaGrupo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@C", obj.C);
                    objCommand.Parameters.AddWithValue("@R", obj.R);
                    objCommand.Parameters.AddWithValue("@U", obj.U);
                    objCommand.Parameters.AddWithValue("@D", obj.D);
                    objCommand.Parameters.AddWithValue("@PK_PaginaGrupo", obj.PK_PaginaGrupo);
                    objCommand.ExecuteNonQuery();
                }

                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
