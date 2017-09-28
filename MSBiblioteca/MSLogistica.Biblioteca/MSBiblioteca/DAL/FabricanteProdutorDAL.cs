using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class FabricanteProdutorDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT TOP 10 Empresa,Filial,Codigo,Razao_Social,Pais,CGC_CPF,Endereco, ");
            strSql.Append("Numero,Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Fabricantes_Produtores WHERE Filial = 'RJO'");
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
        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Codigo,Razao_Social,Pais,CGC_CPF,Endereco, ");
            strSql.Append("Numero,Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Fabricantes_Produtores WHERE Filial = 'RJO'");
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
        internal DataTable BuscarCodigo(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Codigo,Razao_Social,Pais,CGC_CPF,Endereco, ");
            strSql.Append("Numero,Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Fabricantes_Produtores WHERE Codigo = @Codigo");
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
        internal DataTable BuscarRazaoSocial(string Razao_Social)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Codigo,Razao_Social,Pais,CGC_CPF,Endereco, ");
            strSql.Append("Numero,Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Fabricantes_Produtores  WHERE Razao_Social = @Razao_Social");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Razao_Social", "%" + Razao_Social + "%");
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
        internal Boolean Alterar(FabricanteProdutorDTO ParametroFabricantes_Produtores)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Fabricantes_Produtores");
            strSql.Append("SET Empresa = @Empresa ");
            strSql.Append(",Filial = @Filial ");            
            strSql.Append(",Razao_Social = @Razao_Social ");
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
            strSql.Append("WHERE Codigo = @Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", ParametroFabricantes_Produtores.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", ParametroFabricantes_Produtores.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Razao_Social", ParametroFabricantes_Produtores.Razao_Social.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", ParametroFabricantes_Produtores.Pais.ToUpper());
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ParametroFabricantes_Produtores.CGC_CPF);
                    objCommand.Parameters.AddWithValue("@Endereco", ParametroFabricantes_Produtores.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", ParametroFabricantes_Produtores.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", ParametroFabricantes_Produtores.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", ParametroFabricantes_Produtores.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", ParametroFabricantes_Produtores.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", ParametroFabricantes_Produtores.CEP.ToUpper());
                    objCommand.Parameters.AddWithValue("@UF", ParametroFabricantes_Produtores.UF.ToUpper());
                    objCommand.Parameters.AddWithValue("@Estado", ParametroFabricantes_Produtores.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", ParametroFabricantes_Produtores.Inscricao_Estadual);
                    objCommand.Parameters.AddWithValue("@Codigo", ParametroFabricantes_Produtores.Codigo);
                    objCommand.ExecuteNonQuery();
                }
                return true;
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
        internal Boolean Incluir(FabricanteProdutorDTO ParametroFabricantes_Produtores)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Fabricantes_Produtores(Empresa,Filial,Codigo,Razao_Social,Pais");
            strSql.Append(",CGC_CPF,Endereco,Numero,Complemento,Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual) ");
            strSql.Append("VALUES(@Empresa,@Filial,@Codigo,@Razao_Social,@Pais,@CGC_CPF,@Endereco,@Numero,");
            strSql.Append(",@Complemento,@Bairro,@Cidade,@CEP,@UF,@Estado,@Inscricao_Estadual)");
            try
            {
                //Chamando o procedimento que gera o novo código para o Fabricante_Produtores
                string novoCodigo = GerarNovoCodigo();
                //Verifica se o codigo foi gerado corretamente
                if (string.IsNullOrEmpty(novoCodigo))
                {
                    throw new Exception("Não foi possível gerar o código do Fabricante Produtor. Tente gravar novamente.");
                }              
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", ParametroFabricantes_Produtores.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", ParametroFabricantes_Produtores.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Codigo", ParametroFabricantes_Produtores.Codigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", ParametroFabricantes_Produtores.Razao_Social.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", ParametroFabricantes_Produtores.Pais.ToUpper());
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ParametroFabricantes_Produtores.CGC_CPF);
                    objCommand.Parameters.AddWithValue("@Endereco", ParametroFabricantes_Produtores.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", ParametroFabricantes_Produtores.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", ParametroFabricantes_Produtores.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", ParametroFabricantes_Produtores.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", ParametroFabricantes_Produtores.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", ParametroFabricantes_Produtores.CEP.ToUpper());
                    objCommand.Parameters.AddWithValue("@UF", ParametroFabricantes_Produtores.UF.ToUpper());
                    objCommand.Parameters.AddWithValue("@Estado", ParametroFabricantes_Produtores.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", ParametroFabricantes_Produtores.Inscricao_Estadual);
                    objCommand.ExecuteNonQuery();
                }
                return true;
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
        internal Boolean Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM Fabricantes_Produtores WHERE Codigo = @Codigo");

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
        internal string GerarNovoCodigo()
        {
            string retorno = string.Empty;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Max(Cast(Codigo as integer))+1 AS Cod ");
            strSql.Append("FROM Fabricantes_Produtores WHERE Codigo <> 'a1,c'");

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
