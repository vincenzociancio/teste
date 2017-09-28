using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Parametros_NF_Servicos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Ultima_NF { get; set; }
        public string Nat_Serv { get; set; }
        public string Codigo_Fiscal { get; set; }
        public Nullable<double> Percentual_ISS { get; set; }
        public Nullable<double> Percentual_IRRF { get; set; }
        public Nullable<double> Percentual_PCC { get; set; }
    }
}
