using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_BRASDRIL_Itens
    {
        public int Sequencial { get; set; }
        public Nullable<int> Sequencial_Planilha { get; set; }
        public string REF_MS { get; set; }
        public string PLATAF { get; set; }
        public string INVOICE { get; set; }
        public Nullable<double> CIF { get; set; }
        public string AWB_BL { get; set; }
        public string NAVIO { get; set; }
        public string RCR { get; set; }
        public Nullable<double> LIBERACAO_AWB_BL { get; set; }
        public Nullable<double> HONORARIOS { get; set; }
        public Nullable<double> II { get; set; }
        public Nullable<double> IPI { get; set; }
        public Nullable<double> PIS_PASEP { get; set; }
        public Nullable<double> COFINS { get; set; }
        public Nullable<double> TX_SISCOMEX { get; set; }
        public Nullable<double> ICMS { get; set; }
        public Nullable<double> ARMAZ_AIRJ { get; set; }
        public Nullable<double> ARMAZ_CFRIO { get; set; }
        public Nullable<double> MARINHA_MERCANTE { get; set; }
        public Nullable<double> TOTAL { get; set; }
        public string RESP_PROCESSO { get; set; }
        public Nullable<System.DateTime> Data_Recebimento { get; set; }
        public string NFiscal { get; set; }
        public Nullable<System.DateTime> Data_emissao { get; set; }
        public string Obs { get; set; }
    }
}
