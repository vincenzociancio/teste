using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Navios_Chegada
    {
        public int PK_NAVIO_CHEGADA { get; set; }
        public int FK_NAVIO { get; set; }
        public int FK_TERMINAL { get; set; }
        public string STATUS { get; set; }
        public Nullable<System.DateTime> DT_EMBARQUE { get; set; }
        public Nullable<System.DateTime> DT_ETA { get; set; }
        public Nullable<bool> EXCLUIDO { get; set; }
        public virtual Controle_Navios Controle_Navios { get; set; }
        public virtual Controle_Navios_Terminal Controle_Navios_Terminal { get; set; }
    }
}
