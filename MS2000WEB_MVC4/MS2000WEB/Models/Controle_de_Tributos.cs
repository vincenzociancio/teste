using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_de_Tributos
    {
        public int ID { get; set; }
        public int Natureza { get; set; }
        public string Codigo_Tributo { get; set; }
        public int Competencia { get; set; }
        public int Periodicidade { get; set; }
        public System.DateTime Data_Pgto { get; set; }
        public decimal Valor { get; set; }
        public string Referencia { get; set; }
        public Nullable<int> Ano { get; set; }
    }
}
