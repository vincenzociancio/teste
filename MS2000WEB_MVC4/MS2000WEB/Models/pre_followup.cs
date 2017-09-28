using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Followup
    {
        public int pk_codigo { get; set; }
        public Nullable<int> fk_preprocesso { get; set; }
        public Nullable<System.DateTime> data { get; set; }
        public string hora { get; set; }
        public string fk_evento { get; set; }
        public string fk_observacao { get; set; }
        public string obsespecificado { get; set; }
        public string usuario { get; set; }
        public virtual Evento Evento { get; set; }
        public virtual Pre_Processos Pre_Processos { get; set; }
    }
}
