using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_PrestContas_Financeiro
    {
        public int Sequencial { get; set; }
        public string Cliente { get; set; }
        public string Planilha { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
    }
}
