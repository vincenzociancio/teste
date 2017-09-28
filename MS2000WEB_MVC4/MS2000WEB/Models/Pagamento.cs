using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pagamento
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Tipo { get; set; }
        public string Codigo { get; set; }
        public int Reg { get; set; }
        public string Banco_Caixa { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta_Corrente { get; set; }
        public string Caixa { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
