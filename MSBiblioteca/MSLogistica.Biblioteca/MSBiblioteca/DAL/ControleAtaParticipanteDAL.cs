using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ControleAtaParticipanteDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas_participante],[fk_usuario],[fk_ata],[data_aceite] ");
            strSql.Append("FROM Controle_Atas_Participantes ");
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
        internal DataTable BuscarPKAta(int PKAtas, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [pk_atas_participante],[fk_usuario],[fk_ata],[data_aceite] ");
            strSql.Append("FROM Controle_Atas_Participantes ");
            strSql.Append("WHERE lixo = 0 ");
            strSql.Append("AND [fk_ata] = @Codigo ");
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
        internal int Incluir(ControleAtaParticipanteDTO objDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("sp_dal_controleatasparticipantes");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandType = CommandType.StoredProcedure;

                    objCommand.Parameters.Add(new SqlParameter("@fk_usuario", SqlDbType.VarChar));
                    objCommand.Parameters.Add(new SqlParameter("@fk_ata", SqlDbType.Int));

                    objCommand.Parameters["@fk_usuario"].Value = objDTO.FKUsuario;
                    objCommand.Parameters["@fk_ata"].Value = objDTO.FKAtas;

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
            strSql.Append("UPDATE Controle_Atas_Participantes ");
            strSql.Append("SET lixo = 1 ");
            strSql.Append("WHERE [pk_atas_participante] = @Codigo ");
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
        internal bool Aceitar(int PKAta, string FKUsuario)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Controle_Atas_Participantes ");
            strSql.Append("SET data_aceite = @data_aceite ");
            strSql.Append("WHERE fk_ata = @Codigo and fk_usuario = @Usuario and data_aceite IS NULL");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@data_aceite", DateTime.Now);
                    objCommand.Parameters.AddWithValue("@Codigo", PKAta);
                    objCommand.Parameters.AddWithValue("@Usuario", FKUsuario);
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
