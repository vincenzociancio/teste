using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Proposta_de_acao
    {
        public int Sequencial { get; set; }
        public int Pk_ID { get; set; }
        public string Desc_Acoes_Corretiva { get; set; }
        public string Resp_Acoes_Corretiva { get; set; }
        public Nullable<System.DateTime> Prazo_Acoes_Corretiva { get; set; }
        public string Usuario { get; set; }
    }
}
