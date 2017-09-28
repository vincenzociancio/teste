using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ProcuradorDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, ");
            strSql.Append("Endereco, Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, ");
            strSql.Append("Inscricao_Estadual, Registro, Telefone, exibe_complementares ");
            strSql.Append("FROM Procuradores ");
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

        internal DataTable BuscarTodos()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, ");
            strSql.Append("Endereco, Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, ");
            strSql.Append("Inscricao_Estadual, Registro, Telefone, exibe_complementares ");
            strSql.Append("FROM Procuradores ");      
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
            strSql.Append("SELECT Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, ");
            strSql.Append("Endereco, Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, ");
            strSql.Append("Inscricao_Estadual, Registro, Telefone, exibe_complementares ");
            strSql.Append("FROM Procuradores ");
            strSql.Append("WHERE Codigo = @Codigo ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("AND Lixo = 0 ");
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
            strSql.Append("SELECT top 20 Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, ");
            strSql.Append("Endereco, Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, ");
            strSql.Append("Inscricao_Estadual, Registro, Telefone, exibe_complementares ");
            strSql.Append("FROM Procuradores ");
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
        internal Boolean Alterar(ProcuradorDTO ParamentroProcurador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Procuradores ");
            strSql.Append("SET [Razao_Social] = @Razao_Social ");
            strSql.Append(",[Pais] = @Pais ");
            strSql.Append(",[CGC_CPF] = @CGC_CPF ");
            strSql.Append(",[Endereco] = @Endereco ");
            strSql.Append(",[Numero] = @Numero ");
            strSql.Append(",[Complemento] = @Complemento ");
            strSql.Append(",[Bairro] = @Bairro ");
            strSql.Append(",[Cidade] = @Cidade ");
            strSql.Append(",[CEP] = @CEP ");
            strSql.Append(",[UF] = @UF ");
            strSql.Append(",[Estado] = @Estado ");
            strSql.Append(",[Registro] = @Registro ");
            strSql.Append(",[Telefone] = @Telefone ");
            strSql.Append(",[exibe_complementares] = @exibe_complementares ");
            strSql.Append("WHERE [Codigo] = @Codigo ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Razao_Social", ParamentroProcurador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", ParamentroProcurador.Pais);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ParamentroProcurador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", ParamentroProcurador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", ParamentroProcurador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", ParamentroProcurador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", ParamentroProcurador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", ParamentroProcurador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", ParamentroProcurador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", ParamentroProcurador.UF.ToUpper());
                    objCommand.Parameters.AddWithValue("@Estado", ParamentroProcurador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Registro", ParamentroProcurador.Registro);
                    objCommand.Parameters.AddWithValue("@Telefone", ParamentroProcurador.Telefone);
                    objCommand.Parameters.AddWithValue("@exibe_complementares", ParamentroProcurador.ExibeComplementares);
                    objCommand.Parameters.AddWithValue("@Codigo", ParamentroProcurador.PKCodigo);
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
        internal string Incluir(ProcuradorDTO ParamentroProcurador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Procuradores ([Empresa],[Filial],[Codigo],[Razao_Social],[Pais],[CGC_CPF] ");
            strSql.Append(",[Endereco],[Numero],[Complemento],[Bairro],[Cidade],[CEP],[UF] ");
            strSql.Append(",[Estado],[Registro],[Telefone],[exibe_complementares]) ");
            strSql.Append("VALUES ( @Empresa, @Filial, @Codigo, @Razao_Social, @Pais, @CGC_CPF, @Endereco, @Numero, @Complemento, ");
            strSql.Append("@Bairro, @Cidade, @CEP, @UF, @Estado, @Registro, @Telefone, @exibe_complementares ) ");

            try
            {
                //Chamando o procedimento que gerar o novo código para o procurador
                string novoCodigo = GerarNovoCodigo();
                //Verificando se o codigo foi gerado
                if (string.IsNullOrEmpty(novoCodigo))
                {
                    throw new Exception("Não foi possível gerar o código do procurador. Tente gravar novamente.");
                }
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", ParamentroProcurador.PKEmpresa);
                    objCommand.Parameters.AddWithValue("@Filial", ParamentroProcurador.PKFilial);
                    objCommand.Parameters.AddWithValue("@Codigo", novoCodigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", ParamentroProcurador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", ParamentroProcurador.Pais);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", ParamentroProcurador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", ParamentroProcurador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", ParamentroProcurador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", ParamentroProcurador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", ParamentroProcurador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", ParamentroProcurador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", ParamentroProcurador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", ParamentroProcurador.UF.ToUpper());
                    objCommand.Parameters.AddWithValue("@Estado", ParamentroProcurador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Registro", ParamentroProcurador.Registro);
                    objCommand.Parameters.AddWithValue("@Telefone", ParamentroProcurador.Telefone);
                    objCommand.Parameters.AddWithValue("@exibe_complementares", ParamentroProcurador.ExibeComplementares);
                    objCommand.ExecuteNonQuery();
                    return novoCodigo;
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
        internal string GerarNovoCodigo()
        {
            string retorno = string.Empty;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Max(Cast(Codigo as integer))+1 AS Cod ");
            strSql.Append("FROM Parametros AS PA INNER JOIN Procuradores AS PR ON PA.Empresa = PR.Empresa AND PA.Filial = PR.Filial ");

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
        internal Boolean Excluir(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Procuradores SET Lixo = 1 WHERE Codigo = @Codigo ");

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
    }
}
