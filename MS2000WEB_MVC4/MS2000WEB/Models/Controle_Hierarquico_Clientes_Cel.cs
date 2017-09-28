using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Hierarquico_Clientes_Cel
    {
        public int PK_Cliente_Cel { get; set; }
        public string FK_Cliente { get; set; }
        public int FK_Celula { get; set; }
    }
}
