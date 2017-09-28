using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Importadores_Extratos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<int> Gerado { get; set; }
    }
}
