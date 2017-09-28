using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSAVISA_AVISOS
    {
        public int PK_AVISO { get; set; }
        public string EMAIL { get; set; }
        public string EMAILS_CC { get; set; }
        public string DESCRICAO { get; set; }
        public Nullable<System.DateTime> DATA_VENCIMENTO { get; set; }
        public string PRAZOS_AVISOS { get; set; }
        public Nullable<int> ATIVO { get; set; }
        public string PROCESSADOS { get; set; }
        public Nullable<int> EMAIL_INGLES { get; set; }
    }
}
