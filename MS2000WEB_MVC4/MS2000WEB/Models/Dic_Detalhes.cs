using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Dic_Detalhes
    {
        public string NOME_TABELA { get; set; }
        public string SEQUENCIAL { get; set; }
        public string DETALHE { get; set; }
        public string NOME_TABELA_DETALHE { get; set; }
        public string NOME_JANELA { get; set; }
        public string FUNCAO { get; set; }
        public string CAMPO_01 { get; set; }
        public string CAMPO_DETALHE_01 { get; set; }
        public string CAMPO_01_DESCR { get; set; }
        public string EXT { get; set; }
        public string ABRE_AUTOMATICO { get; set; }
        public string ICONE { get; set; }
        public string ABRE_SEMCHAVE { get; set; }
        public string CAMPO_STATUS { get; set; }
        public string STATUS_DIFERENTE { get; set; }
        public Nullable<int> ID { get; set; }
    }
}
