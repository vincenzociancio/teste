using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Itens_Faturas_Mov
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Fornecedor { get; set; }
        public string Fatura { get; set; }
        public int reg { get; set; }
        public string Processo { get; set; }
        public string DI { get; set; }
        public string DTA { get; set; }
        public Nullable<double> Peso { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
