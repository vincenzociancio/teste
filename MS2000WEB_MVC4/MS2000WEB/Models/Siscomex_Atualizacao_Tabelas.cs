using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Siscomex_Atualizacao_Tabelas
    {
        public string Tabela { get; set; }
        public string Descricao { get; set; }
        public Nullable<int> Atualiza_WEB { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data_Atualizacao { get; set; }
    }
}
