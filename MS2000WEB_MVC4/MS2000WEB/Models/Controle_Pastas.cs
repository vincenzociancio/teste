using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Pastas
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Usuario { get; set; }
        public Nullable<short> Aceite { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
    }
}
