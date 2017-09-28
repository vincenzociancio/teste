using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_ADICOES_ICMS_PIS_COFINS
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Adicao { get; set; }
        public string NCM { get; set; }
        public Nullable<double> VA { get; set; }
        public Nullable<double> OT { get; set; }
        public Nullable<double> DA { get; set; }
        public Nullable<double> Aliq_NCM_II { get; set; }
        public Nullable<double> Aliq_NCM_IPI { get; set; }
        public Nullable<double> Aliq_PIS_PASEP { get; set; }
        public Nullable<double> Aliq_COFINS { get; set; }
        public Nullable<double> Aliq_ICMS { get; set; }
        public Nullable<double> Aliq_ICMS_EXTRA { get; set; }
        public Nullable<double> BASEC_PISCOFINS { get; set; }
        public Nullable<double> BASEC_ICMS { get; set; }
        public Nullable<double> VALOR_II { get; set; }
        public Nullable<double> VALOR_IPI { get; set; }
        public Nullable<double> VALOR_ICMS { get; set; }
        public Nullable<double> VALOR_ICMS_EXTRA { get; set; }
        public Nullable<double> VALOR_PIS_PASEP { get; set; }
        public Nullable<double> VALOR_COFINS { get; set; }
        public Nullable<int> Prazo_permanencia { get; set; }
        public Nullable<double> VA_proporcional { get; set; }
        public Nullable<double> Aliq_NCM_II_proporcional { get; set; }
        public Nullable<double> Aliq_NCM_IPI_proporcional { get; set; }
        public Nullable<double> FOB { get; set; }
        public string Regime_Tributacao_II { get; set; }
        public string Regime_Tributacao_IPI { get; set; }
        public string CD_REGIME_TRIBUTAR_PISCOFINS { get; set; }
        public string Tratamento_Tributario { get; set; }
        public Nullable<double> BASEC_ICMS_ACRESC { get; set; }
        public Nullable<double> VALOR_ICMS_ACRESC { get; set; }
        public Nullable<double> VALOR_ICMS_ACRESC_EXTRA { get; set; }
        public Nullable<double> Rateio_Acresc_ICMS { get; set; }
    }
}
