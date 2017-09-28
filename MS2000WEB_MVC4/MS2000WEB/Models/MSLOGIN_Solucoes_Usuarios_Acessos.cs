using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Usuarios_Acessos
    {
        public int PK_USUARIO_ACESSO { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public string FK_CODIGO_MENU { get; set; }
        public Nullable<int> ACESSA { get; set; }
        public Nullable<int> SOMENTE_ESTE { get; set; }
        public Nullable<int> ACESSA_AJUDA { get; set; }
        public Nullable<int> ACESSA_INCLUSAO { get; set; }
        public Nullable<int> ACESSA_ALTERACAO { get; set; }
        public Nullable<int> ACESSA_EXCLUSAO { get; set; }
        public Nullable<int> ACESSA_FILTRO { get; set; }
        public Nullable<int> ACESSA_LOCALIZA { get; set; }
        public Nullable<int> ACESSA_RELATORIO { get; set; }
        public Nullable<int> ACESSA_DETALHES { get; set; }
    }
}
