using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_Lancamento_Ccorrente
    {
        public int Codigo { get; set; }
        public string Descricao { get; set; }
        public Nullable<int> Positivo { get; set; }
    }
}
