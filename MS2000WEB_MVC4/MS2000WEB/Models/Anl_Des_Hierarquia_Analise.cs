using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Hierarquia_Analise
    {
        public int Fk_Analise { get; set; }
        public int Codigo { get; set; }
        public string Colaborador { get; set; }
        public string Supervisor { get; set; }
        public string Gestor { get; set; }
    }
}
