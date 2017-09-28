using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Embalagem_Processo
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string TipoEmbalagem { get; set; }
        public string DescricaoEmbalagem { get; set; }
        public string Quantidade { get; set; }
    }
}
