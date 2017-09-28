using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class AcessoGrupoUsuarioDAL : BancoDados
    {
        internal bool Incluir(AcessoGrupoUsuarioDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO AcessoGrupoUsuario (FK_Usuario, FK_AcessoGrupo) ");
            strSql.Append("VALUES (@FK_Usuario, @FK_AcessoGrupo) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
                    objCommand.Parameters.AddWithValue("@FK_AcessoGrupo", obj.FK_AcessoGrupo);
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

        internal bool Excluir(AcessoGrupoUsuarioDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("Delete From AcessoGrupoUsuario ");
            strSql.Append("WHERE FK_AcessoGrupo = @FK_AcessoGrupo AND FK_Usuario = @FK_Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@FK_AcessoGrupo", obj.FK_AcessoGrupo);
                    objCommand.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
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
