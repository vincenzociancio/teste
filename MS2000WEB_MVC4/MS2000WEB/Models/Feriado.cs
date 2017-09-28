using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Feriado
    {
        public System.DateTime Data { get; set; }
        public string Descricao { get; set; }
        public string Filial { get; set; }
        public string CodObservacao { get; set; }
        public int Ativo { get; set; }
    }
}
