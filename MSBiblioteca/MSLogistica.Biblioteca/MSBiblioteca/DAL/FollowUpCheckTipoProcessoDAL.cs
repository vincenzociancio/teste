using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class FollowUpCheckTipoProcessoDAL : BancoDados
    {
        internal bool Incluir(FollowUpCheckTipoProcessoDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO FollowUp_Check_Tipo_Processo (FK_Tipo_Processo, FK_Usuario) ");
            strSql.Append("VALUES (@FK_Tipo_Processo, @FK_Usuario) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Tipo_Processo", obj.FK_TipoProcesso);
                    objCommand.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
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

        internal bool Excluir(FollowUpCheckTipoProcessoDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("Delete From FollowUp_Check_Tipo_Processo ");
            strSql.Append("WHERE FK_Tipo_Processo = @FK_Tipo_Processo AND FK_Usuario = @FK_Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@FK_Tipo_Processo", obj.FK_TipoProcesso);
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
