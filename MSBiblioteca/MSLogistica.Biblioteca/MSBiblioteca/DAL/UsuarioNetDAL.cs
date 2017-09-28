using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class UsuarioNetDAL : BancoDados
    {
        internal DataTable Buscar(string ImportadorCGCCPF, string Usuario)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT CGC_CPF, Usuario, Senha, Nome_Completo, Email, Nivel, Acesso_habilitado, PK_USUARIO ");
            strSql.Append("FROM UsuariosNET ");
            strSql.Append("WHERE CGC_CPF = @CGC_CPF ");
            strSql.Append("AND Usuario = @Usuario ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ImportadorCGCCPF);
                    objCommand.Parameters.AddWithValue("@Usuario", Usuario);
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
        internal DataTable Buscar(string ImportadorCGCCPF)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT CGC_CPF, Usuario, Senha, Nome_Completo, Email, Nivel, Acesso_habilitado, PK_USUARIO ");
            strSql.Append("FROM UsuariosNET ");
            strSql.Append("WHERE CGC_CPF = @CGC_CPF ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ImportadorCGCCPF);
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
        internal DataTable Buscar(string ImportadorCGCCPF, bool ApenasDITEC)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT CGC_CPF, Usuario, Senha, Nome_Completo, Email, Nivel, Acesso_habilitado, PK_USUARIO ");
            strSql.Append("FROM UsuariosNET ");
            strSql.Append("WHERE CGC_CPF = @CGC_CPF ");
            if (ApenasDITEC == true)
            {
                strSql.Append("AND Usuario = 'DITEC' ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ImportadorCGCCPF);
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
        internal bool Incluir(UsuarioNetDTO usuarioNetDTO)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO UsuariosNET (CGC_CPF, Usuario, Senha, Nome_Completo, Nivel ) ");
            strSql.Append("VALUES ( @CGC_CPF, @Usuario, @Senha, @Nome_Completo, @Nivel ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CGC_CPF", usuarioNetDTO.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Usuario", usuarioNetDTO.Usuario);
                    objCommand.Parameters.AddWithValue("@Senha", usuarioNetDTO.Senha);
                    objCommand.Parameters.AddWithValue("@Nome_Completo", usuarioNetDTO.NomeCompleto);
                    objCommand.Parameters.AddWithValue("@Nivel", usuarioNetDTO.Nivel);
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
        internal bool VerificaSeExiste(string ImportadorCGCCPF, string Usuario)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Usuario ");
            strSql.Append("FROM UsuariosNET ");
            strSql.Append("WHERE CGC_CPF = @CGC_CPF ");
            strSql.Append("AND Usuario = @Usuario ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ImportadorCGCCPF);
                    objCommand.Parameters.AddWithValue("@Usuario", Usuario);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        return objDr.HasRows;
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
    }
}
