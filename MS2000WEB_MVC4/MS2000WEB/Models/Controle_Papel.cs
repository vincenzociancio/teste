using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Papel
    {
        public System.DateTime Data { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> Debitos { get; set; }
        public Nullable<double> Creditos { get; set; }
        public Nullable<double> Saldo { get; set; }
        public Nullable<double> Impressoes { get; set; }
        public Nullable<double> Impressoes_Dia { get; set; }
        public string Fechado { get; set; }
        public string Usuario { get; set; }
    }
}
