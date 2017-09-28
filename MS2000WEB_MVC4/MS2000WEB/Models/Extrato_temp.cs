using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Extrato_temp
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Cliente { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Historico { get; set; }
        public Nullable<double> Valor { get; set; }
        public int auto { get; set; }
    }
}
