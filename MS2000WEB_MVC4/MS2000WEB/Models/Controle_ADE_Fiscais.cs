using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_ADE_Fiscais
    {
        public int PK_Fiscais { get; set; }
        public string Nome { get; set; }
        public Nullable<bool> Excluido { get; set; }
    }
}
