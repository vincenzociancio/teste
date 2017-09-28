using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class TAB_UF_ALIQUOTAS
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> Aliq_PIS_PASEP { get; set; }
        public Nullable<double> Aliq_COFINS { get; set; }
        public Nullable<double> Aliq_ICMS { get; set; }
        public Nullable<double> Aliq_ICMS_EXTRA { get; set; }
    }
}
