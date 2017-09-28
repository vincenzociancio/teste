using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class TransportadorDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Transportadores ");
            strSql.Append("WHERE Lixo = 0 ");
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
        internal DataTable BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Transportadores ");
            strSql.Append("WHERE Codigo = @Codigo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Lixo = 0 ");
            }
            else
            {
                strSql.Append("AND Lixo = 1 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
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
        internal DataTable BuscarRazaoSocial(string RazaoSocial, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Transportadores ");
            strSql.Append("WHERE Razao_Social like @RazaoSocial ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Lixo = 0 ");
            }
            else
            {
                strSql.Append("AND Lixo = 1 ");
            }
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@RazaoSocial", "%" + RazaoSocial + "%");
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
        internal Boolean Alterar(TransportadorDTO transportador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Transportadores ");
            strSql.Append("SET Razao_Social = @Razao_Social ");
            strSql.Append(",Pais = @Pais ");
            strSql.Append(",CGC_CPF = @CGC_CPF ");
            strSql.Append(",Endereco = @Endereco ");
            strSql.Append(",Numero = @Numero ");
            strSql.Append(",Complemento = @Complemento ");
            strSql.Append(",Bairro = @Bairro ");
            strSql.Append(",Cidade = @Cidade ");
            strSql.Append(",CEP = @CEP ");
            strSql.Append(",UF = @UF ");
            strSql.Append(",Estado = @Estado ");
            strSql.Append(",Inscricao_Estadual = @Inscricao_Estadual ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", transportador.Codigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", transportador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", transportador.Pais.ToUpper());
                    objCommand.Parameters.AddWithValue("@CGC_CPF", transportador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", transportador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", transportador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", transportador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", transportador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", transportador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", transportador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", transportador.UF);
                    objCommand.Parameters.AddWithValue("@Estado", transportador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", transportador.InscricaoEstadual);
                    objCommand.ExecuteNonQuery();
                }
                return true;
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
        internal bool Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Transportadores ");
            strSql.Append("SET Lixo = 1 ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
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
        internal string Incluir(TransportadorDTO transportador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Transportadores (Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, Endereco ");
            strSql.Append(",Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual) ");
            strSql.Append("VALUES (@Empresa, @Filial, @Codigo, @Razao_Social, @Pais, @CGC_CPF, @Endereco ");
            strSql.Append(",@Numero, @Complemento, @Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual) ");
            try
            {
                //Chamando o procedimento que gerar o novo código para o transportador
                string novoCodigo = GerarNovoCodigo();
                //Verificando se o codigo foi gerado
                if (string.IsNullOrEmpty(novoCodigo))
                {
                    throw new Exception("Não foi possível gerar o código do transportador. Tente gravar novamente.");
                }
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", "1");
                    objCommand.Parameters.AddWithValue("@Filial", "RJO");
                    objCommand.Parameters.AddWithValue("@Codigo", novoCodigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", transportador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", transportador.Pais.ToUpper());
                    objCommand.Parameters.AddWithValue("@CGC_CPF", transportador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", transportador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", transportador.Numero.ToUpper());
                    objCommand.Parameters.AddWithValue("@Complemento", transportador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", transportador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", transportador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", transportador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", transportador.UF.ToUpper());
                    objCommand.Parameters.AddWithValue("@Estado", transportador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", transportador.InscricaoEstadual);
                    objCommand.ExecuteNonQuery();
                    return novoCodigo;
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
        internal string GerarNovoCodigo()
        {
            string retorno = string.Empty;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Max(Cast(Codigo as integer))+1 AS Cod ");
            strSql.Append("FROM Parametros AS P INNER JOIN Transportadores AS I ON P.Empresa = I.Empresa AND P.Filial = I.Filial ");
            strSql.Append("WHERE (CODIGO<>'A') AND (CODIGO<>'X000') AND (CODIGO<>'X111') ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        while (objDr.Read())
                        {
                            retorno = objDr[0].ToString();
                        }
                    }
                }
                return retorno;
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
