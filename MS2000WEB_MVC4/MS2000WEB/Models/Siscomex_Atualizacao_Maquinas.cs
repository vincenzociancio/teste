using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Siscomex_Atualizacao_Maquinas
    {
        public string Maquina { get; set; }
        public string Tabela { get; set; }
        public Nullable<System.DateTime> Data_Atualizacao { get; set; }
    }
}
