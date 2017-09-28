using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class SAC
    {
        public int Pk_Sac { get; set; }
        public string Fk_User { get; set; }
        public string Foco { get; set; }
        public string Comentarios { get; set; }
        public Nullable<System.DateTime> Data_Sac { get; set; }
        public string Assunto { get; set; }
    }
}
