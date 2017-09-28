using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Cambio_antecipado
    {
        public string CGC_CPF { get; set; }
        public string CONTRATO_CAMBIO { get; set; }
        public string Cod_Fornecedor { get; set; }
        public Nullable<System.DateTime> DT_PAG_CAMBIO { get; set; }
        public string Moeda { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public string Banco { get; set; }
        public string Praca { get; set; }
        public Nullable<double> Valor_vinculado { get; set; }
        public Nullable<System.DateTime> DT_PREV_EMBARQUE { get; set; }
        public Nullable<int> Antecipado { get; set; }
    }
}
