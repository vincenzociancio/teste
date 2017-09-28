using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCGPO_POS
    {
        public int REG { get; set; }
        public string CNPJ { get; set; }
        public Nullable<System.DateTime> DATA_PO { get; set; }
        public string PO { get; set; }
        public string EXPORTADOR { get; set; }
        public string Via { get; set; }
        public string INCOTERM { get; set; }
        public string CONDICAO_PAGAMENTO { get; set; }
        public string AGENTE_COMPANY { get; set; }
        public string CUSTOMER { get; set; }
        public string MOT { get; set; }
        public Nullable<double> PESO_TOTAL { get; set; }
        public Nullable<double> VALOR_TOTAL { get; set; }
        public string OBS_LABEL_NOTE { get; set; }
        public string PLANILHA { get; set; }
        public string STATUS { get; set; }
    }
}
