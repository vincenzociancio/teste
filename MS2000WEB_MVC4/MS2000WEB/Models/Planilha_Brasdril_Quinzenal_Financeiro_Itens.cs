using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_Brasdril_Quinzenal_Financeiro_Itens
    {
        public int Sequencial { get; set; }
        public int Sequencial_Planilha { get; set; }
        public string Processo { get; set; }
        public Nullable<double> Honorarios { get; set; }
        public Nullable<double> IR { get; set; }
        public Nullable<double> Cofins { get; set; }
        public Nullable<double> Vlr_Liquido { get; set; }
        public string Embarcacao { get; set; }
    }
}
