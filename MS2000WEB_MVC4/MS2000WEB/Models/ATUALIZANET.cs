using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class ATUALIZANET
    {
        public string Tabela { get; set; }
        public string Chave { get; set; }
        public string Tipo { get; set; }
        public string Processa { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public Nullable<int> Enviou { get; set; }
    }
}
