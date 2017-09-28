using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Dic_Tabelas
    {
        public string NOME_TABELA { get; set; }
        public string ORDEM { get; set; }
        public string CRESCENTE { get; set; }
        public string DESCRICAO { get; set; }
        public string AJUDA { get; set; }
        public string INCLUI { get; set; }
        public string ALTERA { get; set; }
        public string EXCLUI { get; set; }
        public string FILTRA { get; set; }
        public string LOCALIZA { get; set; }
        public string IMPRIME { get; set; }
        public string INCLUI_DETALHADO { get; set; }
        public string ALTERA_DETALHADO { get; set; }
        public string AVISO_INCLUI { get; set; }
        public string AVISO_ALTERA { get; set; }
        public string AVISO_EXCLUI { get; set; }
        public string TRAVAREG { get; set; }
        public string TRAVAREG_DESCRICAO { get; set; }
        public string AJUDA_DESCRICAO { get; set; }
        public string ANTES_ALTERAR { get; set; }
        public string ANTES_ALTERAR_CAMPO { get; set; }
        public string ANTES_GRAVAR { get; set; }
        public string ANTES_GRAVAR_CAMPO { get; set; }
        public string ANTES_EXCLUIR { get; set; }
        public string ANTES_EXCLUIR_CAMPO { get; set; }
        public string DEPOIS_GRAVAR { get; set; }
        public string DEPOIS_GRAVAR_CAMPO { get; set; }
        public string DEPOIS_EXCLUIR { get; set; }
        public string DEPOIS_EXCLUIR_CAMPO { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
    }
}
