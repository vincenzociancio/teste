using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Competencias
    {
        public int Fk_Analise { get; set; }
        public int Codigo { get; set; }
        public string Descricao { get; set; }
        public int Peso { get; set; }
        public bool Ativo { get; set; }
        public int Ordem { get; set; }
    }
}
