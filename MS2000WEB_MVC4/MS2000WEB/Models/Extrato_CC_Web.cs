using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Extrato_CC_Web
    {
        public string Usuario { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Historico { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
