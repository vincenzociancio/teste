using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contas_Receber
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public string Tipo_Conta { get; set; }
        public string Cliente { get; set; }
        public Nullable<System.DateTime> Data_Emissao { get; set; }
        public Nullable<System.DateTime> Data_Vencimento { get; set; }
        public string Historico { get; set; }
        public Nullable<double> Saldo { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
