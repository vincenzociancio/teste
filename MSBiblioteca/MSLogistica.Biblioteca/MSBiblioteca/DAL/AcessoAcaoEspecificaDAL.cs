using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;


namespace MSBiblioteca.DAL
{
    internal class AcessoAcaoEspecificaDAL : BancoDados
    {
        internal bool Incluir(AcessoAcaoEspecificaDTO obj)
        {
            var strSql = new StringBuilder();
            strSql.Append("INSERT INTO AcessoAcaoEspecifica (Descricao, FK_AcessoPaginas, Chave_Busca ) ");
            strSql.Append("VALUES ( @Descricao, @FK_AcessoPaginas, @Chave_Busca ) ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao", obj.Descricao);
                    objCommand.Parameters.AddWithValue("@FK_AcessoPaginas", obj.FK_AcessoPaginas);
                    objCommand.Parameters.AddWithValue("@Chave_Busca", obj.Chave_Busca.ToLower());
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

        internal bool Existe(string chaveBusca, out int id)
        {
            bool goOn = false;
            id = 0;

            var strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 PK_AcaoEspecifica, Chave_Busca ");
            strSql.Append("FROM AcessoAcaoEspecifica ");
            strSql.Append("WHERE Chave_Busca = @Chave_Busca ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Chave_Busca", chaveBusca.ToLower());
                    var dr = objCommand.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            id = (int)dr["PK_AcaoEspecifica"];
                            goOn = true;
                        }
                    }
                    return goOn;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal int BuscarId(string chaveBusca)
        {
            int Id = 0;
            var strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 PK_AcaoEspecifica ");
            strSql.Append("FROM AcessoAcaoEspecifica ");
            strSql.Append("WHERE Chave_Busca = @Chave_Busca ");
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Chave_Busca", chaveBusca.ToLower());
                    var dr = objCommand.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Id = (int)dr["PK_AcaoEspecifica"];
                        }
                    }
                    return Id;
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
