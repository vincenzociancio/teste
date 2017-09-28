using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSWEBMAIL_Anexos
    {
        public int PK_REG { get; set; }
        public int FK_EMAIL { get; set; }
        public string NOME { get; set; }
        public int TAMANHO { get; set; }
        public int TIPO_ANEXO { get; set; }
    }
}
