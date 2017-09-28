using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using MSBiblioteca.MSUtil;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class ExportacaoSeadrillController : Controller
    {
        private MS2000Context db = new MS2000Context();

        public ActionResult Index(string processo)
        {
            if (string.IsNullOrEmpty(processo))
            {
                return View();
            }
            else
            {
               
                    List<string> ExportarTXT = ObterArquivoTxt(processo);

                    Session["DadosTXT"] = new MultiSelectList(ExportarTXT);
                    Session["ProcessosTXT"] = processo;
                    return View();                
            }
           // return View();
        }

        public List<LinhaViewModel> ObterLinhas(string processo)
        {
            string query = "SELECT cast(Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS as int) as CD_REGIME_TRIBUTAR_PISCOFINS , itf.Processo, itf.Fatura, cast([Pagina] as int) AS Pag, cast(itf.Sequencial AS int) AS Sequencial, " +
                           "itf.Codigo_Produto, Descricao_Produto AS 'DescricaoItem', Fabricantes_Produtores.Razao_Social AS Fabricante,  " +
                           "itf.NCM, itf.Unidade, itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie,  " +
                           "itf.Referencia_projeto, itf.PO, itf.Seqpo, CAST(itf.Quantidade as int) as Quantidade, CAST(itf.Valor_Unitario AS DECIMAL(10,4)) as Valor_Unitario, CAST(itf.Valor_Total AS DECIMAL(10,4)) as Valor_Total , CAST(itf.Peso_Unitario AS DECIMAL(10,4)) as Peso_Unitario ,  " +
                           "CAST(itf.Peso_Unitario_Acertado AS DECIMAL(10,4)) as Peso_Unitario_Acertado, CAST(itf.Peso_Total AS DECIMAL(10,4)) as Peso_Total ,CAST(itf.Peso_Total_Acertado AS DECIMAL(10,4)) as Peso_Total_Acertado , cast([Descricao_Produto_ing] as varchar(5000)) AS desci,  " +
                           "itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno,  " +
                           "itf.Rateio_outras_import, itf.Rateio_startup, itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, " +
                           "itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp,  " +
                           "itf.Rateio_Despesas_ate_FOB, cast(itf.Rateio_Frete_prepaid AS DECIMAL(10,4)) as Rateio_Frete_prepaid, itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro,  " +
                           "CAST(itf.Valor_Aduaneiro AS DECIMAL(10,4)) as Valor_Aduaneiro , itf.Valor_mercadoria, CAST((itf.VMLE-itf.Acresc_reduc_Valaduan) AS DECIMAL(10,4)) as VMLE, CAST(ptc.Taxa_conversao AS DECIMAL(10,4)) as Taxa_conversao ,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.DA AS DECIMAL(10,4)) AS TaxaSiscomex , Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, CAST(Processos_ADICOES_ICMS_PIS_COFINS.DA AS DECIMAL(10,4)) as DA,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II AS DECIMAL(10,4)) as Aliq_NCM_II, CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI AS DECIMAL(10,4)) as Aliq_NCM_IPI , CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP AS DECIMAL(10,4)) AS Aliq_PIS_PASEP,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS  AS DECIMAL(10,4)) as Aliq_COFINS , CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS AS DECIMAL(10,4)) as Aliq_ICMS , CAST(Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA AS DECIMAL(10,4)) AS Aliq_ICMS_EXTRA,  " +
                           "Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, CAST(Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II AS DECIMAL(10,4)) as VALOR_II,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI AS DECIMAL(10,4)) as VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, CAST(Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA  AS DECIMAL(10,4)) as VALOR_ICMS_EXTRA ,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP AS DECIMAL(10,4)) as VALOR_PIS_PASEP , CAST(Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS AS DECIMAL(10,4)) as VALOR_COFINS ,  " +
                           "Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional,  " +
                           "Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional,  " +
                           "CAST(Processos_ADICOES_ICMS_PIS_COFINS.FOB AS DECIMAL(10,4)) as FOB , CAST(Tributacao_Item_Fatura.Adicao as Int) as Adicao,   " +
                           "CAST(([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) as DECIMAL(10,4) ) AS VA_NEW  " +
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
            var dadosProcesso = db.Database.SqlQuery<LinhaViewModel>(query, new SqlParameter("@Processo", processo)).ToList();

            var lista = new List<LinhaViewModel>();

            foreach (var i in dadosProcesso.ToList())
            {
                lista.Add(new LinhaViewModel
                {
                    Adicao = Convert.ToInt32(i.Adicao),
                    Sequencial = Convert.ToInt32(i.Sequencial),
                    DescricaoItem = i.DescricaoItem,
                    Codigo_Produto = i.Codigo_Produto,
                    NCM = i.NCM,
                    Quantidade = Convert.ToInt32(i.Quantidade),
                    Valor_Unitario = Convert.ToDecimal(i.Valor_Unitario),
                    Valor_Total = Convert.ToDecimal(i.Valor_Total),
                    Taxa_conversao = Convert.ToDecimal(i.Taxa_conversao),
                    Peso_Unitario_Acertado = Convert.ToDecimal(i.Peso_Unitario_Acertado),
                    Peso_Total_Acertado = Convert.ToDecimal(i.Peso_Total_Acertado),
                    Rateio_Frete_prepaid = Convert.ToDecimal(i.Rateio_Frete_prepaid),
                    Aliq_NCM_II = Convert.ToDecimal(i.Aliq_NCM_II),
                    VA_NEW = Convert.ToDecimal(i.VA_NEW),
                    VALOR_II = Convert.ToDecimal(i.VALOR_II),
                    FOB = Convert.ToDecimal(i.FOB),
                    VMLE = Convert.ToDecimal(i.VMLE),
                    Aliq_NCM_IPI = Convert.ToDecimal(i.Aliq_NCM_IPI),
                    VA_NEW1 = Convert.ToDecimal(i.VA_NEW),
                    valor_ipi = Convert.ToDecimal(i.valor_ipi),
                    aliq_pis_pasep = Convert.ToDecimal(i.aliq_pis_pasep),
                    aliq_cofins = Convert.ToDecimal(i.aliq_cofins),
                    Fatura = i.Fatura,
                    aliq_icms = Convert.ToDecimal(i.aliq_icms),
                    VA_NEW2 = Convert.ToDecimal(i.VA_NEW),
                    VA_NEW3 = Convert.ToDecimal(i.VA_NEW),
                    valor_pis_pasep = Convert.ToDecimal(i.valor_pis_pasep),
                    valor_cofins = Convert.ToDecimal(i.valor_cofins),
                    aliq_icms_extra = Convert.ToDecimal(i.aliq_icms_extra),
                    TaxaSiscomex = Convert.ToDecimal(i.TaxaSiscomex), // Tem que fazer um sum com distinct adição
                    valor_icms_extra = Convert.ToDecimal(i.valor_icms_extra),
                    CD_REGIME_TRIBUTAR_PISCOFINS = Convert.ToInt32(i.CD_REGIME_TRIBUTAR_PISCOFINS),
                    Valor_Aduaneiro = Convert.ToDecimal(i.Valor_Aduaneiro)
                });
            }
            return lista;
        }

        public List<CabecalhoViewmodel> ObterCabecalho(string processo)
        {
            string query = "SELECT cast(TIF.CD_REGIME_TRIBUTAR_PISCOFINS as int) as CD_REGIME_TRIBUTAR_PISCOFINS, p.Codigo, p.NR_DECLARACAO_IMP as 'dctoImportacao'," +
                           "SUBSTRING(p.DT_REGISTRO_DI, 5, 4)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 3, 2)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 1, 2) as 'dataDctoImportacao'," +
                           "cast(CAST(p.DT_DESEMBARACO AS DATE) as varchar(10)) as 'data_desembaraco'," +
                           "CAST(p.Valor_FOB  AS DECIMAL(10,4)) as Valor_FOB, CAST(p.Valor_CIF  AS DECIMAL(10,4)) as Valor_CIF ,f.Codigo as 'nfatura'," +
                           "f.Moeda, CAST(f.Peso_Total_Acertado  AS DECIMAL(10,4)) as 'Peso_Liquido'," +
                           "CAST(CP.peso_bruto AS DECIMAL(10,4)) as 'peso_bruto', " +
                           "CASE f.cobertura_cambial WHEN 1 THEN 'Y' ELSE 'N' " +
                           "END as 'COBERTURA_CAMBIAL', CASE f.Moeda " +
                           "WHEN '220' THEN 'USD' WHEN '978' THEN 'EUR' " +
                           "WHEN '790' THEN 'BRL' ELSE 'OUT' END AS 'Cod_Moeda', " +
                           "CP.URF_Despacho, CAST(cp.Valor_Seguro  AS DECIMAL(10,4)) as Valor_Seguro , " +
                           "CASE TIF.CD_REGIME_TRIBUTAR_PISCOFINS WHEN '1' THEN '2' " +
                           "WHEN '5' THEN '1' ELSE '3' " +
                           "END AS 'NATUREZA_OPERACAO', " +
                           "CASE WHEN(Expo.CGC_CPF IS null) OR (Expo.CGC_CPF = '') then IMP.CNPJ_CPF_COMPLETO " +
                           "else Expo.CGC_CPF end AS 'CNPJ_DEST', IMP.CNPJ_CPF_COMPLETO, CAST(ptc.Taxa_conversao AS DECIMAL(10,2))AS TAXA, " +
                           "eb.DescricaoEmbalagem as 'Volume',CAST(eb.Quantidade as int) as 'QdtVolume', Expo.CodigoNoCliente, UF.DESCRICAO AS 'DESCRI_UF_DESEMB' " +
                           "FROM processos as p " +
                           "INNER join Faturas as f on (p.Codigo = f.processo) " +
                           "INNER join Conhecimento_Processo as CP on (P.Codigo = CP.Processo)" +
                           "INNER join Tributacao_Item_Fatura as TIF on (f.Codigo = TIF.Fatura) " +
                           "INNER join Exportadores as Expo on (f.Exportador = Expo.Codigo) AND (f.Filial = Expo.Filial) " +
                           "INNER JOIN Importadores AS IMP ON (p.Importador = IMP.Codigo) " +
                           "INNER JOIN Processos_Taxas_Conversao AS ptc ON (f.Moeda = ptc.Moeda) AND (f.Processo = ptc.Processo) " +
                           "INNER JOIN Embalagem_Processo AS eb ON (p.Codigo = eb.Processo) " +
                           "INNER JOIN TAB_URF AS UF ON (UF.Codigo = CP.URF_Despacho) " +
                           "WHERE p.Codigo = @Processo " +
                           "GROUP BY TIF.CD_REGIME_TRIBUTAR_PISCOFINS,CP.peso_bruto," +
                           "p.Codigo, p.NR_DECLARACAO_IMP ," +
                           "p.Valor_FOB, p.Valor_CIF,f.Codigo," +
                           "f.Moeda,f.Peso_Total_Acertado," +
                           "f.Peso_Total," +
                           "f.Cobertura_Cambial," +
                           "CP.URF_Despacho, " +
                           "cp.Valor_Seguro, " +
                           "eb.DescricaoEmbalagem, " +
                           "eb.Quantidade, " +
                           "Expo.CodigoNoCliente, " +
                           "UF.DESCRICAO," +
                           "p.Tipo_Declaracao," +
                           "p.DT_DESEMBARACO," +
                           "IMP.CNPJ_CPF_COMPLETO," +
                           "Expo.CGC_CPF," +
                           "ptc.Taxa_conversao," +
                           "p.DT_REGISTRO_DI ORDER BY NATUREZA_OPERACAO";
            var dadosProcesso = db.Database.SqlQuery<CabecalhoViewmodel>(query, new SqlParameter("@Processo", processo)).ToList();

            var lista = new List<CabecalhoViewmodel>();
            foreach (var i in dadosProcesso.ToList())
            {
                lista.Add(new CabecalhoViewmodel
                {
                    Processo = processo,
                    Codigo = i.Codigo,
                    COBERTURA_CAMBIAL = i.COBERTURA_CAMBIAL,
                    NATUREZA_OPERACAO = i.NATUREZA_OPERACAO,
                    Moeda = i.Moeda,
                    CodigoNoCliente = i.CodigoNoCliente,
                    CNPJ_CPF_COMPLETO = i.CNPJ_CPF_COMPLETO,
                    CnpjAdqMercadoria = i.CNPJ_CPF_COMPLETO,
                    dctoImportacao = i.dctoImportacao,
                    dataDctoImportacao = i.dataDctoImportacao,
                    nfatura = i.nfatura,
                    DESCRI_UF_DESEMB = i.DESCRI_UF_DESEMB,
                    Cod_Moeda = i.Cod_Moeda,
                    TAXA = Convert.ToDecimal(i.TAXA),
                    data_desembaraco = i.data_desembaraco,
                    peso_bruto = Convert.ToDecimal(i.peso_bruto),
                    Peso_Liquido = Convert.ToDecimal(i.Peso_Liquido),
                    Valor_FOB = Convert.ToDecimal(i.Valor_FOB),
                    Valor_CIF = Convert.ToDecimal(i.Valor_CIF),
                    QdtVolume = Convert.ToInt32(i.QdtVolume),
                    Volume = i.Volume,
                    CD_REGIME_TRIBUTAR_PISCOFINS = Convert.ToInt32(i.CD_REGIME_TRIBUTAR_PISCOFINS)
                });
            }
            return lista;
        }

        public List<AcrescimoFaturaViewModel> BuscarPorProcesso(string Processo)
        {

            const string query = "SELECT Empresa, Filial, Processo, Fatura, CD_MET_ACRES_VALOR, Descricao, CAST(VL_ACRESCIMO_MOEDA AS DECIMAL(10,2)) as VL_ACRESCIMO_MOEDA, CD_MD_NEGOC_ACRES " +
                                 ",CAST(VL_ACRESCIMO_MN AS DECIMAL(10,2)) as VL_ACRESCIMO_MN FROM Acrescimos_Faturas WHERE Processo = @Processo";

            var dadosProcesso = db.Database.SqlQuery<AcrescimoFaturaViewModel>(query, new SqlParameter("@Processo", Processo)).ToList();

            var lista = new List<AcrescimoFaturaViewModel>();
            foreach (var i in dadosProcesso.ToList())
            {
                lista.Add(new AcrescimoFaturaViewModel
                {
                    Empresa = i.Empresa,
                    Filial = i.Filial,
                    Processo = i.Processo,
                    Fatura = i.Fatura,
                    Cd_Met_Acres_Valor = i.Cd_Met_Acres_Valor,
                    Descricao = i.Descricao,
                    Vl_Acrescimo_Moeda = Convert.ToDecimal(i.Vl_Acrescimo_Moeda),
                    Cd_Md_Negoc_Acres = i.Cd_Md_Negoc_Acres,
                    Vl_Acrescimo_Mn = Convert.ToDecimal(i.Vl_Acrescimo_Mn)
                });
            }
            return lista;
        }

        public List<string> ObterArquivoTxt(string processo)
        {
            //var objcabecalho = new CabecalhoViewmodel();
            //var objlinha = new LinhaViewModel();
            //var objacrescimo = new Acrescimos_Faturas();
            var lista = new List<string>();

            var cabecalho = ObterCabecalho(processo);
            var linha = ObterLinhas(processo);
            var listaDeAcrescimo = BuscarPorProcesso(processo);

            //-------------------------------------------------------------------------------------------------
            //calculando o total taxa siscomex com distinct na adição
            var valortotalTaxaSiscomex = (from l in linha
                                          group l by l.Adicao
                                              into g
                                              select new
                                              {
                                                  Key = g.Key,
                                                  soma = g.Select(l => l.TaxaSiscomex).Distinct().Sum()
                                              }).ToList().Sum(c => c.soma);

            //calculando valor total dos produtos
            var valortotalprodutos = (from l in linha
                                      select l.Valor_Total).Sum();
            var somatotalTaxaSiscomexTotalProdudos = (valortotalTaxaSiscomex + valortotalprodutos);

            var divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos = (somatotalTaxaSiscomexTotalProdudos / valortotalprodutos);

            //--------------------------------------------------------------------------------------------------

            foreach (var cab in cabecalho)
            {
                #region Montando cabeçalho

                var novosTotais = linha
                    .Where(x => x.Fatura == cab.nfatura && x.CD_REGIME_TRIBUTAR_PISCOFINS == cab.CD_REGIME_TRIBUTAR_PISCOFINS)
                    .GroupBy(g => new { g.Fatura, g.CD_REGIME_TRIBUTAR_PISCOFINS })
                    .Select(group => new
                    {
                        NumeroDaFatura = group.Key.Fatura,
                        RegimeTributacao = group.Key.CD_REGIME_TRIBUTAR_PISCOFINS,
                        TotalFOB = group.Sum(a => a.Valor_Aduaneiro * a.Taxa_conversao),
                        TotalCIF = group.Sum(a => ((a.Valor_Aduaneiro + a.Rateio_Frete_prepaid) * a.Taxa_conversao)),
                        TotalFrete = group.Sum(a => ((a.Rateio_Frete_prepaid + a.Quantidade) * a.Taxa_conversao)),
                        TotalPesoBruto = group.Sum(a => a.Peso_Total_Acertado),
                        TotalPesoLinq = group.Sum(a => a.Peso_Total_Acertado),
                    }).ToList();

                var strArg = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|{21}",
                                              cab.Identificador,
                                              cab.COBERTURA_CAMBIAL,
                                              cab.NATUREZA_OPERACAO.PadLeft(2, '0'),
                                              cab.Moeda.PadLeft(2, ' '),
                                              cab.CodigoNoCliente,
                                              cab.CNPJ_CPF_COMPLETO,
                                              cab.CnpjAdqMercadoria,
                                              cab.dctoImportacao,
                                              cab.dataDctoImportacao,
                                              cab.nfatura,
                                              cab.DESCRI_UF_DESEMB,
                                              cab.Cod_Moeda.PadLeft(2, ' '),
                                              cab.TAXA.CasasDecimais(3),
                                              cab.data_desembaraco,
                                              novosTotais[0].TotalPesoBruto.CasasDecimais(3),//cab.PesoBruto.CasasDecimais(3),
                                              novosTotais[0].TotalPesoLinq.CasasDecimais(3),//cab.PesoLiquido.CasasDecimais(3),
                                              novosTotais[0].TotalFOB.CasasDecimais(3),//cab.ValorFOB.CasasDecimais(3),
                                              novosTotais[0].TotalFrete.CasasDecimais(3),//cab.ValorFrete.CasasDecimais(3),
                                              cab.Valor_Seguro.CasasDecimais(3),
                                              novosTotais[0].TotalCIF.CasasDecimais(3),//cab.ValorCIF.CasasDecimais(3),
                                              cab.QdtVolume,
                                              cab.Volume
                    );
                #endregion

                // adicionando cabeçalho na lista
                lista.Add(strArg);

                #region Montando a linha

                //selecionando acrescimo referente a fatura atual
                var sumAcrescimo = (from a in listaDeAcrescimo
                                    where a.Fatura == cab.nfatura
                                    select a.Vl_Acrescimo_Moeda).Sum();

                //selecionando os itens da fatura atual                
                var cabfatura = cab;

                foreach (var lin in linha.Where(c => c.Fatura == cabfatura.nfatura && c.CD_REGIME_TRIBUTAR_PISCOFINS == cabfatura.CD_REGIME_TRIBUTAR_PISCOFINS))
                {
                    //Calculando acrescimo
                    decimal acrescimoUnitario = 0;
                    decimal acrescimoTotal = 0;
                    if (sumAcrescimo > 0)
                    {
                        var totalDivisaoSumAcrescimoPesoLiq = sumAcrescimo / cab.Peso_Liquido;
                        //Acrescimo unitario
                        acrescimoUnitario = totalDivisaoSumAcrescimoPesoLiq * lin.Peso_Unitario_Acertado;
                        //Acrescimo total
                        acrescimoTotal = totalDivisaoSumAcrescimoPesoLiq * lin.Peso_Total_Acertado;
                    }

                    //valores
                    var valorii = lin.VALOR_II.ItemConverteValorII(lin.FOB, lin.VMLE, lin.Taxa_conversao);
                    var valoripi = lin.valor_ipi.ItemConverteValorIPI(lin.FOB, lin.VMLE, lin.Taxa_conversao);
                    var valortaxasiscomex = ((lin.Valor_Total * divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos) - lin.Valor_Total);
                    var valorcofins = lin.valor_cofins.ItemConverteValorCofins(lin.FOB, lin.VMLE, lin.Taxa_conversao);
                    var valorpis = lin.valor_pis_pasep.ItemConverteValorPIS(lin.FOB, lin.VMLE, lin.Taxa_conversao);
                    var diferecaicms = (100 - (lin.aliq_icms + lin.aliq_icms_extra)) / 100;
                    var basecalculoicms = (lin.VA_NEW + valorii + valoripi + valortaxasiscomex + valorpis + valorcofins) / diferecaicms;
                    var valoricms = (basecalculoicms * (lin.aliq_icms / 100));
                    var valorfecp = lin.valor_icms_extra.ItemConverteValorFecp(lin.FOB, lin.VMLE, lin.Taxa_conversao);
                    var valordespesasacessorias = (valorpis + valorcofins + valorii + valortaxasiscomex);

                    //------------
                    strArg = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|{21}|{22}|{23}|{24}|{25}|{26}|{27}|{28}|{29}|{30}|{31}|{32}|{33}|{34};",
                        lin.Identificador,
                        lin.Adicao,
                        lin.Sequencial,
                        lin.DescricaoItem.Replace("\n", "").Replace("\r", " "),
                        lin.Codigo_Produto,
                        lin.NCM,
                        lin.Quantidade,
                        lin.Valor_Unitario.ItemConverteValorUnitario(acrescimoUnitario, lin.Taxa_conversao).CasasDecimais(2),
                        lin.Valor_Total.ItemConverteValorTotal(acrescimoTotal, lin.Taxa_conversao).CasasDecimais(2),
                        lin.Peso_Unitario_Acertado.CasasDecimais(2),
                        lin.Peso_Total_Acertado.CasasDecimais(2),
                        lin.Rateio_Frete_prepaid.ItemConverteRateioFretePrepaid(lin.Quantidade, lin.Taxa_conversao).CasasDecimais(2),
                        lin.Taxa_conversao.CasasDecimais(5),
                        lin.Aliq_NCM_II.CasasDecimais(2),
                        lin.VA_NEW.CasasDecimais(2),
                        valorii.CasasDecimais(2),
                        lin.Aliq_NCM_IPI.CasasDecimais(2),
                        lin.VA_NEW1.ItemConverteBaseIPI(lin.VALOR_II, lin.FOB, lin.VMLE, lin.Taxa_conversao).CasasDecimais(2),
                        valoripi.CasasDecimais(2),
                        lin.aliq_pis_pasep.CasasDecimais(2),
                        lin.aliq_cofins.CasasDecimais(2),
                        lin.VA_NEW2.ItemConverteBasePIS(lin).CasasDecimais(2),
                        lin.VA_NEW3.ItemConverteBasePIS(lin).CasasDecimais(2),
                        valorpis.CasasDecimais(2),
                        valorcofins.CasasDecimais(2),
                        lin.aliq_icms.CasasDecimais(2),
                        lin.aliq_icms_extra.CasasDecimais(2),
                        valortaxasiscomex.CasasDecimais(2),//Taxa siscomex
                        basecalculoicms.CasasDecimais(2),
                        valoricms.CasasDecimais(2),
                        valorfecp.CasasDecimais(2),
                        valordespesasacessorias.CasasDecimais(2),
                        lin.ValorIOF.CasasDecimais(2),
                        lin.Fatura,
                        (lin.CD_REGIME_TRIBUTAR_PISCOFINS == 1 ? 2 : 1).ToString().PadLeft(2, '0')
                        );
                    // adicionando linhas na lista
                    lista.Add(strArg);
                }
                #endregion

            }
            //_strRetorno = strArg.ToString().TrimEnd(';');
            return lista;
        }

        public ActionResult CreateFile()
        {
            var txt = Session["DadosTXT"] as MultiSelectList;
            if (Session["DadosTXT"] != null)
            {
                const string path = @"c:\inetpub\wwwroot\ARQUIVOS\EXPORTACAOSEADRILL\";

                string processos = Session["ProcessosTXT"].ToString().Replace("/", "");

                using (var writer = new StreamWriter(path + processos + ".txt"))
                {
                    foreach (var item in txt)
                    {
                        writer.WriteLine(item.Text);
                        var teste = item.Text;
                    }
                }

                //   String fileName = "teste_MVC.txt";
                //    string filePath = ("c:/teste_MVC.txt");
                String fileName = processos + ".txt";
                string filePath = (path + processos + ".txt");
                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "text/plain";
                response.AddHeader("Content-Disposition", "attachment; filename=" + fileName + ";");
                response.TransmitFile(filePath);
                response.Flush();
                Response.End();
                Session.Remove("DadosTXT");
                Session.Remove("ProcessosTXT");
                return View();
            }
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}
