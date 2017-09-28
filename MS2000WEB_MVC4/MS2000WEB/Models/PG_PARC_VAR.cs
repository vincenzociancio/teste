using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class PG_PARC_VAR
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public Nullable<double> Percentual { get; set; }
        public string Data_de_Pagamento { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
