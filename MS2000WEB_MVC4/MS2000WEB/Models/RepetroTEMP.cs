using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RepetroTEMP
    {
        public string DI { get; set; }
        public string Adicao { get; set; }
        public string Seq_Adicaostr { get; set; }
        public Nullable<System.DateTime> datadi { get; set; }
        public string Tipo_Declaração { get; set; }
        public string DESCBEM { get; set; }
        public string NCM { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> VALOR { get; set; }
        public byte[] SSMA_TimeStamp { get; set; }
    }
}
