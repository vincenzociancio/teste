using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSWEBMAIL_Pastas
    {
        public int PK_REG { get; set; }
        public Nullable<int> PASTA_ACIMA { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public string DESCRICAO { get; set; }
        public Nullable<int> PADRAO { get; set; }
        public Nullable<int> TIPO_PASTA { get; set; }
    }
}
