using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class AcessoGrupoDAL : BancoDados
    {
        internal int Incluir(AcessoGrupoDTO obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("INSERT INTO AcessoGrupos (Descricao) ");
            strSql.Append("VALUES (@Descricao); SELECT CAST(SCOPE_IDENTITY() AS int)");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao", obj.Descricao);
                    return (int)objCommand.ExecuteScalar();                     
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

        internal bool Alterar(AcessoGrupoDTO obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("UPDATE AcessoGrupos ");
            strSql.Append("SET Descricao = @Descricao ");
            strSql.Append("WHERE PK_AcessoGrupo = @PK_AcessoGrupo ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@PK_AcessoGrupo", obj.PK_AcessoGrupo);
                    objCommand.Parameters.AddWithValue("@Descricao", obj.Descricao);
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

        internal bool Excluir(AcessoGrupoDTO obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("Delete From AcessoGrupos ");
            strSql.Append("WHERE PK_AcessoGrupo = @PK_AcessoGrupo ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@PK_AcessoGrupo", obj.PK_AcessoGrupo);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<AcessoGrupoDTO> BuscarTodos()
        {
            var grupos = new List<AcessoGrupoDTO>();
            var strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM AcessoGrupos ");
            strSql.Append("ORDER BY Descricao");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    var objDr = objCommand.ExecuteReader();                   

                    while (objDr.Read())
                    {                         
                        grupos.Add(new AcessoGrupoDTO((int)objDr["PK_AcessoGrupo"], objDr["Descricao"].ToString()));
                    }
                    return grupos;
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


        internal AcessoGrupoDTO BuscarGrupoId(AcessoGrupoDTO obj)
        {
            var grupo = new AcessoGrupoDTO();
            var strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM AcessoGrupos ");
            strSql.Append("WHERE PK_AcessoGrupo = @PK_AcessoGrupo ");            
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {                    
                    objCommand.Parameters.AddWithValue("@PK_AcessoGrupo", obj.PK_AcessoGrupo);
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    while (objDr.Read())
                    {
                        grupo.PK_AcessoGrupo = (int)objDr["PK_AcessoGrupo"];
                        grupo.Descricao = objDr["Descricao"].ToString();
                    }
                    return grupo;
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

        internal List<AcessoGrupoDTO> BuscarNaoVinculadoGrupoUsuario(string usuario)
        {
            var grupos = new List<AcessoGrupoDTO>();
            var strSql = new StringBuilder();
            strSql.Append("SELECT G.* ");
            strSql.Append("FROM AcessoGrupos G ");
            strSql.Append("WHERE NOT EXISTS ");
            strSql.Append(" (SELECT * FROM AcessoGrupoUsuario GU ");
            strSql.Append("  WHERE G.PK_AcessoGrupo = GU.FK_AcessoGrupo AND GU.FK_Usuario = @FK_Usuario) ");            
            strSql.Append("ORDER BY Descricao");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Usuario", usuario);
                    var objDr = objCommand.ExecuteReader();
                    while (objDr.Read())
                    {
                        grupos.Add(new AcessoGrupoDTO((int)objDr["PK_AcessoGrupo"], objDr["Descricao"].ToString()));
                    }
                    return grupos;
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
