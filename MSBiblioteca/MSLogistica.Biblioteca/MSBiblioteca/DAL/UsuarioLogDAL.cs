using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class UsuarioLogDAL : BancoDados
    {
        internal bool Incluir(UsuarioLogDTO usuarioLogDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Usuarios_Log (fk_usuario, movimentacao, descricao, data, fk_processo, sistema ) ");
            strSql.Append("VALUES ( @fk_usuario, @movimentacao, @descricao, @data, @fk_processo, @sistema ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@fk_usuario", usuarioLogDTO.FkUsuario);
                    objCommand.Parameters.AddWithValue("@movimentacao", usuarioLogDTO.Movimentacao);
                    objCommand.Parameters.AddWithValue("@descricao", usuarioLogDTO.Descricao);
                    objCommand.Parameters.AddWithValue("@data", DateTime.Now);
                    if (String.IsNullOrEmpty(usuarioLogDTO.FkProcesso) == true)
                    {
                        objCommand.Parameters.AddWithValue("@fk_processo", "");
                    }
                    else
                    {
                        objCommand.Parameters.AddWithValue("@fk_processo", usuarioLogDTO.FkProcesso);
                    }
                    
                    objCommand.Parameters.AddWithValue("@sistema", usuarioLogDTO.Sistema);
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
