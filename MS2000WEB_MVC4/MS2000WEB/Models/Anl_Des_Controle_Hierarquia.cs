using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Controle_Hierarquia
    {
        public int Fk_Analise { get; set; }
        public int Codigo { get; set; }
        public string Usuario { get; set; }
        public string Nome { get; set; }
        public string Hierarquia { get; set; }
        public int Nivel { get; set; }
    }
}
