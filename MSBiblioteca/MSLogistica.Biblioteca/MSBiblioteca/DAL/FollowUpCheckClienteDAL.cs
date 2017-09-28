using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class FollowUpCheckClienteDAL : BancoDados
    {
        internal bool Incluir(FollowUpCheckClienteDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO FollowUp_Check_Clientes (FK_Importador, FK_Usuario) ");
            strSql.Append("VALUES (@FK_Importador, @FK_Usuario) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Importador", obj.FK_Importador);
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

        internal bool Excluir(FollowUpCheckClienteDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("Delete From FollowUp_Check_Clientes ");
            strSql.Append("WHERE FK_Importador = @FK_Importador AND FK_Usuario = @FK_Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@FK_Importador", obj.FK_Importador);
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
