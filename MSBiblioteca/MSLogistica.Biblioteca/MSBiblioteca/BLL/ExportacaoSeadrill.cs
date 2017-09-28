using System.Collections.Generic;
using MSBiblioteca.BLL.SeadrillExportacao;
using System.Linq;
using System.Text;
using MSBiblioteca.MSUtil;

namespace MSBiblioteca.BLL
{
    public class ExportacaoSeadrill
    {
        private readonly string _processo = string.Empty;
        private string _strRetorno = string.Empty;

        public ExportacaoSeadrill(string processo)
        {
            _processo = processo;
        }

        public List<string> ObterArquivoTxt()
        {
            var objcabecalho = new Cabecalho();
            var objlinha = new Linha();
            var objacrescimo = new AcrescimosFatura();
            var lista = new List<string>();

            var cabecalho = objcabecalho.ObterCabecalho(_processo);
            var linha = objlinha.ObterLinhas(_processo);
            var listaDeAcrescimo = objacrescimo.BuscarPorProcesso(_processo);

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
                                      select l.ValorTotal).Sum();
            var somatotalTaxaSiscomexTotalProdudos = (valortotalTaxaSiscomex + valortotalprodutos);

            var divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos = (somatotalTaxaSiscomexTotalProdudos / valortotalprodutos);

            //--------------------------------------------------------------------------------------------------

            foreach (var cab in cabecalho)
            {
                #region Montando cabeçalho
                //Alteração solicitada - separar por regime de tributacao
                //alterado 02/05/2013 - Eduardo Souza
                var novosTotais = linha
                    .Where(x => x.NumeroDaFatura == cab.NumeroDaFatura && x.RegimeTributacao == cab.RegimeTributacao)
                    .GroupBy(g => new { g.NumeroDaFatura, g.RegimeTributacao })
                    .Select(group => new
                    {
                        NumeroDaFatura = group.Key.NumeroDaFatura,
                        RegimeTributacao = group.Key.RegimeTributacao,
                        TotalFOB = group.Sum(a => a.Valor_Aduaneiro * a.TaxaConversao),
                        TotalCIF = group.Sum(a => (a.Valor_Aduaneiro + a.RateioFretePrePg) * a.TaxaConversao),
                        TotalFrete = group.Sum(a => (a.RateioFretePrePg + a.QdtDeItem) * a.TaxaConversao),
                        TotalPesoBruto = group.Sum(a => a.PesoTotal),
                        TotalPesoLinq = group.Sum(a => a.PesoTotal),
                    }).ToList();
                //---
                var strArg = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|{21}",
                                              cab.Identificador,
                                              cab.CoberturaCambial,
                                              cab.NaturezaOperacao.PadLeft(2, '0'),
                                              cab.Moeda.PadLeft(2, ' '),
                                              cab.CodigoExportador,
                                              cab.CnpjDoImportador,
                                              cab.CnpjAdqMercadoria,
                                              cab.DctoImportacao,
                                              cab.DataDctoImportacao,
                                              cab.NumeroDaFatura,
                                              cab.UfDesembaraco,
                                              cab.CodigoMoeda.PadLeft(2, ' '),
                                              cab.Taxa.CasasDecimais(3),
                                              cab.DataDesembaraco,
                                              novosTotais[0].TotalPesoBruto.CasasDecimais(3), //cab.PesoBruto.CasasDecimais(3),
                                              novosTotais[0].TotalPesoLinq.CasasDecimais(3),//cab.PesoLiquido.CasasDecimais(3),
                                              novosTotais[0].TotalFOB.CasasDecimais(3),//cab.ValorFOB.CasasDecimais(3),
                                              novosTotais[0].TotalFrete.CasasDecimais(3),//cab.ValorFrete.CasasDecimais(3),
                                              cab.Seguro.CasasDecimais(3),
                                              novosTotais[0].TotalCIF.CasasDecimais(3),//cab.ValorCIF.CasasDecimais(3),
                                              cab.QtdVolume,
                                              cab.TipoDeVolume
                    );
                #endregion

                // adicionando cabeçalho na lista
                lista.Add(strArg);

                #region Montando a linha

                //selecionando acrescimo referente a fatura atual
                var sumAcrescimo = (from a in listaDeAcrescimo
                                    where a.FK_Fatura == cab.NumeroDaFatura
                                    select a.Vl_Acrescimo_Moeda).Sum();

                //selecionando os itens da fatura atual                
                var cabfatura = cab;


                foreach (var lin in linha.Where(c => c.NumeroDaFatura == cabfatura.NumeroDaFatura && c.RegimeTributacao == cabfatura.RegimeTributacao))
                {
                    //Calculando acrescimo
                    decimal acrescimoUnitario = 0;
                    decimal acrescimoTotal = 0;
                    if (sumAcrescimo > 0)
                    {
                        var totalDivisaoSumAcrescimoPesoLiq = sumAcrescimo / cab.PesoLiquido;
                        //Acrescimo unitario
                        acrescimoUnitario = totalDivisaoSumAcrescimoPesoLiq * lin.PesoUnitario;
                        //Acrescimo total
                        acrescimoTotal = totalDivisaoSumAcrescimoPesoLiq * lin.PesoTotal;
                    }

                    //valores
                    var valorii = lin.ValorII.ItemConverteValorII(lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao);
                    var valoripi = lin.ValorIPI.ItemConverteValorIPI(lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao);
                    var valortaxasiscomex = ((lin.ValorTotal * divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos) - lin.ValorTotal);
                    var valorcofins = lin.ValorCOFINS.ItemConverteValorCofins(lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao);
                    var valorpis = lin.ValorPIS.ItemConverteValorPIS(lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao);
                    var diferecaicms = (100 - (lin.AliquotaICMS + lin.AliquotaFECP)) / 100;
                    var basecalculoicms = (lin.BaseII + valorii + valoripi + valortaxasiscomex + valorpis + valorcofins) / diferecaicms;
                    var valoricms = (basecalculoicms * (lin.AliquotaICMS / 100));
                    var valorfecp = lin.ValorFECP.ItemConverteValorFecp(lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao);
                    var valordespesasacessorias = (valorpis + valorcofins + valorii + valortaxasiscomex);

                    //------------
                    strArg = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}|{15}|{16}|{17}|{18}|{19}|{20}|{21}|{22}|{23}|{24}|{25}|{26}|{27}|{28}|{29}|{30}|{31}|{32}|{33}|{34};",
                        lin.Identificador,
                        lin.Adicao,
                        lin.Sequencial,
                        lin.DescricaoDoItem.Replace("\n", "").Replace("\r", " "),
                        lin.CodigoItem,
                        lin.NCM,
                        lin.QdtDeItem,
                        lin.ValorUnitario.ItemConverteValorUnitario(acrescimoUnitario, lin.TaxaConversao).CasasDecimais(2),
                        lin.ValorTotal.ItemConverteValorTotal(acrescimoTotal, lin.TaxaConversao).CasasDecimais(2),
                        lin.PesoUnitario.CasasDecimais(2),
                        lin.PesoTotal.CasasDecimais(2),
                        lin.RateioFretePrePg.ItemConverteRateioFretePrepaid(lin.QdtDeItem, lin.TaxaConversao).CasasDecimais(2),
                        lin.TaxaConversao.CasasDecimais(5),
                        lin.AliquotaII.CasasDecimais(2),
                        lin.BaseII.CasasDecimais(2),
                        valorii.CasasDecimais(2),
                        lin.AliquotaIPI.CasasDecimais(2),
                        lin.BaseIPI.ItemConverteBaseIPI(lin.ValorII, lin.ValorFOB, lin.ValorVMLE, lin.TaxaConversao).CasasDecimais(2),
                        valoripi.CasasDecimais(2),
                        lin.AliquotaPIS.CasasDecimais(2),
                        lin.AliquotaCOFINS.CasasDecimais(2),
                        lin.BasePIS.ItemConverteBasePIS(lin).CasasDecimais(2),
                        lin.BaseCOFINS.ItemConverteBasePIS(lin).CasasDecimais(2),
                        valorpis.CasasDecimais(2),
                        valorcofins.CasasDecimais(2),
                        lin.AliquotaICMS.CasasDecimais(2),
                        lin.AliquotaFECP.CasasDecimais(2),
                        valortaxasiscomex.CasasDecimais(2),//Taxa siscomex
                        basecalculoicms.CasasDecimais(2),
                        valoricms.CasasDecimais(2),
                        valorfecp.CasasDecimais(2),
                        valordespesasacessorias.CasasDecimais(2),
                        lin.ValorIOF.CasasDecimais(2),
                        lin.NumeroDaFatura,
                        (lin.RegimeTributacao == 1 ? 2 : 1).ToString().PadLeft(2, '0')
                        );
                    // adicionando linhas na lista
                    lista.Add(strArg);
                }
                #endregion

            }
            //_strRetorno = strArg.ToString().TrimEnd(';');
            return lista;
        }

        //public override string ToString()
        //{
        //    MontarArquivo();
        //    return _strRetorno;
        //}
    }
}
