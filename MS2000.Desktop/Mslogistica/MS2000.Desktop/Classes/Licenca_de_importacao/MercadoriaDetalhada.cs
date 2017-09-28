
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class MercadoriaDetalhada
    {
        public string UnidComercializada { get; set; }
        public double QtdeUnidComercializada { get; set; } // 15,5 casas decimais
        public double ValorUnitCondicaoVenda { get; set; } // 21,7 casas decimais
        public string EspecificacaoMercadoria { get; set; }      
           //para acumular
        public double NumeroPesoLiquidoMerc { get; set; }
        public double ValorMercLocalEmbarque {get;set;}//16,2 casas decimais
        public string UnidadeMedidaEstatistica { get; set; }
        public int PesoEmLibra { get; set; }
        public double QuantidadeUnidadeEstatistica
        {
            get
            {
                // 10 - Quilograma liquido
                // 21 - Tonelada metrica liquida
                if (this.UnidadeMedidaEstatistica == "10" || this.UnidadeMedidaEstatistica == "21")
                {
                    if (PesoEmLibra == 1)
                    {
                        return NumeroPesoLiquidoMerc * 0.4536;
                    }
                    else
                    {
                        return NumeroPesoLiquidoMerc;
                    }
                }
                else
                    // 11 - Unidade
                    // 13 - Pares
                    // 15 - Metro quadrado
                    // 16 - Metro Cubico
                    if (this.UnidadeMedidaEstatistica == "11" || this.UnidadeMedidaEstatistica == "13" || this.UnidadeMedidaEstatistica == "15" || this.UnidadeMedidaEstatistica == "16")
                    {
                        return QtdeUnidComercializada;
                    }
                    else { return -1; }
            }
            //set{};
        } // 15,5 casas decimais
    }
}
