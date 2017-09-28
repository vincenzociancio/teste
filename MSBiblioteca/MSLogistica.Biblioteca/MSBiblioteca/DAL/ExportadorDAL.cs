using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.BLL;

namespace MSBiblioteca.DAL
{
    internal class ExportadorDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual ");
            strSql.Append("FROM Exportadores ");
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
            strSql.Append("FROM Exportadores ");
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
            strSql.Append("FROM Exportadores ");
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
        internal Boolean Alterar(ExportadorDTO exportador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Exportadores ");
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
                    objCommand.Parameters.AddWithValue("@Codigo", exportador.Codigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", exportador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", exportador.Pais);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", exportador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", exportador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", exportador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", exportador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", exportador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", exportador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", exportador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", exportador.UF);
                    objCommand.Parameters.AddWithValue("@Estado", exportador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", exportador.InscricaoEstadual);
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
            strSql.Append("UPDATE Exportadores ");
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
        internal string Incluir(ExportadorDTO exportador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Exportadores (Empresa, Filial, Codigo, Razao_Social, Pais, CGC_CPF, Endereco ");
            strSql.Append(",Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual) ");
            strSql.Append("VALUES (@Empresa, @Filial, @Codigo, @Razao_Social, @Pais, @CGC_CPF, @Endereco ");
            strSql.Append(",@Numero, @Complemento, @Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual) ");
            try
            {
                //Chamando o procedimento que gerar o novo código para o importador
                string novoCodigo = GerarNovoCodigo();
                //Verificando se o codigo foi gerado
                if (string.IsNullOrEmpty(novoCodigo))
                {
                    throw new Exception("Não foi possível gerar o código do procurador. Tente gravar novamente.");
                }
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", "1");
                    objCommand.Parameters.AddWithValue("@Filial", "RJO");
                    objCommand.Parameters.AddWithValue("@Codigo", novoCodigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", exportador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", exportador.Pais);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", exportador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Endereco", exportador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", exportador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", exportador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", exportador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", exportador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", exportador.CEP);
                    objCommand.Parameters.AddWithValue("@UF", exportador.UF);
                    objCommand.Parameters.AddWithValue("@Estado", exportador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", exportador.InscricaoEstadual);
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
            strSql.Append("FROM Parametros AS P INNER JOIN Exportadores AS I ON P.Empresa = I.Empresa AND P.Filial = I.Filial ");
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
        internal DataTable Listar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social ");
            strSql.Append("FROM Exportadores ");
            strSql.Append("WHERE Pais <> '105' ");
            strSql.Append("ORDER BY Razao_Social");

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
        internal Importador BuscarImportador(string codigo_importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,Conta_Corrente_Registro,Conta_Corrente_Deposito,link,CAE, ");
            strSql.Append("Telefone,Ativo,Acesso_WEB_MS,Acesso_WEB_CLI,Acesso_WEB_REC,BASE_ICMS,MOV_REPETRO,Inscricao_Municipal,EMAIL,FATURA_ISS,EMAIL_MONITORACAO,Exporta_Para_Siscomex,Apenc_Liberado,fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
            strSql.Append("WHERE Codigo = @Codigo ");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo_importador);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Importador importador = new Importador();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                importador.Codigo = objDr["Codigo"].ToString();
                                importador.RazaoSocial = objDr["Razao_Social"].ToString();
                                importador.CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString();
                                importador.CgcCpf = objDr["CGC_CPF"].ToString();
                                importador.Endereco = objDr["Endereco"].ToString();
                                importador.Complemento = objDr["Complemento"].ToString();
                                importador.Bairro = objDr["Bairro"].ToString();
                                importador.Cidade = objDr["Cidade"].ToString();
                                importador.Cep = objDr["CEP"].ToString();
                                importador.Uf = objDr["UF"].ToString();
                                importador.Estado = objDr["Estado"].ToString();
                                importador.Ativo = (int)objDr["Ativo"];
                                importador.Pais = objDr["Pais"].ToString();
                            }
                        }
                        return importador;
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
