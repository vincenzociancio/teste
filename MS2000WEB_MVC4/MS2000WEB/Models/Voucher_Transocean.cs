using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Voucher_Transocean
    {
        public int Codigo { get; set; }
        public string Descricao { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Recebimento { get; set; }
        public string Receptor { get; set; }
    }
}
