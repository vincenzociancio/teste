using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Atos_concessorios
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Numero { get; set; }
        public string Descricao { get; set; }
        public Nullable<System.DateTime> Vigencia_inicial { get; set; }
        public Nullable<System.DateTime> Vigencia_final { get; set; }
        public string Moeda { get; set; }
        public Nullable<double> Valor_imp { get; set; }
        public Nullable<double> Valor_impc { get; set; }
        public Nullable<double> Valor_imps { get; set; }
        public Nullable<double> Valor_exp { get; set; }
        public Nullable<double> Saldo { get; set; }
        public Nullable<double> SaldoC { get; set; }
        public Nullable<double> SaldoS { get; set; }
    }
}
