using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class RcrObsEspecificaDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 PK_OBS, DESC_OBS ");
            strSql.Append("FROM TB_RCR_OBS_ESPECIFICA ");
            strSql.Append("WHERE Excluido = 0 ");
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
            strSql.Append("SELECT PK_OBS, DESC_OBS ");
            strSql.Append("FROM TB_RCR_OBS_ESPECIFICA ");
            strSql.Append("WHERE PK_OBS = @Codigo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Excluido = 0 ");
            }
            else
            {
                strSql.Append("AND Excluido = 1 ");
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
        internal DataTable BuscarDescricao(string descricao, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 20 PK_OBS, DESC_OBS ");
            strSql.Append("FROM TB_RCR_OBS_ESPECIFICA ");
            strSql.Append("WHERE DESC_OBS like @descricao ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Excluido = 0 ");
            }
            else
            {
                strSql.Append("AND Excluido = 1 ");
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
        internal bool Excluir(int Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE TB_RCR_OBS_ESPECIFICA ");
            strSql.Append("SET Excluido = 1 ");
            strSql.Append("WHERE PK_OBS = @Codigo ");
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
        internal bool Incluir(RcrObsEspecificaDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO TB_RCR_OBS_ESPECIFICA (DESC_OBS ) ");
            strSql.Append("VALUES ( @Descricao ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Descricao", objDTO.Descricao.ToUpper());
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
        internal Boolean Alterar(RcrObsEspecificaDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE TB_RCR_OBS_ESPECIFICA ");
            strSql.Append("SET DESC_OBS = @Descricao ");
            strSql.Append("WHERE PK_OBS = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", objDTO.Codigo);
                    objCommand.Parameters.AddWithValue("@Descricao", objDTO.Descricao.ToUpper());
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
