using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSWEBMAIL_Catalogo_Endereco
    {
        public int PK_REG { get; set; }
        public int FK_USUARIO { get; set; }
        public string NOME { get; set; }
        public string EMAIL { get; set; }
        public string TELEFONE { get; set; }
    }
}
