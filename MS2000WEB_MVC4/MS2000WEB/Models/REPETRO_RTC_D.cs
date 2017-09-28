using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class REPETRO_RTC_D
    {
        public int REG { get; set; }
        public string CNPJ { get; set; }
        public string NUMERO_RTC { get; set; }
        public string WELL { get; set; }
        public string Contrato_Local_Origem { get; set; }
        public string Contrato_Local_Destino { get; set; }
        public string VESSEL { get; set; }
        public string DATA_RTC { get; set; }
        public string VOYAGE { get; set; }
        public string Usuario { get; set; }
        public string Status { get; set; }
        public string Usuario_REC { get; set; }
        public string DATA_RTC_REC { get; set; }
        public string Status_REC { get; set; }
    }
}
