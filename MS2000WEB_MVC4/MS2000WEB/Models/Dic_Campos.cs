using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Dic_Campos
    {
        public string NOME_TABELA { get; set; }
        public int SEQUENCIAL { get; set; }
        public string NOME_CAMPO { get; set; }
        public string TITULO_CAMPO { get; set; }
        public string DESCRICAO { get; set; }
        public string TIPOEDICAO { get; set; }
        public string TIPO { get; set; }
        public Nullable<int> TAMANHO { get; set; }
        public Nullable<int> DECIMAIS { get; set; }
        public string OBRIGATORIO { get; set; }
        public string ECHAVE { get; set; }
        public string EDITA { get; set; }
        public string LOCALIZA { get; set; }
        public string VISIVEL { get; set; }
        public string EDITA_EXT { get; set; }
        public string VALIDACAO { get; set; }
        public string VALIDACAO_VERCAMPOS { get; set; }
        public string VALIDACAO_PARAM { get; set; }
        public string FUNCAO { get; set; }
        public string FUNCAO_VERCAMPOS { get; set; }
        public string PARAMETROS { get; set; }
        public string ONCHANGE { get; set; }
        public string ONCLICK { get; set; }
        public string ONFOCUS { get; set; }
        public string ONKEYPRESS { get; set; }
        public string ONKEYUP { get; set; }
        public string MOSTRA_NO_GRID { get; set; }
        public string EDEPENDENTE { get; set; }
        public string MOSTRA_NO_GRID_EXT { get; set; }
        public string EDEPENDENTE_EXT { get; set; }
        public string AJUDA_DESCRICAO { get; set; }
        public string AJUDA_DESCRICAO_FILTRO { get; set; }
        public string CABECALHO_GRUPO { get; set; }
        public string REALCE { get; set; }
    }
}
