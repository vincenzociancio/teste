using MSBiblioteca.BLL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class UsuarioFollowLiberadoDAL : BancoDados
    {
        internal bool Incluir(UsuarioFollowLiberadoDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Usuario_Follow_Aberto (Processo, Usuario) ");
            strSql.Append("VALUES (@Processo, @Usuario) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Usuario", obj.FK_Usuario.ToUpper());
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

        internal bool Excluir(int pk_id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM Usuario_Follow_Aberto ");
            strSql.Append("WHERE PK_ID = @PK_ID");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@PK_ID", pk_id);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
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

        internal List<UsuarioFollowLiberado> BuscarUsuario(string fk_usuario)
        {
            List<UsuarioFollowLiberado> lista = new List<UsuarioFollowLiberado>();

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_ID, Processo, Usuario ");
            strSql.Append("FROM Usuario_Follow_Aberto ");
            strSql.Append("WHERE Usuario = @Usuario ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", fk_usuario);
                    SqlDataReader objDr = objCommand.ExecuteReader();

                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new UsuarioFollowLiberado((int)objDr["PK_ID"],
                            objDr["Processo"].ToString(),
                            objDr["Usuario"].ToString()));
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return lista;
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
