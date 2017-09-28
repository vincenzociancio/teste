using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RPAT
    {
        public int ID { get; set; }
        public string Fk_Importador { get; set; }
        public string Fk_Processo { get; set; }
        public string Numero_RCR { get; set; }
        public Nullable<System.DateTime> Data_Criacao { get; set; }
        public string Justificativa { get; set; }
        public Nullable<System.DateTime> Data_Inicial { get; set; }
        public Nullable<System.DateTime> Data_Final { get; set; }
        public Nullable<System.DateTime> Dt_Prorrogacao { get; set; }
        public string Observacao { get; set; }
    }
}
