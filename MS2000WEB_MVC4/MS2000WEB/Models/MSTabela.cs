using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSTabela
    {
        public int Id { get; set; }
        public string Nome_Tabela_SQL { get; set; }
        public string Nome_Tabela_Access { get; set; }
        public string Processado { get; set; }
        public string Data { get; set; }
        public string Observacao { get; set; }
    }
}
