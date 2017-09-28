using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faturamento_Recibos
    {
        public int Pk { get; set; }
        public string Recibo { get; set; }
        public System.DateTime Data { get; set; }
        public string Processo { get; set; }
        public string Cliente { get; set; }
        public string Debito { get; set; }
        public double Valor_Total { get; set; }
        public double Percentual_11 { get; set; }
        public string Percentual_Extenso { get; set; }
    }
}
