using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Parametros
    {
        public int PK_REG { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public string PARAMETRO { get; set; }
        public string VALOR { get; set; }
    }
}
