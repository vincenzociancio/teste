using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Solicitacao_Tracla
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Data_solicitacao { get; set; }
        public string Remetente { get; set; }
        public string Observacoes { get; set; }
        public Nullable<int> Status { get; set; }
        public string Tradutor { get; set; }
        public Nullable<System.DateTime> Data_Traducao { get; set; }
    }
}
