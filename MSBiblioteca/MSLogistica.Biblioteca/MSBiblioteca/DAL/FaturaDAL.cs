using System.Data.SqlClient;
using System.Text;
using System;
using System.Data;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using MSBiblioteca.Interfaces;
using MSBiblioteca.DTO;
using System.Collections.Generic;
using System.Web.UI;
using MSBiblioteca.MSUtil;
using System.Configuration;

namespace MSBiblioteca.DAL
{
    internal class FaturaDAL : BancoDados
    {
        internal DataTable CarregarGridFaturas(string Processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial, Processo, Codigo, Incoterm, Exportador, Condicao, Moeda,");
            strSql.Append("Valor_Total, Peso_Total, Peso_Total_Acertado, Vinculacao, Acrescimos_Reducoes, peso_LIbra");
            strSql.Append("FROM Faturas WHERE Processo= @Processo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
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
        internal DataTable BuscarPorFatura(string Fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total,");
            strSql.Append("Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda,Cobertura_Cambial,");
            strSql.Append("Motivo_Sem_Cobertura,Modalidade_de_Pagamento,Instituicao_Financiadora,Tipo_Parcela,");
            strSql.Append("Numero_de_parcelas,Periodicidade,Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros,");
            strSql.Append("Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF,DT_PREV_PAG_CAMBIO,");
            strSql.Append("DT_PAG_CAMBIO,STATUS_CAMBIO,CONTRATO_CAMBIO,SALDO_CAMBIO,DtEmissao,Peso_Libra,");
            strSql.Append("Contrato,Local_Inventario,FK_Plataforma FROM Faturas where Codigo = @Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", Fatura);
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
        internal DataTable BuscarPorProcesso(string Processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total,");
            strSql.Append("Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda,Cobertura_Cambial,");
            strSql.Append("Motivo_Sem_Cobertura,Modalidade_de_Pagamento,Instituicao_Financiadora,Tipo_Parcela,");
            strSql.Append("Numero_de_parcelas,Periodicidade,Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros,");
            strSql.Append("Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF,DT_PREV_PAG_CAMBIO,");
            strSql.Append("DT_PAG_CAMBIO,STATUS_CAMBIO,CONTRATO_CAMBIO,SALDO_CAMBIO,DtEmissao,Peso_Libra,");
            strSql.Append("Contrato,Local_Inventario,FK_Plataforma FROM Faturas where Processo = @Processo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
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
        internal DataTable BuscarPorProcessoEFatura(string Processo, string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total,");
            strSql.Append("Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda,Cobertura_Cambial,");
            strSql.Append("Motivo_Sem_Cobertura,Modalidade_de_Pagamento,Instituicao_Financiadora,Tipo_Parcela,");
            strSql.Append("Numero_de_parcelas,Periodicidade,Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros,");
            strSql.Append("Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF,DT_PREV_PAG_CAMBIO,");
            strSql.Append("DT_PAG_CAMBIO,STATUS_CAMBIO,CONTRATO_CAMBIO,SALDO_CAMBIO,DtEmissao,Peso_Libra,");
            strSql.Append("Contrato,Local_Inventario,FK_Plataforma FROM Faturas where Processo = @Processo and Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", Processo);
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
        internal bool Alterar(FaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Faturas ");
            strSql.Append("SET Empresa = @Empresa ");
            strSql.Append(",Filial = @Filial ");
            strSql.Append(",Exportador = @Exportador ");
            strSql.Append(",Incoterm = @Incoterm ");
            strSql.Append(",Vinculacao = @Vinculacao ");
            strSql.Append(",Condicao = @Condicao ");
            strSql.Append(",Valor_Total = @Valor_Total ");
            strSql.Append(",Peso_Total = @Peso_Total ");
            strSql.Append(",Peso_Total_Acertado = @Peso_Total_Acertado ");
            strSql.Append(",Acrescimos_Reducoes = @Acrescimos_Reducoes ");
            strSql.Append(",Moeda = @Moeda ");
            strSql.Append(",DtEmissao = @DtEmissao ");
            strSql.Append(",Peso_Libra = @Peso_Libra ");
            strSql.Append(",FK_Plataforma = @FK_Plataforma ");
            strSql.Append("WHERE processo = @Processo and Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Exportador", obj.FK_Exportador.ToUpper());
                    objCommand.Parameters.AddWithValue("@Incoterm", obj.Incoterm.ToUpper());
                    objCommand.Parameters.AddWithValue("@Vinculacao", obj.Vinculacao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Condicao", obj.Condicao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Valor_Total", obj.Valor_Total);
                    objCommand.Parameters.AddWithValue("@Peso_Total", obj.Peso_Total);
                    objCommand.Parameters.AddWithValue("@Peso_Total_Acertado", obj.Peso_Total_Acertado);
                    objCommand.Parameters.AddWithValue("@Acrescimos_Reducoes", obj.Acrescimos_Reducoes);
                    objCommand.Parameters.AddWithValue("@Moeda", obj.Moeda);
                    objCommand.Parameters.AddWithValue("@DtEmissao", obj.DtEmissao);
                    objCommand.Parameters.AddWithValue("@Peso_Libra", obj.Peso_Libra);
                    objCommand.Parameters.AddWithValue("@FK_Plataforma", obj.FK_Plataforma);
                    objCommand.Parameters.AddWithValue("@Processo", obj.Processo);
                    objCommand.Parameters.AddWithValue("@Codigo", obj.Codigo.ToUpper());
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
        internal bool Excluir(FaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("DELETE FROM Faturas WHERE processo = @Processo and Codigo = @Codigo ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.CommandText = strSql.ToString();
                    objCommand.Parameters.AddWithValue("@Processo", obj.Processo);
                    objCommand.Parameters.AddWithValue("@Codigo", obj.Codigo);
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
        internal bool Incluir(FaturaDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Faturas (Empresa,Filial,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao ");
            strSql.Append(",Valor_Total,Peso_Total,Peso_Total_Acertado,Acrescimos_Reducoes,Moeda ");
            strSql.Append(",DtEmissao,Peso_Libra,FK_Plataforma) ");
            strSql.Append("VALUES(@Empresa,@Filial,@Processo,@Codigo,@Exportador ");
            strSql.Append(",@Incoterm,@Vinculacao,@Condicao,@Valor_Total,@Peso_Total,@Peso_Total_Acertado,@Acrescimos_Reducoes ");
            strSql.Append(",@Moeda,@DtEmissao,@Peso_Libra,@FK_Plataforma)");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial.ToUpper());
                    objCommand.Parameters.AddWithValue("@Processo", obj.Processo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Codigo", obj.Codigo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Exportador", obj.FK_Exportador.ToUpper());
                    objCommand.Parameters.AddWithValue("@Incoterm", obj.Incoterm.ToUpper());
                    objCommand.Parameters.AddWithValue("@Vinculacao", obj.Vinculacao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Condicao", obj.Condicao.ToUpper());
                    objCommand.Parameters.AddWithValue("@Valor_Total", obj.Valor_Total);
                    objCommand.Parameters.AddWithValue("@Peso_Total", obj.Peso_Total);
                    objCommand.Parameters.AddWithValue("@Peso_Total_Acertado", obj.Peso_Total_Acertado);
                    objCommand.Parameters.AddWithValue("@Acrescimos_Reducoes", obj.Acrescimos_Reducoes);
                    objCommand.Parameters.AddWithValue("@Moeda", obj.Moeda);
                    objCommand.Parameters.AddWithValue("@DtEmissao", obj.DtEmissao);
                    objCommand.Parameters.AddWithValue("@Peso_Libra", obj.Peso_Libra);
                    objCommand.Parameters.AddWithValue("@FK_Plataforma", obj.FK_Plataforma);
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
        internal List<ItensFatura> BuscarItensDaFatura(string pk_processo, string pk_fatura)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial ,Processo, Fatura, Sequencial, Pagina, Produto, Descricao_Produto, Fabricante ");
            strSql.Append(",NCM, Unidade, Unidade_Medida_Estat, Destaque_NCM, NALADI, Referencia, Numero_serie, Referencia_projeto ");
            strSql.Append(",PO, Seqpo, Quantidade, Valor_Unitario, Valor_Total, Peso_Unitario, Peso_Unitario_Acertado, Peso_Total ");
            strSql.Append(",Peso_Total_Acertado, Saldo_Tributavel, Rateio_Acrescimos, Rateio_Deducoes, Rateio_Embalagem, Rateio_Frete_Interno_imp ");
            strSql.Append(",Rateio_Seguro_Interno, Rateio_outras_import, Rateio_startup, Rateio_jurosfin, Rateio_montagem, Rateio_Frete_Interno_exp ");
            strSql.Append(",Rateio_carga_exp, Rateio_outras_export, Rateio_frete_fatura, Rateio_seguro_fatura, Rateio_carga_imp, Rateio_Despesas_ate_FOB ");
            strSql.Append(",Rateio_Frete_prepaid, Rateio_Frete_collect, Rateio_Frete_ternac, Rateio_Seguro, Valor_Aduaneiro, Valor_mercadoria ");
            strSql.Append(",VMLE, Base_Calc_II, Acresc_reduc_Valaduan, COD_SIT, CNPJ, Fiel_nome, Fiel_cpf, Contrato, Local_Inventario ");
            strSql.Append(",Rateio_Taxa_Siscomex, Descricao_Produto_ing, Codigo_Produto, Sequencial_Produto ");
            strSql.Append("FROM ItensFaturas ");
            strSql.Append("WHERE Sequencial <> 'XXX' and Processo = @Processo and Fatura = @Fatura ");
            strSql.Append("ORDER BY CAST(Sequencial as int)");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    List<ItensFatura> listaItens = new List<ItensFatura>();
                    objCommand.Parameters.AddWithValue("@Processo", pk_processo);
                    objCommand.Parameters.AddWithValue("@Fatura", pk_fatura);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaItens.Add(new ItensFatura
                                {
                                    Pagina = objDr["Pagina"].ToString(),
                                    Sequencial = objDr["Sequencial"].ToString(),
                                    Fabricante = objDr["Fabricante"].ToString(),
                                    Codigo_Produto = objDr["Codigo_Produto"].ToString(),
                                    Produto = objDr["Produto"].ToString(),
                                    Descricao_Produto = objDr["Descricao_Produto"].ToString(),
                                    Descricao_Produto_ing = objDr["Descricao_Produto_ing"].ToString(),
                                    NCM = objDr["NCM"].ToString(),
                                    Destaque_NCM = objDr["Destaque_NCM"].ToString(),
                                    NALADI = objDr["NALADI"].ToString(),
                                    Unidade_Medida_Estat = objDr["Unidade_Medida_Estat"].ToString(),
                                    Unidade = objDr["Unidade"].ToString(),
                                    Referencia_projeto = objDr["Referencia_projeto"].ToString(),
                                    Referencia = objDr["Referencia"].ToString(),
                                    Numero_serie = objDr["Numero_serie"].ToString(),
                                    PO = objDr["PO"].ToString(),
                                    Seqpo = objDr["Seqpo"].ToString(),
                                    Quantidade = (double)objDr["Quantidade"],
                                    Valor_Unitario = (double)objDr["Valor_Unitario"],
                                    Valor_Total = (double)objDr["Valor_Total"],
                                    Peso_Total = (double)objDr["Peso_Total"],
                                    Peso_Unitario_Acertado = (double)objDr["Peso_Unitario_Acertado"],
                                    Peso_Total_Acertado = (double)objDr["Peso_Total_Acertado"]
                                });
                            }
                        }
                    }
                    return listaItens;
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

        internal List<ItensFatura> BuscarItensDaFatura(string pk_processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Empresa, Filial ,Processo, Fatura, Sequencial, Pagina, Produto, Descricao_Produto, Fabricante ");
            strSql.Append(",NCM, Unidade, Unidade_Medida_Estat, Destaque_NCM, NALADI, Referencia, Numero_serie, Referencia_projeto ");
            strSql.Append(",PO, Seqpo, Quantidade, Valor_Unitario, Valor_Total, Peso_Unitario, Peso_Unitario_Acertado, Peso_Total ");
            strSql.Append(",Peso_Total_Acertado, Saldo_Tributavel, Rateio_Acrescimos, Rateio_Deducoes, Rateio_Embalagem, Rateio_Frete_Interno_imp ");
            strSql.Append(",Rateio_Seguro_Interno, Rateio_outras_import, Rateio_startup, Rateio_jurosfin, Rateio_montagem, Rateio_Frete_Interno_exp ");
            strSql.Append(",Rateio_carga_exp, Rateio_outras_export, Rateio_frete_fatura, Rateio_seguro_fatura, Rateio_carga_imp, Rateio_Despesas_ate_FOB ");
            strSql.Append(",Rateio_Frete_prepaid, Rateio_Frete_collect, Rateio_Frete_ternac, Rateio_Seguro, Valor_Aduaneiro, Valor_mercadoria ");
            strSql.Append(",VMLE, Base_Calc_II, Acresc_reduc_Valaduan, COD_SIT, CNPJ, Fiel_nome, Fiel_cpf, Contrato, Local_Inventario ");
            strSql.Append(",Rateio_Taxa_Siscomex, Descricao_Produto_ing, Codigo_Produto, Sequencial_Produto ");
            strSql.Append("FROM ItensFaturas ");
            strSql.Append("WHERE Sequencial <> 'XXX' and Processo = @Processo ");
            strSql.Append("ORDER BY CAST(Sequencial as int)");

            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    List<ItensFatura> listaItens = new List<ItensFatura>();
                    objCommand.Parameters.AddWithValue("@Processo", pk_processo);                    
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaItens.Add(new ItensFatura
                                {
                                    Pagina = objDr["Pagina"].ToString(),
                                    Sequencial = objDr["Sequencial"].ToString(),
                                    Fabricante = objDr["Fabricante"].ToString(),
                                    Codigo_Produto = objDr["Codigo_Produto"].ToString(),
                                    Produto = objDr["Produto"].ToString(),
                                    Descricao_Produto = objDr["Descricao_Produto"].ToString(),
                                    Descricao_Produto_ing = objDr["Descricao_Produto_ing"].ToString(),
                                    NCM = objDr["NCM"].ToString(),
                                    Destaque_NCM = objDr["Destaque_NCM"].ToString(),
                                    NALADI = objDr["NALADI"].ToString(),
                                    Unidade_Medida_Estat = objDr["Unidade_Medida_Estat"].ToString(),
                                    Unidade = objDr["Unidade"].ToString(),
                                    Referencia_projeto = objDr["Referencia_projeto"].ToString(),
                                    Referencia = objDr["Referencia"].ToString(),
                                    Numero_serie = objDr["Numero_serie"].ToString(),
                                    PO = objDr["PO"].ToString(),
                                    Seqpo = objDr["Seqpo"].ToString(),
                                    Quantidade = (double)objDr["Quantidade"],
                                    Valor_Unitario = (double)objDr["Valor_Unitario"],
                                    Valor_Total = (double)objDr["Valor_Total"],
                                    Peso_Total = (double)objDr["Peso_Total"],
                                    Peso_Unitario_Acertado = (double)objDr["Peso_Unitario_Acertado"],
                                    Peso_Total_Acertado = (double)objDr["Peso_Total_Acertado"]
                                });
                            }
                        }
                    }
                    return listaItens;
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

        internal Exportador BuscarExportador(string Codigo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo,Razao_Social,Pais,CGC_CPF,Endereco,Numero,Complemento, ");
            strSql.Append("Bairro,Cidade,CEP,UF,Estado,Inscricao_Estadual, Importador ");
            strSql.Append("FROM Exportadores ");
            strSql.Append("WHERE Codigo = @Codigo ");
     
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", Codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Exportador exportador = new Exportador();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                exportador.Codigo = objDr["codigo"].ToString();
                                exportador.RazaoSocial = objDr["Razao_Social"].ToString();
                                exportador.CgcCpf = objDr["CGC_CPF"].ToString();
                                exportador.Pais = objDr["Pais"].ToString();
                                exportador.Endereco = objDr["Endereco"].ToString();
                                exportador.FK_Importador = objDr["Importador"].ToString();
                                exportador.Cidade = objDr["Cidade"].ToString();
                                exportador.UF = objDr["UF"].ToString();
                            }
                        }
                        return exportador;
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


        /// <summary>
        /// Calcula e retorna o valor total do frete.
        /// </summary>
        /// <param name="processo">Código do processo</param>
        /// <param name="fatura">Código da fatura</param>
        /// <returns>Total Frete</returns>
        public decimal ObterTotalDoFrete(string processo, string fatura)
        {
            string connectionString = null;
            try
            {
                connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            }
            catch
            {
                connectionString = @"Data Source=MSSQL00\MSSQL00;Initial Catalog=MS2000_HOMOLOG;Persist Security Info=True;User ID=sa;Password=lasbrug30@;";
            }

            SqlConnection con = new SqlConnection(connectionString);
            decimal totalFrete = 0;
            string query = "SELECT SUM((itf.Rateio_Frete_prepaid * itf.Quantidade)* ptc.Taxa_conversao) as 'Total_Frete' " +
                           "FROM ItensFaturas itf " +
                           "INNER JOIN Processos ON itf.Processo = Processos.Codigo " +
                           "INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo) " +
                           "INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo) " +
                           "WHERE (Itf.Processo= @Processo and Faturas.Codigo = @Fatura)";
            try
            {
                con.Open();
                using (SqlCommand objCommand = new SqlCommand(query, con))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    objCommand.Parameters.AddWithValue("@Fatura", fatura);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                totalFrete = Convert.ToDecimal(objDr["Total_Frete"]);
                            }
                        }
                    }
                    return totalFrete;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}

