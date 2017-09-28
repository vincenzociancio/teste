using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSWEBMAIL_Marcadores
    {
        public int PK_REG { get; set; }
        public int FK_COR { get; set; }
        public int FK_USUARIO { get; set; }
        public string DESCRICAO { get; set; }
    }
}
