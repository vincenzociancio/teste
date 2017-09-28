using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contas_Correntes
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public int Codigo { get; set; }
        public string Banco_Caixa { get; set; }
        public string Descricao { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta_Corrente { get; set; }
        public Nullable<double> Saldo { get; set; }
        public string Nivel { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Empresacc { get; set; }
        public string Filialcc { get; set; }
        public Nullable<int> ASCAA { get; set; }
        public int Ativa { get; set; }
    }
}
