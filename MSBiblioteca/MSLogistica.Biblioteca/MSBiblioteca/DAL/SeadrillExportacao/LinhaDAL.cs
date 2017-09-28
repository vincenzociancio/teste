using MSBiblioteca.BLL.SeadrillExportacao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace MSBiblioteca.DAL.SeadrillExportacao
{
    internal class LinhaDAL : BancoDados
    {
        readonly List<Linha> _objList;

        public LinhaDAL()
        {
            _objList = new List<Linha>();
        }

        internal List<Linha> ObterLinhas(string processo)
        {
            string query = "SELECT Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS, itf.Processo, itf.Fatura, cast([Pagina] as real) AS Pag, CAST(itf.Sequencial AS int) AS Sequencial, " +
                                 "itf.Codigo_Produto, Descricao_Produto AS 'DescricaoItem', Fabricantes_Produtores.Razao_Social AS Fabricante,  " +
                                 "itf.NCM, itf.Unidade, itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie,  " +
                                 "itf.Referencia_projeto, itf.PO, itf.Seqpo, itf.Quantidade, itf.Valor_Unitario, itf.Valor_Total, itf.Peso_Unitario,  " +
                                 "itf.Peso_Unitario_Acertado, itf.Peso_Total,itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci,  " +
                                 "itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno,  " +
                                 "itf.Rateio_outras_import, itf.Rateio_startup, itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, " +
                                 "itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp,  " +
                                 "itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro,  " +
                                 "itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, Processos_ADICOES_ICMS_PIS_COFINS.DA,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional,  " +
                                 "Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,   " +
                                 "([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW  " +
                                 "FROM ItensFaturas AS itf  " +
                                 "LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo " +
                                 "INNER JOIN Tributacao_Item_Fatura ON itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item " +
                                 "AND itf.Fatura = Tributacao_Item_Fatura.Fatura AND itf.Processo = Tributacao_Item_Fatura.Processo " +
                                 "INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao " +
                                 "AND Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo " +
                                 "INNER JOIN Processos ON itf.Processo = Processos.Codigo  " +
                                 "INNER JOIN Faturas ON itf.Fatura = Faturas.Codigo AND itf.Processo = Faturas.Processo " +
                                 "INNER JOIN Processos_Taxas_Conversao AS ptc ON Faturas.Moeda = ptc.Moeda AND Faturas.Processo = ptc.Processo " +
                                 "INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo  " +
                                 "WHERE [Pagina] <> 'XXX' AND [itf].[Sequencial] <> 'XXX' AND Itf.Processo=@Processo " +
                                 "ORDER BY Tributacao_Item_Fatura.Adicao";
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(query, Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                _objList.Add(new Linha
                                {
                                    Adicao = Convert.ToInt32(objDr["Adicao"]),
                                    Sequencial = Convert.ToInt32(objDr["Sequencial"]),
                                    DescricaoDoItem = objDr["DescricaoItem"].ToString().Length <= 120 ? objDr["DescricaoItem"].ToString() : objDr["DescricaoItem"].ToString().Substring(1,120),
                                    CodigoItem = objDr["Codigo_Produto"].ToString(),
                                    NCM = objDr["NCM"].ToString(),
                                    QdtDeItem = Convert.ToInt32(objDr["Quantidade"]),
                                    ValorUnitario = Convert.ToDecimal(objDr["Valor_Unitario"]),
                                    ValorTotal = Convert.ToDecimal(objDr["Valor_Total"]),
                                    TaxaConversao = Convert.ToDecimal(objDr["Taxa_conversao"]),
                                    PesoUnitario = Convert.ToDecimal(objDr["Peso_Unitario_Acertado"]),
                                    PesoTotal = Convert.ToDecimal(objDr["Peso_Total_Acertado"]),
                                    RateioFretePrePg = Convert.ToDecimal(objDr["Rateio_Frete_prepaid"]),
                                    AliquotaII = Convert.ToDecimal(objDr["Aliq_NCM_II"]),
                                    BaseII = Convert.ToDecimal(objDr["VA_NEW"]),
                                    ValorII = Convert.ToDecimal(objDr["VALOR_II"]),
                                    ValorFOB = Convert.ToDecimal(objDr["FOB"]),
                                    ValorVMLE = Convert.ToDecimal(objDr["VMLE"]),
                                    AliquotaIPI = Convert.ToDecimal(objDr["Aliq_NCM_IPI"]),
                                    BaseIPI = Convert.ToDecimal(objDr["VA_NEW"]),
                                    ValorIPI = Convert.ToDecimal(objDr["valor_ipi"]),
                                    AliquotaPIS = Convert.ToDecimal(objDr["aliq_pis_pasep"]),
                                    AliquotaCOFINS = Convert.ToDecimal(objDr["aliq_cofins"]),
                                    NumeroDaFatura = objDr["Fatura"].ToString(),
                                    AliquotaICMS = Convert.ToDecimal(objDr["aliq_icms"]),
                                    BasePIS = Convert.ToDecimal(objDr["VA_NEW"]),
                                    BaseCOFINS = Convert.ToDecimal(objDr["VA_NEW"]),
                                    ValorPIS = Convert.ToDecimal(objDr["valor_pis_pasep"]),
                                    ValorCOFINS = Convert.ToDecimal(objDr["valor_cofins"]),
                                    AliquotaFECP = Convert.ToDecimal(objDr["aliq_icms_extra"]),
                                    TaxaSiscomex = Convert.ToDecimal(objDr["DA"]), // Tem que fazer um sum com distinct adição
                                    ValorFECP = Convert.ToDecimal(objDr["valor_icms_extra"]),
                                    RegimeTributacao = Convert.ToInt32(objDr["CD_REGIME_TRIBUTAR_PISCOFINS"]),
                                    Valor_Aduaneiro = Convert.ToDecimal(objDr["Valor_Aduaneiro"])
                                });
                            }
                        }
                        return _objList.ToList();
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

