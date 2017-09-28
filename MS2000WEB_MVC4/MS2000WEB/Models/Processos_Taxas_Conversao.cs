using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Taxas_Conversao
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Moeda { get; set; }
        public Nullable<double> Taxa_conversao { get; set; }
        public Nullable<double> Taxa_conversaoc { get; set; }
    }
}
