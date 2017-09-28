using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Acrescimos_Faturas
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string CD_MET_ACRES_VALOR { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> VL_ACRESCIMO_MOEDA { get; set; }
        public string CD_MD_NEGOC_ACRES { get; set; }
        public Nullable<double> VL_ACRESCIMO_MN { get; set; }
    }
}
