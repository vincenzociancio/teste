using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLINK
    {
        public int PK_LINK { get; set; }
        public string DESCRICAO { get; set; }
        public string DESCRICAO_DETALHADA { get; set; }
        public string ICONE { get; set; }
        public Nullable<int> ATIVO { get; set; }
        public Nullable<int> RESTRITO { get; set; }
        public string LINK { get; set; }
        public string TARGET { get; set; }
        public string PARAMETROS_JANELA { get; set; }
    }
}
