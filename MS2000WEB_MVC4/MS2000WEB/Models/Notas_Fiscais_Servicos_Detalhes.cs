using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Notas_Fiscais_Servicos_Detalhes
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string NFiscal { get; set; }
        public int reg { get; set; }
        public string Unidade { get; set; }
        public string Quantidade { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> Valor_unitario { get; set; }
        public Nullable<double> Valor_total { get; set; }
    }
}
