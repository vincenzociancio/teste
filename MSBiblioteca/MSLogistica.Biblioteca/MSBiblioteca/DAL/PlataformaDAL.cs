using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class PlataformaDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Top 10 PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido ");
            strSql.Append("FROM Plataformas");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
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
        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
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
        internal DataTable BuscarCodigo(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas where PK_Plataforma = @PK_Plataforma");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@PK_Plataforma", Codigo);
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
        internal DataTable BuscarPorCodigoDoImportador(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas where FK_Importador = @FK_Importador");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Importador", Codigo);
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
        internal DataTable BuscarPorPlataforma(string Descricao)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas where Plataforma = @Plataforma");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Plataforma", Descricao);
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
        internal DataTable BuscarPorSigla(string Sigla)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas where Sigla = @Sigla");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Sigla", Sigla);
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
        internal DataTable PlataformasAtivas(Boolean SomenteRegistrosAtivos)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Plataforma,FK_Importador,Plataforma,Sigla,Excluido FROM Plataformas ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("where Excluido = 0 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
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
        internal Boolean Alterar(PlataformaDTO plataforma)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Plataformas ");
            strSql.Append("SET FK_Importador = @FK_Importador ");
            strSql.Append(",Plataforma = @Plataforma ");
            strSql.Append(",Sigla = @Sigla ");
            strSql.Append(",Excluido = @Excluido ");
            strSql.Append("WHERE PK_Plataforma = @PK_Plataforma ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Importador", plataforma.FK_Importador.ToUpper());
                    objCommand.Parameters.AddWithValue("@Plataforma", plataforma.Plataforma.ToUpper());
                    objCommand.Parameters.AddWithValue("@Sigla", plataforma.Sigla.ToUpper());
                    objCommand.Parameters.AddWithValue("@Excluido", plataforma.Lixo);
                    objCommand.Parameters.AddWithValue("@PK_Plataforma", plataforma.Plataforma);
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
            strSql.Append("UPDATE Plataformas ");
            strSql.Append("SET Excluido = 1 ");
            strSql.Append("WHERE PK_Plataforma = @Codigo ");
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
        internal bool Incluir(PlataformaDTO plataforma)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Plataformas(FK_Importador,Plataforma,Sigla,Excluido)");
            strSql.Append("VALUES(@FK_Importador,@Plataforma,@Sigla,@Excluido) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Importador", plataforma.FK_Importador.ToUpper());
                    objCommand.Parameters.AddWithValue("@Plataforma", plataforma.Plataforma.ToUpper());
                    objCommand.Parameters.AddWithValue("@Sigla", plataforma.Sigla.ToUpper());
                    objCommand.Parameters.AddWithValue("@Excluido", plataforma.Lixo);
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
