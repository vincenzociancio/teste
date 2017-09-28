
namespace MSBiblioteca.DTO.SeadrillExportacao
{
    public class LinhaDTO
    {
        public LinhaDTO()
        {
            Identificador = "L";
            ValorIOF = 0; // Valor zero, pois não possui cobertura cambial
        }

        public string Identificador { get; set; }
        public int Adicao { get; set; }
        public int Sequencial { get; set; }
        public string DescricaoDoItem { get; set; }
        public string CodigoItem { get; set; }
        public string NCM { get; set; }
        public int QdtDeItem { get; set; }
        public decimal ValorUnitario { get; set; }
        public decimal ValorTotal { get; set; }
        public decimal PesoUnitario { get; set; }
        public decimal PesoTotal { get; set; }
        public decimal RateioFretePrePg { get; set; }
        public decimal TaxaConversao { get; set; }

        public decimal AliquotaII { get; set; }
        public decimal BaseII { get; set; }
        public decimal ValorII { get; set; }

        public decimal AliquotaIPI { get; set; }
        public decimal BaseIPI { get; set; }
        public decimal ValorIPI { get; set; }

        public decimal AliquotaPIS { get; set; }
        public decimal BasePIS { get; set; }
        public decimal ValorPIS { get; set; }

        public decimal AliquotaCOFINS { get; set; }
        public decimal BaseCOFINS { get; set; }
        public decimal ValorCOFINS { get; set; }

        public decimal AliquotaICMS { get; set; }
        public decimal BaseICMS { get; set; }
        public decimal ValorICMS { get; set; }

        //ICMS EXTRA
        public decimal AliquotaFECP { get; set; }
        public decimal ValorFECP { get; set; }

        public decimal TaxaSiscomex { get; set; }

        public decimal DespesasAcessorias { get; set; }

        public decimal ValorDespesasAduaneira { get; set; }

        public decimal ValorIOF { get; set; }


        //auxiliares
        public string NumeroDaFatura { get; set; }
        public decimal ValorFOB { get; set; }
        public decimal ValorVMLE { get; set; }
       // public decimal AliquotaICMSExtra { get; set; }

        public int RegimeTributacao { get; set; }

        public decimal Valor_Aduaneiro { get; set; }
        

    }
}
