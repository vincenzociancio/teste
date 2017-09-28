using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class TratamentoTributarioIcmsDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 codigo, descricao, descricao_ing ");
            strSql.Append("FROM Tratamento_Tributario_ICMS ");
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
        internal DataTable BuscarCodigo(string codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT codigo, descricao, descricao_ing ");
            strSql.Append("FROM Tratamento_Tributario_ICMS ");
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
        internal DataTable BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true, bool IdiomaPT = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 20 codigo, descricao, descricao_ing ");
            strSql.Append("FROM Tratamento_Tributario_ICMS ");
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
        internal bool Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Tratamento_Tributario_ICMS ");
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
        internal bool Incluir(TratamentoTributarioIcmsDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Tratamento_Tributario_ICMS (codigo, descricao, descricao_ing ) ");
            strSql.Append("VALUES ( @Codigo, @Descricao, @DescricaoING ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", objDTO.Codigo);
                    objCommand.Parameters.AddWithValue("@Descricao", objDTO.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@DescricaoING", objDTO.DescricaoING.ToUpper());
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
        internal Boolean Alterar(TratamentoTributarioIcmsDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Tratamento_Tributario_ICMS ");
            strSql.Append("SET Descricao = @Descricao ");
            strSql.Append(",Descricao_ing = @DescricaoING ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", objDTO.Codigo);
                    objCommand.Parameters.AddWithValue("@Descricao", objDTO.Descricao.ToUpper());
                    objCommand.Parameters.AddWithValue("@DescricaoING", objDTO.DescricaoING.ToUpper());
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
