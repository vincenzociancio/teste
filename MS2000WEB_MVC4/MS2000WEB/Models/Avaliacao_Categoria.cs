using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Categoria
    {
        public Avaliacao_Categoria()
        {
            this.Avaliacao_Perguntas = new List<Avaliacao_Perguntas>();
        }

        public int ID { get; set; }
        public string Descricao { get; set; }
        public virtual ICollection<Avaliacao_Perguntas> Avaliacao_Perguntas { get; set; }
    }
}
