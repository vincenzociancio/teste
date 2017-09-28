using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Custos_Unitarios
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public string Tipo_Custo { get; set; }
        public int reg { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
