using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RMBR
    {
        public int PK_ID { get; set; }
        public string FK_Processo { get; set; }
        public string Numero_RMBR { get; set; }
        public Nullable<System.DateTime> DT_Inicial { get; set; }
        public Nullable<System.DateTime> DT_Final { get; set; }
        public Nullable<System.DateTime> DT_Baixa { get; set; }
        public Nullable<System.DateTime> DT_Prorrogacao { get; set; }
        public string Numero_DI { get; set; }
        public int Status { get; set; }
    }
}
