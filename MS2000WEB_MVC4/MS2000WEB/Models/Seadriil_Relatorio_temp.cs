using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Seadriil_Relatorio_temp
    {
        public int Sequencial { get; set; }
        public string FX { get; set; }
        public string Tipo { get; set; }
        public string VIA { get; set; }
        public Nullable<double> SDFG { get; set; }
        public Nullable<double> DIVERSOS { get; set; }
        public Nullable<double> CARGO_AGENT { get; set; }
        public Nullable<double> MS { get; set; }
        public Nullable<double> COMPANY { get; set; }
        public Nullable<double> DAYS_TO_CLEAR { get; set; }
        public Nullable<int> CONTAGEM { get; set; }
    }
}
