using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class controle_normas_setor_subsetor
    {
        public int PK_SETOR_SUBSETOR { get; set; }
        public int fk_setor { get; set; }
        public string Nome_SubSetor { get; set; }
        public Nullable<bool> Excluido { get; set; }
    }
}
