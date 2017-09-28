using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_Transocean
    {
        public int Sequencial { get; set; }
        public string Planilha { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Responsavel { get; set; }
        public string Status { get; set; }
        public Nullable<System.DateTime> Data_Recebimento { get; set; }
    }
}
