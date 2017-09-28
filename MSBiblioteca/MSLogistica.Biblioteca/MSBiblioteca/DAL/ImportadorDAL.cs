using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.BLL;
using System.Collections.Generic;

namespace MSBiblioteca.DAL
{
    internal class ImportadorDAL : BancoDados
    {
        internal DataTable Buscar()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT top 10 Codigo,Razao_Social,Pais,CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,Conta_Corrente_Registro,Conta_Corrente_Deposito,link,CAE, ");
            strSql.Append("Telefone,Ativo,Acesso_WEB_MS,Acesso_WEB_CLI,Acesso_WEB_REC,BASE_ICMS,MOV_REPETRO,Inscricao_Municipal,EMAIL,FATURA_ISS,EMAIL_MONITORACAO,Exporta_Para_Siscomex,Apenc_Liberado,fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
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
        internal DataTable PreencherCombo(bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, Ativo, ");
            strSql.Append("RAZAOCNPJ = Razao_Social +' ( CNPJ: '+ substring(CNPJ_CPF_COMPLETO,1,2) + '.' + substring(CNPJ_CPF_COMPLETO,3,3) + '.' + substring(CNPJ_CPF_COMPLETO,6,3) + '/' + substring(CNPJ_CPF_COMPLETO,9,4) + '-' + substring(CNPJ_CPF_COMPLETO,13,2)+' ) '");
            strSql.Append("FROM Importadores ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("WHERE Ativo = 1 ");
            }
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
        internal Importador BuscarCodigo(string Codigo, bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,Conta_Corrente_Registro,Conta_Corrente_Deposito,link,CAE, ");
            strSql.Append("Telefone,Ativo,Acesso_WEB_MS,Acesso_WEB_CLI,Acesso_WEB_REC,BASE_ICMS,MOV_REPETRO,Inscricao_Municipal,EMAIL,FATURA_ISS,EMAIL_MONITORACAO,Exporta_Para_Siscomex,Apenc_Liberado,fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
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
                        Importador import = new Importador();
                        if (objDr.HasRows)
                        {                            
                            while (objDr.Read())
                            {
                                import.Codigo = objDr["Codigo"].ToString();
                                import.RazaoSocial = objDr["Razao_Social"].ToString();
                                import.Pais = objDr["Pais"].ToString();
                                import.CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString();
                                import.CgcCpf = objDr["CGC_CPF"].ToString();
                                import.Endereco = objDr["Endereco"].ToString();
                                import.Complemento = objDr["Complemento"].ToString();
                                import.Bairro = objDr["Bairro"].ToString();
                                import.Cidade = objDr["Cidade"].ToString();
                                import.Cep = objDr["CEP"].ToString();
                                import.Uf = objDr["UF"].ToString();
                                import.Estado = objDr["Estado"].ToString();
                                import.InscricaoEstadual = objDr["Inscricao_Estadual"].ToString();
                            }                            
                        }
                        return import;
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

            strSql.Append("SELECT Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, CGC_CPF, Tipo_Importador, Endereco, Numero, Complemento, ");
            strSql.Append("Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, Banco, Agencia, Conta_Corrente, Conta_Corrente_Registro, Conta_Corrente_Deposito, link, CAE, ");
            strSql.Append("Telefone, Ativo, Acesso_WEB_MS, Acesso_WEB_CLI, Acesso_WEB_REC, BASE_ICMS, MOV_REPETRO, Inscricao_Municipal, EMAIL, FATURA_ISS, EMAIL_MONITORACAO, Exporta_Para_Siscomex, Apenc_Liberado, fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
            strSql.Append("WHERE Razao_Social like @RazaoSocial ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append(" AND Lixo = 0 ");
            }
            else
            {
                strSql.Append(" AND Lixo = 1 ");
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
        internal string Incluir(ImportadorDTO importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Importadores (Empresa, Filial, Codigo, Razao_Social, Pais, CNPJ_CPF_COMPLETO, CGC_CPF, Tipo_Importador, Endereco ");
            strSql.Append(",Numero, Complemento, Bairro, Cidade, CEP, UF, Estado, Inscricao_Estadual, Banco, Agencia, Conta_Corrente, Conta_Corrente_Registro ");
            strSql.Append(",Conta_Corrente_Deposito, link, CAE, Telefone, Ativo, Acesso_WEB_MS, Acesso_WEB_CLI, Acesso_WEB_REC, BASE_ICMS, MOV_REPETRO ");
            strSql.Append(",Inscricao_Municipal, EMAIL, FATURA_ISS, EMAIL_MONITORACAO, Exporta_Para_Siscomex, Apenc_Liberado, Lixo ) ");
            strSql.Append("VALUES (@Empresa, @Filial, @Codigo, @Razao_Social, @Pais, @CNPJ_CPF_COMPLETO, @CGC_CPF, @Tipo_Importador, @Endereco ");
            strSql.Append(",@Numero, @Complemento, @Bairro, @Cidade, @CEP, @UF, @Estado, @Inscricao_Estadual, @Banco, @Agencia, @Conta_Corrente, @Conta_Corrente_Registro ");
            strSql.Append(",@Conta_Corrente_Deposito, @link, @CAE, @Telefone, @Ativo, @Acesso_WEB_MS, @Acesso_WEB_CLI, @Acesso_WEB_REC, @BASE_ICMS, @MOV_REPETRO ");
            strSql.Append(",@Inscricao_Municipal, @EMAIL, @FATURA_ISS, @EMAIL_MONITORACAO, @Exporta_Para_Siscomex, @Apenc_Liberado, @Lixo ) ");
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
                    objCommand.Parameters.AddWithValue("@Razao_Social", importador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", importador.Pais);
                    objCommand.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", importador.CnpjCpfCompleto);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", importador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Tipo_Importador", importador.TipoImportador);
                    objCommand.Parameters.AddWithValue("@Endereco", importador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", importador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", importador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", importador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", importador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", importador.Cep);
                    objCommand.Parameters.AddWithValue("@UF", importador.Uf);
                    objCommand.Parameters.AddWithValue("@Estado", importador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", importador.InscricaoEstadual);
                    objCommand.Parameters.AddWithValue("@Banco", importador.Banco);
                    objCommand.Parameters.AddWithValue("@Agencia", importador.Agencia);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente", importador.ContaCorrente);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente_Registro", importador.ContaCorrenteRegistro);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente_Deposito", importador.ContaCorrenteDeposito);
                    objCommand.Parameters.AddWithValue("@link", importador.Link);
                    objCommand.Parameters.AddWithValue("@CAE", importador.Cae);
                    objCommand.Parameters.AddWithValue("@Telefone", importador.Telefone);
                    objCommand.Parameters.AddWithValue("@Ativo", 0);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_MS", importador.AcessoWebMSLogistica);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_CLI", importador.AcessoWebCliente);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_REC", importador.AcessoWebReceita);
                    objCommand.Parameters.AddWithValue("@BASE_ICMS", importador.BaseIcms);
                    objCommand.Parameters.AddWithValue("@MOV_REPETRO", importador.MovimentacaoRepetro);
                    objCommand.Parameters.AddWithValue("@Inscricao_Municipal", importador.InscricaoMunicipal);
                    objCommand.Parameters.AddWithValue("@EMAIL", importador.Email);
                    objCommand.Parameters.AddWithValue("@FATURA_ISS", importador.FaturaIss);
                    objCommand.Parameters.AddWithValue("@EMAIL_MONITORACAO", importador.EmailMonitoracao);
                    objCommand.Parameters.AddWithValue("@Exporta_Para_Siscomex", importador.ExportaParaSiscomex);
                    objCommand.Parameters.AddWithValue("@Apenc_Liberado", importador.ApencLiberado);
                    objCommand.Parameters.AddWithValue("@Lixo", 0);
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
            strSql.Append("FROM Parametros AS P INNER JOIN Importadores AS I ON P.Empresa = I.Empresa AND P.Filial = I.Filial ");
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
        internal Boolean Alterar(ImportadorDTO importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Importadores ");
            strSql.Append("SET Razao_Social = @Razao_Social ");
            strSql.Append(",Pais = @Pais ");
            strSql.Append(",CNPJ_CPF_COMPLETO = @CNPJ_CPF_COMPLETO ");
            strSql.Append(",CGC_CPF = @CGC_CPF ");
            strSql.Append(",Tipo_Importador = @Tipo_Importador ");
            strSql.Append(",Endereco = @Endereco ");
            strSql.Append(",Numero = @Numero ");
            strSql.Append(",Complemento = @Complemento ");
            strSql.Append(",Bairro = @Bairro ");
            strSql.Append(",Cidade = @Cidade ");
            strSql.Append(",CEP = @CEP ");
            strSql.Append(",UF = @UF ");
            strSql.Append(",Estado = @Estado ");
            strSql.Append(",Inscricao_Estadual = @Inscricao_Estadual ");
            strSql.Append(",Banco = @Banco ");
            strSql.Append(",Agencia = @Agencia ");
            strSql.Append(",Conta_Corrente = @Conta_Corrente ");
            strSql.Append(",Conta_Corrente_Registro = @Conta_Corrente_Registro ");
            strSql.Append(",Conta_Corrente_Deposito = @Conta_Corrente_Deposito ");
            strSql.Append(",link = @link ");
            strSql.Append(",CAE = @CAE ");
            strSql.Append(",Telefone = @Telefone ");
            strSql.Append(",Acesso_WEB_MS = @Acesso_WEB_MS ");
            strSql.Append(",Acesso_WEB_CLI = @Acesso_WEB_CLI ");
            strSql.Append(",Acesso_WEB_REC = @Acesso_WEB_REC ");
            strSql.Append(",BASE_ICMS = @BASE_ICMS ");
            strSql.Append(",MOV_REPETRO = @MOV_REPETRO ");
            strSql.Append(",Inscricao_Municipal = @Inscricao_Municipal ");
            strSql.Append(",EMAIL = @EMAIL ");
            strSql.Append(",FATURA_ISS = @FATURA_ISS ");
            strSql.Append(",EMAIL_MONITORACAO = @EMAIL_MONITORACAO ");
            strSql.Append(",Exporta_Para_Siscomex = @Exporta_Para_Siscomex ");
            strSql.Append(",Apenc_Liberado = @Apenc_Liberado ");
            strSql.Append("WHERE Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", importador.Codigo);
                    objCommand.Parameters.AddWithValue("@Razao_Social", importador.RazaoSocial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Pais", importador.Pais);
                    objCommand.Parameters.AddWithValue("@CNPJ_CPF_COMPLETO", importador.CnpjCpfCompleto);
                    objCommand.Parameters.AddWithValue("@CGC_CPF", importador.CgcCpf);
                    objCommand.Parameters.AddWithValue("@Tipo_Importador", importador.TipoImportador);
                    objCommand.Parameters.AddWithValue("@Endereco", importador.Endereco.ToUpper());
                    objCommand.Parameters.AddWithValue("@Numero", importador.Numero);
                    objCommand.Parameters.AddWithValue("@Complemento", importador.Complemento.ToUpper());
                    objCommand.Parameters.AddWithValue("@Bairro", importador.Bairro.ToUpper());
                    objCommand.Parameters.AddWithValue("@Cidade", importador.Cidade.ToUpper());
                    objCommand.Parameters.AddWithValue("@CEP", importador.Cep);
                    objCommand.Parameters.AddWithValue("@UF", importador.Uf);
                    objCommand.Parameters.AddWithValue("@Estado", importador.Estado.ToUpper());
                    objCommand.Parameters.AddWithValue("@Inscricao_Estadual", importador.InscricaoEstadual);
                    objCommand.Parameters.AddWithValue("@Banco", importador.Banco);
                    objCommand.Parameters.AddWithValue("@Agencia", importador.Agencia);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente", importador.ContaCorrente);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente_Registro", importador.ContaCorrenteRegistro);
                    objCommand.Parameters.AddWithValue("@Conta_Corrente_Deposito", importador.ContaCorrenteDeposito);
                    objCommand.Parameters.AddWithValue("@link", importador.Link);
                    objCommand.Parameters.AddWithValue("@CAE", importador.Cae);
                    objCommand.Parameters.AddWithValue("@Telefone", importador.Telefone);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_MS", importador.AcessoWebMSLogistica);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_CLI", importador.AcessoWebCliente);
                    objCommand.Parameters.AddWithValue("@Acesso_WEB_REC", importador.AcessoWebReceita);
                    objCommand.Parameters.AddWithValue("@BASE_ICMS", importador.BaseIcms);
                    objCommand.Parameters.AddWithValue("@MOV_REPETRO", importador.MovimentacaoRepetro);
                    objCommand.Parameters.AddWithValue("@Inscricao_Municipal", importador.InscricaoMunicipal);
                    objCommand.Parameters.AddWithValue("@EMAIL", importador.Email);
                    objCommand.Parameters.AddWithValue("@FATURA_ISS", importador.FaturaIss);
                    objCommand.Parameters.AddWithValue("@EMAIL_MONITORACAO", importador.EmailMonitoracao);
                    objCommand.Parameters.AddWithValue("@Exporta_Para_Siscomex", importador.ExportaParaSiscomex);
                    objCommand.Parameters.AddWithValue("@Apenc_Liberado", importador.ApencLiberado);
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
            strSql.Append("UPDATE Importadores ");
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
        internal DataTable Imprimir(bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CNPJ_CPF_COMPLETO,CGC_CPF,Tipo_Importador,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,Conta_Corrente_Registro,Conta_Corrente_Deposito,link,CAE, ");
            strSql.Append("Telefone,Ativo,Acesso_WEB_MS,Acesso_WEB_CLI,Acesso_WEB_REC,BASE_ICMS,MOV_REPETRO,Inscricao_Municipal,EMAIL,FATURA_ISS,EMAIL_MONITORACAO,Exporta_Para_Siscomex,Apenc_Liberado,fk_contrato_financ ");
            strSql.Append("FROM Importadores ");
            strSql.Append("WHERE Lixo = 0 ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append(" AND Ativo = 1 ");
            }
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
        internal bool Desativar(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Importadores ");
            strSql.Append("SET Ativo = 0 ");
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
        internal bool Ativar(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Importadores ");
            strSql.Append("SET Ativo = 1 ");
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
        internal List<Plataforma> BuscarPlataformas(string pk_importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select PK_Plataforma, Plataforma from Plataformas ");
            strSql.Append("where FK_Importador = @FK_Importador and Excluido = 0");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@FK_Importador", pk_importador);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Plataforma> plataforma = new List<Plataforma>();

                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                plataforma.Add(new Plataforma
                                {
                                    PK_Plataforma = (int)objDr["PK_Plataforma"],
                                    Plataforma = objDr["Plataforma"].ToString()
                                });
                            }
                        }
                        return plataforma;
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
        internal List<Contrato> BuscarContratos(string pk_importador, string pk_contrato = "")
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Contrato, Descricao, Ativo, Setor FROM Contratos ");
            strSql.Append("WHERE Importador = @Importador AND (Ativo = 1 OR Contrato = @Contrato) ");
            strSql.Append("ORDER BY Descricao");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador", pk_importador);
                    objCommand.Parameters.AddWithValue("@Contrato", pk_contrato);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Contrato> contrato = new List<Contrato>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                contrato.Add(new Contrato
                                {
                                    Contrato = objDr["Contrato"].ToString(),
                                    Descricao = objDr["Descricao"].ToString(),
                                    Setor = objDr["Setor"].ToString()
                                });                                
                            }
                        }
                        return contrato;
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
