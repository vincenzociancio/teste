using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class AcessoAcaoEspecificaGrupoDAL:BancoDados
    {
        internal List<AcessoAcaoEspecificaGrupoDTO> BuscarAcaoEspecificaGrupoFK(int fkGrupo)
        {
            var listaAcaoGrupo = new List<AcessoAcaoEspecificaGrupoDTO>();

            var strSql = new StringBuilder();
            strSql.Append("SELECT EG.*, E.Descricao ");
            strSql.Append("FROM AcessoAcaoEspecificaGrupo EG ");
            strSql.Append("INNER JOIN AcessoAcaoEspecifica E ON EG.FK_AcaoEspecifica = E.PK_AcaoEspecifica ");
            strSql.Append("WHERE FK_Grupo = @FK_Grupo ");
            strSql.Append("ORDER BY E.Descricao");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Grupo", fkGrupo);                    
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    while (objDr.Read())
                    {
                        var acaoGrupo = new AcessoAcaoEspecificaGrupoDTO();
                        acaoGrupo.PK_AcaoEspecificaGrupo = (int)objDr["PK_AcaoEspecificaGrupo"];
                        acaoGrupo.FK_AcaoEspecifica = (int)objDr["FK_AcaoEspecifica"];
                        acaoGrupo.FK_Grupo = (int)objDr["FK_Grupo"];
                        acaoGrupo.Acessa = (bool)objDr["Acessa"];
                        acaoGrupo.AcaoEspecifica.Descricao = (string)objDr["Descricao"];
                        listaAcaoGrupo.Add(acaoGrupo);
                    }
                    return listaAcaoGrupo;
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

        internal AcessoAcaoEspecificaGrupoDTO BuscarAcaoEspecificaGrupoFK(int fkGrupo, int fkAcaoEspecifica)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT EG.*, E.Descricao ");
            strSql.Append("FROM AcessoAcaoEspecificaGrupo EG ");
            strSql.Append("INNER JOIN AcessoAcaoEspecifica E ON EG.FK_AcaoEspecifica = E.PK_AcaoEspecifica ");
            strSql.Append("WHERE FK_AcaoEspecifica = @FK_AcaoEspecifica AND FK_Grupo = @FK_Grupo ");
            strSql.Append("ORDER BY E.Descricao");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Grupo", fkGrupo);
                    objCommand.Parameters.AddWithValue("@FK_AcaoEspecifica", fkAcaoEspecifica);
                    var objDr = objCommand.ExecuteReader();
                    AcessoAcaoEspecificaGrupoDTO acaoGrupo = null;
                    while (objDr.Read())
                    {
                        acaoGrupo = new AcessoAcaoEspecificaGrupoDTO();
                        acaoGrupo.PK_AcaoEspecificaGrupo = (int)objDr["PK_AcaoEspecificaGrupo"];
                        acaoGrupo.FK_AcaoEspecifica = (int)objDr["FK_AcaoEspecifica"];
                        acaoGrupo.FK_Grupo = (int)objDr["FK_Grupo"];
                        acaoGrupo.Acessa = (bool)objDr["Acessa"];
                        acaoGrupo.AcaoEspecifica.Descricao = (string)objDr["Descricao"];
                    }
                    return acaoGrupo;
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

        internal bool Alterar(AcessoAcaoEspecificaGrupoDTO obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("UPDATE AcessoAcaoEspecificaGrupo ");
            strSql.Append("SET ");
            strSql.Append("Acessa = @Acessa ");     
            strSql.Append("WHERE PK_AcaoEspecificaGrupo = @PK_AcaoEspecificaGrupo ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Acessa", obj.Acessa);             
                    objCommand.Parameters.AddWithValue("@PK_AcaoEspecificaGrupo", obj.PK_AcaoEspecificaGrupo);
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
