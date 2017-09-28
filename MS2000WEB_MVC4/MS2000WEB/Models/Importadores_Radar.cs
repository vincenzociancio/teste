using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Importadores_Radar
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Validade { get; set; }
    }
}
