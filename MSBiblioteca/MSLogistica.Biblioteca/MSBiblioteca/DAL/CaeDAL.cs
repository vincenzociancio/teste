using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.BLL;
using System.Collections.Generic;

namespace MSBiblioteca.DAL
{
    internal class CaeDAL : BancoDados
    {
        internal List<Cae> Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 codigo, descricao, descricao_ing ");
            strSql.Append("FROM CAE ");
            strSql.Append("WHERE Lixo = 0 ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Cae> cae = new List<Cae>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                cae.Add(new Cae
                                {
                                    PKCodigo = objDr["codigo"].ToString(),
                                    Descricao = objDr["descricao"].ToString(),
                                    DescricaoING = objDr["descricao_ing"].ToString()
                                });
                            }
                        }
                        return cae;
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

        internal Cae BuscarCodigo(string codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT codigo, descricao, descricao_ing ");
            strSql.Append("FROM CAE ");
            strSql.Append("WHERE Codigo = @Codigo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Lixo = 0 ");
            }
            else
            {
                strSql.Append("AND Lixo = 1 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Cae cae = new Cae();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                cae.PKCodigo = objDr["codigo"].ToString();
                                cae.Descricao = objDr["descricao"].ToString();
                                cae.DescricaoING = objDr["descricao_ing"].ToString();
                            }
                        }
                        return cae;
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

        internal List<Cae> BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true, bool IdiomaPT = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 20 codigo, descricao, descricao_ing ");
            strSql.Append("FROM CAE ");
            if (IdiomaPT)
            {
                strSql.Append("WHERE descricao like @descricao ");
            }
            else
            {
                strSql.Append("WHERE descricao_ing like @descricao ");
            }

            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Lixo = 0 ");
            }
            else
            {
                strSql.Append("AND Lixo = 1 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@descricao", descricao + "%");
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Cae> cae = new List<Cae>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                cae.Add(new Cae
                                {
                                    PKCodigo = objDr["codigo"].ToString(),
                                    Descricao = objDr["descricao"].ToString(),
                                    DescricaoING = objDr["descricao_ing"].ToString()
                                });
                            }
                        }
                        return cae;
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

        internal bool Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE CAE ");
            strSql.Append("SET Lixo = 1 ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
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

        internal bool Incluir(CaeDTO cae)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO CAE (codigo, descricao, descricao_ing ) ");
            strSql.Append("VALUES ( @Codigo, @Descricao, @DescricaoING ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", cae.PKCodigo);
                    objCommand.Parameters.AddWithValue("@Descricao", cae.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@DescricaoING", cae.DescricaoING.ToUpper());
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

        internal Boolean Alterar(CaeDTO cae)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE CAE ");
            strSql.Append("SET Descricao = @Descricao ");
            strSql.Append(",Descricao_ing = @DescricaoING ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", cae.PKCodigo);
                    objCommand.Parameters.AddWithValue("@Descricao", cae.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@DescricaoING", cae.DescricaoING.ToUpper());
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
