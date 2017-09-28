using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class TipoDeCargaDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Codigo, Descricao, Descricao_ing ");
            strSql.Append("FROM Tipos_de_Cargas ");
            strSql.Append("WHERE Lixo = 0 ");
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
        internal DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao, Descricao_ing ");
            strSql.Append("FROM Tipos_de_Cargas ");
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
        internal DataTable BuscarDescricao(string Descricao, bool SomenteRegistrosAtivos = true, bool IdiomaPT = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao, Descricao_ing ");
            strSql.Append("FROM Tipos_de_Cargas ");
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
                    objCommand.Parameters.AddWithValue("@Descricao", "%" + Descricao + "%");
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
        internal Boolean Alterar(TipoDeCargaDTO tiposDeCargasDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Tipos_de_Cargas ");
            strSql.Append("SET Descricao = @Descricao, ");
            strSql.Append("Descricao_ing = @Descricao_ing ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", tiposDeCargasDTO.Codigo);
                    objCommand.Parameters.AddWithValue("@Descricao", tiposDeCargasDTO.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao_ing", tiposDeCargasDTO.DescricaoIngles.ToUpper());
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
            strSql.Append("UPDATE Tipos_de_Cargas ");
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
        internal bool Incluir(TipoDeCargaDTO tiposDeCargasDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Tipos_de_Cargas (Codigo, Descricao, Descricao_ing) ");
            strSql.Append("VALUES (@Codigo, @Descricao, @Descricao_ing) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", tiposDeCargasDTO.Codigo);
                    objCommand.Parameters.AddWithValue("@Descricao", tiposDeCargasDTO.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Descricao_ing", tiposDeCargasDTO.DescricaoIngles.ToUpper());
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
