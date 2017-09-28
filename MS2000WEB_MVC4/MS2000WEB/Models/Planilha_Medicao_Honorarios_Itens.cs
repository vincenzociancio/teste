using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_Medicao_Honorarios_Itens
    {
        public int Sequencial { get; set; }
        public Nullable<int> Sequencial_Planilha { get; set; }
        public string Processo { get; set; }
        public string Ref_Cliente { get; set; }
        public string Importador { get; set; }
        public string Di_Pad_Ass_Dse { get; set; }
        public string Tipo_Processo { get; set; }
        public Nullable<double> Honorario { get; set; }
        public Nullable<double> Irrf { get; set; }
        public Nullable<double> Csll { get; set; }
        public Nullable<double> Vlr_Liquido { get; set; }
    }
}
