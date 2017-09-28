using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faturas_mov
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Fornecedor { get; set; }
        public string Fatura { get; set; }
        public string Boleto { get; set; }
        public Nullable<System.DateTime> Vencimento { get; set; }
        public Nullable<double> Peso { get; set; }
        public Nullable<double> Valor { get; set; }
        public Nullable<int> Conta_Corrente { get; set; }
        public Nullable<int> Codigo_mov { get; set; }
        public string Doc_contabil { get; set; }
    }
}
