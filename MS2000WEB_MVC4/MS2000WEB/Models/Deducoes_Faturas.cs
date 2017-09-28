using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Deducoes_Faturas
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string CD_MET_DEDUC_VALOR { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> VL_DEDUCAO_MNEG { get; set; }
        public string CD_MD_NEGOC_DEDUC { get; set; }
        public Nullable<double> VL_DEDUCAO_MN { get; set; }
    }
}
