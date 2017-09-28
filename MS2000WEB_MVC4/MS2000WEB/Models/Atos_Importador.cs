using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Atos_Importador
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Numero { get; set; }
        public string Importador { get; set; }
        public string Tipo { get; set; }
        public Nullable<double> Percentual { get; set; }
        public Nullable<double> Valor_imp { get; set; }
        public Nullable<double> Valor_impc { get; set; }
        public Nullable<double> Valor_imps { get; set; }
        public Nullable<double> Valor_exp { get; set; }
        public Nullable<double> Saldo { get; set; }
    }
}
