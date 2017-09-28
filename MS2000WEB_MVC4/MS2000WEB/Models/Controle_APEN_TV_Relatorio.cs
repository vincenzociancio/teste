using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_APEN_TV_Relatorio
    {
        public int PK { get; set; }
        public string Nome_Completo_Usuario { get; set; }
        public int Qtd_Pendencias { get; set; }
        public System.DateTime Data { get; set; }
    }
}
