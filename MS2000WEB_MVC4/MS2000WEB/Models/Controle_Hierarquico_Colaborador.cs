using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Hierarquico_Colaborador
    {
        public int PK_ID { get; set; }
        public string Colaborador { get; set; }
        public string Hierarquia { get; set; }
        public int Nivel { get; set; }
    }
}
