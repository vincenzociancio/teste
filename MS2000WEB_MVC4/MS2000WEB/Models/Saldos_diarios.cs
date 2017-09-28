using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Saldos_diarios
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public int Codigo { get; set; }
        public System.DateTime Data { get; set; }
        public Nullable<double> Saldo { get; set; }
        public Nullable<double> Saldo_sis { get; set; }
        public string Fechado { get; set; }
        public string Obs { get; set; }
    }
}
