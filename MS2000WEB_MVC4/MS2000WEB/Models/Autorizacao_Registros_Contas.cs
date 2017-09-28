using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Autorizacao_Registros_Contas
    {
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta { get; set; }
        public Nullable<int> CONTAC { get; set; }
    }
}
