using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contas_Pagar_Correcoes
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Fornecedor { get; set; }
        public string Codigo { get; set; }
        public int registro { get; set; }
        public string Tipo_Correcao { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<double> Valor { get; set; }
        public string obs { get; set; }
    }
}
