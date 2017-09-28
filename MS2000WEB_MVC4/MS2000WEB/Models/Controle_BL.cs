using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_BL
    {
        public int PK_Controle_BL { get; set; }
        public string FK_Processo { get; set; }
        public string Nome_Navio { get; set; }
        public string Unidade_Receita { get; set; }
        public System.DateTime DT_Vecto { get; set; }
        public string Num_BL { get; set; }
        public int Status { get; set; }
        public bool Excluido { get; set; }
        public string RE { get; set; }
    }
}
