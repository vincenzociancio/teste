using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Usuarios
    {
        public int PK_SOLUCAO_USUARIO { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public Nullable<int> ATIVO { get; set; }
    }
}
