using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Plan1
    {
        public int CÓD1 { get; set; }
        public string CÓD { get; set; }
        public string PLANILHA { get; set; }
        public string LINHA { get; set; }
        public string CODIGO { get; set; }
        public string DESCRICAO_INGLES { get; set; }
        public string DESCRICAO { get; set; }
        public string NUMERO_SERIE { get; set; }
        public string QTD { get; set; }
        public string VALOR_UNIT { get; set; }
        public string TAG { get; set; }
        public byte[] SSMA_TimeStamp { get; set; }
    }
}