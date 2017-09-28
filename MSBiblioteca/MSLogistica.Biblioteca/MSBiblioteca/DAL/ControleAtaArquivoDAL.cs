using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ControleAtaArquivoDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas_arquivos],[fk_atas],[caminho],[tipo_arquivo],[data],[descricao_arquivo] ");
            strSql.Append("FROM Controle_Atas_Arquivos ");
            strSql.Append("WHERE lixo = 0 ");
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
        internal DataTable BuscarPKAta(int PKAta, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas_arquivos],[fk_atas],[caminho],[tipo_arquivo],[data],[descricao_arquivo] ");
            strSql.Append("FROM Controle_Atas_Arquivos ");
            strSql.Append("WHERE lixo = 0 ");
            strSql.Append("AND [fk_atas] = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", PKAta);
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
        internal int Incluir(ControleAtaArquivoDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("sp_dal_controleatasarquivos");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandType = CommandType.StoredProcedure;

                    objCommand.Parameters.Add(new SqlParameter("@fk_atas", SqlDbType.Int));
                    objCommand.Parameters.Add(new SqlParameter("@caminho", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@tipo_arquivo", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@data", SqlDbType.DateTime));
                    objCommand.Parameters.Add(new SqlParameter("@descricao_arquivo", SqlDbType.VarChar));

                    objCommand.Parameters["@fk_atas"].Value = objDTO.FKAtas;
                    objCommand.Parameters["@data"].Value = objDTO.Data;
                    objCommand.Parameters["@caminho"].Value = objDTO.Caminho.ToUpper();
                    objCommand.Parameters["@tipo_arquivo"].Value = objDTO.TipoArquivo;
                    objCommand.Parameters["@descricao_arquivo"].Value = objDTO.DescricaoArquivo.ToUpper();

                    return Convert.ToInt32(objCommand.ExecuteScalar());
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
        internal bool Excluir(int PKAta)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Controle_Atas_Arquivos ");
            strSql.Append("SET lixo = 1 ");
            strSql.Append("WHERE [pk_atas_arquivos] = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Codigo", PKAta);
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
    }

}
