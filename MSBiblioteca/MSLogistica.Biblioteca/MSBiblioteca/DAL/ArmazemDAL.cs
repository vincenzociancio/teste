using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using System.Collections.Generic;
using MSBiblioteca.BLL;

namespace MSBiblioteca.DAL
{
    internal class ArmazemDAL : BancoDados
    {
        internal List<Armazem> Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 15 Codigo, Descricao ");
            strSql.Append("FROM Armazem ");
            strSql.Append("WHERE Lixo = 0 ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Armazem> armazem = new List<Armazem>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                armazem.Add(new Armazem
                                {
                                    Codigo = objDr["Codigo"].ToString(),
                                    Descricao = objDr["Descricao"].ToString()
                                });
                            }
                        }
                        return armazem;
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

        internal Armazem BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao ");
            strSql.Append("FROM Armazem ");
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
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Armazem armazem = new Armazem();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                armazem.Codigo = objDr["Codigo"].ToString();
                                armazem.Descricao = objDr["Descricao"].ToString();
                            }
                        }
                        return armazem;
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

        internal List<Armazem> BuscarDescricao(string Descricao, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao ");
            strSql.Append("FROM Armazem ");
            strSql.Append("WHERE Descricao like @Descricao ");
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
                    objCommand.Parameters.AddWithValue("@Descricao", "%" + Descricao + "%");
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Armazem> armazem = new List<Armazem>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                armazem.Add(new Armazem
                                {
                                    Codigo = objDr["Codigo"].ToString(),
                                    Descricao = objDr["Descricao"].ToString()
                                });
                            }
                        }
                        return armazem;
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

        internal Boolean Alterar(ArmazemDTO armazem)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Armazem ");
            strSql.Append("SET Descricao = @Descricao ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", armazem.Codigo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", armazem.Descricao.ToUpper());
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

        internal bool Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Armazem ");
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

        internal bool Incluir(ArmazemDTO armazem)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Armazem (Codigo, Descricao) ");
            strSql.Append("VALUES (@Codigo, @Descricao) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", armazem.Codigo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao", armazem.Descricao.ToUpper());
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
    }
}
