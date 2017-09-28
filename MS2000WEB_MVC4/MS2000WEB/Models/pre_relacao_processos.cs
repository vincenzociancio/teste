using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Relacao_Processos
    {
        public int pk_codigo { get; set; }
        public Nullable<int> fk_preprocesso { get; set; }
        public string fk_processo { get; set; }
        public virtual Pre_Processos Pre_Processos { get; set; }
    }
}
