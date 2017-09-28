using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using System.Data.SqlClient;
using MSBiblioteca.BLL;

namespace MSBiblioteca.DAL
{
    internal class UsuarioClienteDAL : BancoDados
    {
        internal bool Incluir(UsuarioClienteDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO UsuariosClientes (Usuario, Importador) ");
            strSql.Append("VALUES (@Usuario, @Importador) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", obj.FKUsuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Importador", obj.FKImportador);
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

        internal bool Excluir(UsuarioClienteDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM UsuariosClientes ");
            strSql.Append("WHERE Usuario = @Usuario AND Importador = @Importador");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Usuario", obj.FKUsuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Importador", obj.FKImportador);
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
        
    }
}
