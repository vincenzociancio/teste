using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Greve
    {
        public System.DateTime Data { get; set; }
        public string Descricao { get; set; }
        public string Filial { get; set; }
        public string CodObservacao { get; set; }
        public Nullable<int> Ativo { get; set; }
    }
}
