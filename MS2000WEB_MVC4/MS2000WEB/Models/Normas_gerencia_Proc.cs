using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Normas_gerencia_Proc
    {
        public int sequencial { get; set; }
        public string Norma { get; set; }
        public string Nome_PDF { get; set; }
        public string Setor { get; set; }
        public string SubSetor { get; set; }
        public Nullable<bool> Ativo { get; set; }
    }
}
