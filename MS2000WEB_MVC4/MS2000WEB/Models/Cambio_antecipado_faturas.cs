using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Cambio_antecipado_faturas
    {
        public int REG { get; set; }
        public string CGC_CPF { get; set; }
        public string CONTRATO_CAMBIO { get; set; }
        public string Fatura { get; set; }
        public string Processo { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public Nullable<int> Vinculada { get; set; }
        public string OBS { get; set; }
        public Nullable<System.DateTime> DT_PAG_CAMBIO { get; set; }
    }
}
