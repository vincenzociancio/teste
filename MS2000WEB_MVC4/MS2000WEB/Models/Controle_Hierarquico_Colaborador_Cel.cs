using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Hierarquico_Colaborador_Cel
    {
        public int PK_Colaborador_Cel { get; set; }
        public string FK_Colaborador { get; set; }
        public int FK_Celula { get; set; }
    }
}
