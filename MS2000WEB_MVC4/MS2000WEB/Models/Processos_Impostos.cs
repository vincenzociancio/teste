using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Impostos
    {
        public string PROCESSO { get; set; }
        public Nullable<double> VALOR_FOB { get; set; }
        public Nullable<double> VALOR_FRETE { get; set; }
        public Nullable<double> VALOR_SEGURO { get; set; }
        public Nullable<double> VALOR_CIF { get; set; }
        public Nullable<double> VALOR_II { get; set; }
        public Nullable<double> VALOR_IPI { get; set; }
        public Nullable<double> VALOR_PIS { get; set; }
        public Nullable<double> VALOR_COFINS { get; set; }
        public Nullable<double> VALOR_TAXA_SISCOMEX { get; set; }
        public Nullable<double> ALIQUOTA_ICMS { get; set; }
        public Nullable<double> ALIQUOTA_FECP { get; set; }
        public Nullable<double> VALOR_ICMS { get; set; }
        public Nullable<double> VALOR_FECP { get; set; }
        public Nullable<double> VALOR_SUSPENSO_II { get; set; }
        public Nullable<double> VALOR_SUSPENSO_IPI { get; set; }
        public Nullable<double> VALOR_SUSPENSO_PIS { get; set; }
        public Nullable<double> VALOR_SUSPENSO_COFINS { get; set; }
        public Nullable<double> VALOR_SUSPENSO_ICMS { get; set; }
        public Nullable<double> VALOR_SUSPENSO_FECP { get; set; }
        public int ATUALIZADO { get; set; }
    }
}
