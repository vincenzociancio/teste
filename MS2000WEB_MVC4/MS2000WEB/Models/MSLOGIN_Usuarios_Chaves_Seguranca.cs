using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Usuarios_Chaves_Seguranca
    {
        public int PK_CHAVE { get; set; }
        public int FK_USUARIO { get; set; }
        public string POSICAO { get; set; }
        public string SENHA { get; set; }
    }
}
