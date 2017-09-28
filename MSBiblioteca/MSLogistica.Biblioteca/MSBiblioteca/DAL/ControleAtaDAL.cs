using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ControleAtaDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 [pk_atas],[tema],[data],[fk_importador],[fk_usuario],[tipo] ");
            strSql.Append("FROM Controle_Atas ");
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
        internal DataTable BuscarPK(int PKAtas, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas],[tema],[data],[fk_importador],[fk_usuario],[tipo] ");
            strSql.Append("FROM Controle_Atas ");
            strSql.Append("WHERE pk_atas = @Codigo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND lixo = 0 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", PKAtas);
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
        internal DataTable BuscarTema(string Tema, int Tipo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas],[tema],[data],[fk_importador],[fk_usuario],[tipo] ");
            strSql.Append("FROM Controle_Atas ");
            strSql.Append("WHERE tema like @tema ");
            strSql.Append("AND tipo = @tipo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND lixo = 0 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@tema", Tema + "%");
                    objCommand.Parameters.AddWithValue("@tipo", Tipo);
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
        internal int Incluir(ControleAtaDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("sp_dal_controleatas");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandType = CommandType.StoredProcedure;
                    
                    objCommand.Parameters.Add(new SqlParameter("@tema", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@data", SqlDbType.DateTime));
                    objCommand.Parameters.Add(new SqlParameter("@fk_importador", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@fk_usuario", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@tipo", SqlDbType.Int));
                    
                    objCommand.Parameters["@tema"].Value = objDTO.Tema.ToUpper();
                    objCommand.Parameters["@data"].Value = objDTO.Data;
                    if (String.IsNullOrEmpty(objDTO.FKImportador))
                    {
                        objCommand.Parameters["@fk_importador"].Value = DBNull.Value;
                    }
                    else
                    {
                        objCommand.Parameters["@fk_importador"].Value = objDTO.FKImportador;
                    }
                    objCommand.Parameters["@fk_usuario"].Value = objDTO.FKUsuario;
                    objCommand.Parameters["@tipo"].Value = objDTO.Tipo;

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
        internal bool Alterar(ControleAtaDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Controle_Atas set tema = @tema, data = @data, fk_importador = @fk_importador, ");
            strSql.Append("fk_usuario = @fk_usuario, tipo = @tipo ");
            strSql.Append("WHERE pk_atas = @pk_atas");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@pk_atas", objDTO.PKAtas);
                    objCommand.Parameters.AddWithValue("@tema", objDTO.Tema.ToUpper());
                    objCommand.Parameters.AddWithValue("@data", objDTO.Data);
                    if (String.IsNullOrEmpty(objDTO.FKImportador))
                    {
                        objCommand.Parameters.AddWithValue("@fk_importador", DBNull.Value);
                    }
                    else
                    {
                        objCommand.Parameters.AddWithValue("@fk_importador", objDTO.FKImportador);
                    }
                    objCommand.Parameters.AddWithValue("@fk_usuario", objDTO.FKUsuario);
                    objCommand.Parameters.AddWithValue("@tipo", objDTO.Tipo);
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
        internal bool Excluir(int PKAta)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Controle_Atas ");
            strSql.Append("SET lixo = 1 ");
            strSql.Append("WHERE [pk_atas] = @Codigo ");
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
