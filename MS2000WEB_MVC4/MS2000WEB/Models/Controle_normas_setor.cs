using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_normas_setor
    {
        public int PK_SETOR { get; set; }
        public string Nome_setor { get; set; }
        public Nullable<bool> Excluido { get; set; }
    }
}
