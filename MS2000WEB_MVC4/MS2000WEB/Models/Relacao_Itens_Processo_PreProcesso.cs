using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Relacao_Itens_Processo_PreProcesso
    {
        public int PK_Codigo { get; set; }
        public string FK_Processo { get; set; }
        public string FK_Processo_Fatura { get; set; }
        public string FK_Processo_Fatura_Item_Sequencial { get; set; }
        public int FK_PreProcesso { get; set; }
        public int FK_PreProcesso_Item_Linha { get; set; }
    }
}
