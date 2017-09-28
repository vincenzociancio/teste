using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Navios_Terminal
    {
        public Controle_Navios_Terminal()
        {
            this.Controle_Navios_Chegada = new List<Controle_Navios_Chegada>();
        }

        public int PK_TERMINAL { get; set; }
        public string NOME_TERMINAL { get; set; }
        public Nullable<bool> EXCLUIDO { get; set; }
        public virtual ICollection<Controle_Navios_Chegada> Controle_Navios_Chegada { get; set; }
    }
}
