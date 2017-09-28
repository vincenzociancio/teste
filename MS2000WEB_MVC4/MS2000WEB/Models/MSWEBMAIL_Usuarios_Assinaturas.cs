using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSWEBMAIL_Usuarios_Assinaturas
    {
        public int PK_REG { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public string Assinatura_Email_Linha1 { get; set; }
        public string Assinatura_Email_Linha2 { get; set; }
        public string Assinatura_Email_Linha3 { get; set; }
    }
}
