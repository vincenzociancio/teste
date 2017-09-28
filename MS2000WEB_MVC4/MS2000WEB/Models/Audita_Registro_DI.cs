using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Audita_Registro_DI
    {
        public int Pk { get; set; }
        public string Processo { get; set; }
        public System.DateTime Data_Analise { get; set; }
        public string Auditor1 { get; set; }
        public Nullable<System.DateTime> Data_Auditor1 { get; set; }
        public string Auditor2 { get; set; }
        public Nullable<System.DateTime> Data_Auditor2 { get; set; }
        public int Rejeitada { get; set; }
        public string Observacao { get; set; }
        public string Auditor_Rejeicao { get; set; }
        public Nullable<System.DateTime> Data_Rejeicao { get; set; }
    }
}
