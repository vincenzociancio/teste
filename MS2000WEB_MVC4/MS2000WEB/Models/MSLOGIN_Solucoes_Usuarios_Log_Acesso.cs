using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Usuarios_Log_Acesso
    {
        public int PK_LOG { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public string NOME_COMPLETO { get; set; }
        public Nullable<System.DateTime> DATA { get; set; }
        public string HORA { get; set; }
        public string MODULO { get; set; }
        public string DESCRICAO { get; set; }
        public string ID { get; set; }
        public string IP { get; set; }
        public string BROWSER { get; set; }
        public string PAGINA_ORIGEM { get; set; }
    }
}
