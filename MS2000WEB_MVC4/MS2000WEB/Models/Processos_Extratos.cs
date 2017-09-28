using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Extratos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public Nullable<int> Gerado { get; set; }
    }
}
