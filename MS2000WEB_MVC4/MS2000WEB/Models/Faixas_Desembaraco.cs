using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faixas_Desembaraco
    {
        public string Tipo { get; set; }
        public int Faixa_Inicial { get; set; }
        public int Faixa_Final { get; set; }
        public string Descricao { get; set; }
        public string Descricao_ing { get; set; }
    }
}
