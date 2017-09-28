using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_TVs_Importadores
    {
        public int PK_TVs_Importadores { get; set; }
        public string FK_Importador { get; set; }
        public int FK_TV { get; set; }
        public bool Exibir { get; set; }
        public virtual Controle_TVs Controle_TVs { get; set; }
    }
}
