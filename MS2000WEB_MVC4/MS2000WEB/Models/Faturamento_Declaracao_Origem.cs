using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faturamento_Declaracao_Origem
    {
        public int Pk { get; set; }
        public string Declaracao { get; set; }
        public string Processo { get; set; }
        public string Cliente { get; set; }
        public System.DateTime Data { get; set; }
        public string Nfe { get; set; }
        public System.DateTime Emissao { get; set; }
        public double Valor { get; set; }
    }
}
