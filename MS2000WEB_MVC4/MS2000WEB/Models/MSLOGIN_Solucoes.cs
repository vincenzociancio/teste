using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes
    {
        public int PK_SOLUCAO { get; set; }
        public string SISTEMA { get; set; }
        public string VERSAO { get; set; }
        public string DESCRICAO { get; set; }
        public string DESCRICAO_DETALHADA { get; set; }
        public string ICONE { get; set; }
        public Nullable<int> ATIVO { get; set; }
        public string EMPRESA { get; set; }
        public string LINK { get; set; }
        public string TARGET { get; set; }
        public string PARAMETROS_JANELA { get; set; }
        public string TEM_MENU { get; set; }
        public string SELECIONA_EMPRESA { get; set; }
        public string DIRETORIO_DESENVOLVIMENTO { get; set; }
        public string DIRETORIO_PRODUCAO { get; set; }
    }
}
