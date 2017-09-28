using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Classificacao_Matriz
    {
        public int Id { get; set; }
        public int Fk_layout { get; set; }
        public string Descricao_Coluna { get; set; }
        public string Coluna_Excel { get; set; }
        public bool Exibir { get; set; }
        public int Formatacao { get; set; }
    }
}
