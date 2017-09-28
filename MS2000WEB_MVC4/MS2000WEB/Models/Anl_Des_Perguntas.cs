using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Perguntas
    {
        public int Fk_Analise { get; set; }
        public int Fk_Competencia { get; set; }
        public int Codigo { get; set; }
        public string Descricao { get; set; }
        public int Ordem { get; set; }
    }
}
