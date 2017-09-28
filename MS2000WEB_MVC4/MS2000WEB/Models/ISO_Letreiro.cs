using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class ISO_Letreiro
    {
        public int Sequencial { get; set; }
        public string Norma { get; set; }
        public Nullable<System.DateTime> Dt_Inicial { get; set; }
        public Nullable<System.DateTime> Dt_Final { get; set; }
        public Nullable<bool> Excluido { get; set; }
    }
}
