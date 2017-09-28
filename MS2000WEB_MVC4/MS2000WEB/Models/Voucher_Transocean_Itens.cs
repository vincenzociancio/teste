using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Voucher_Transocean_Itens
    {
        public int Codigo_Voucher { get; set; }
        public int Codigo { get; set; }
        public string Tipo_Processo { get; set; }
        public string Processo { get; set; }
        public string Ref_Cliente { get; set; }
        public string Local { get; set; }
        public double Saldo { get; set; }
    }
}
