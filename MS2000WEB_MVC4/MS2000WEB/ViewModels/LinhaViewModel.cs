using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS2000WEB.ViewModels
{
    public class LinhaViewModel 
    {
        public LinhaViewModel()
        {
            Identificador = "L";
            ValorIOF = 0; // Valor zero, pois não possui cobertura cambial
        }

        public string Identificador { get; set; }
        public int Adicao { get; set; }
        public int Sequencial { get; set; }
        public string DescricaoItem { get; set; }
        public string Codigo_Produto { get; set; }
        public string NCM { get; set; }
        public int Quantidade { get; set; }
        public decimal Valor_Unitario { get; set; }
        public decimal Valor_Total { get; set; }
        public decimal Peso_Unitario_Acertado { get; set; }
        public decimal Peso_Total_Acertado { get; set; }
        public decimal Rateio_Frete_prepaid { get; set; }
        public decimal Taxa_conversao { get; set; }

        public decimal Aliq_NCM_II { get; set; }
        public decimal VA_NEW { get; set; }
        public decimal VALOR_II { get; set; }

        public decimal Aliq_NCM_IPI { get; set; }
        public decimal VA_NEW1 { get; set; }
        public decimal valor_ipi { get; set; }

        public decimal aliq_pis_pasep { get; set; }
        public decimal VA_NEW2 { get; set; }
        public decimal valor_pis_pasep { get; set; }

        public decimal aliq_cofins { get; set; }
        public decimal VA_NEW3 { get; set; }
        public decimal valor_cofins { get; set; }

        public decimal aliq_icms { get; set; }
        public decimal BaseICMS { get; set; }
        public decimal ValorICMS { get; set; }

        //ICMS EXTRA
        public decimal aliq_icms_extra { get; set; }
        public decimal valor_icms_extra { get; set; }

        public decimal TaxaSiscomex { get; set; }

        public decimal DespesasAcessorias { get; set; }

        public decimal ValorDespesasAduaneira { get; set; }

        public decimal ValorIOF { get; set; }


        //auxiliares
        public string Fatura { get; set; }
        public decimal FOB { get; set; }
        public decimal VMLE { get; set; }
        // public decimal AliquotaICMSExtra { get; set; }

        public int CD_REGIME_TRIBUTAR_PISCOFINS { get; set; }

        public decimal Valor_Aduaneiro { get; set; }

    }
}
