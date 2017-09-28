using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processo_Carta_Garantidor
    {
        public int ID { get; set; }
        public string Processo { get; set; }
        public Nullable<System.DateTime> Periodo_fianca_inicial { get; set; }
        public Nullable<System.DateTime> Periodo_fianca_final { get; set; }
    }
}
