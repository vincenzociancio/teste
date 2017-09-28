using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Menus
    {
        public int PK_MENU { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public string CODIGO { get; set; }
        public string TITULO_ab { get; set; }
        public string TITULO { get; set; }
        public string DESCRICAO { get; set; }
        public string FUNCAO { get; set; }
        public string JANELA { get; set; }
        public string ICONE { get; set; }
        public string DESCRICAO_DETALHADA { get; set; }
        public string MODULO { get; set; }
        public string NOME_TABELA_AJUDA { get; set; }
        public string STATUS { get; set; }
        public Nullable<int> ATIVO { get; set; }
    }
}
