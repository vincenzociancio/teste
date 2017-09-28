using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Perguntas
    {
        public Avaliacao_Perguntas()
        {
            this.Avaliacao_Respostas = new List<Avaliacao_Respostas>();
        }

        public int ID { get; set; }
        public string Descricao { get; set; }
        public string FK_Setor { get; set; }
        public Nullable<int> FK_Categoria { get; set; }
        public virtual Avaliacao_Categoria Avaliacao_Categoria { get; set; }
        public virtual ICollection<Avaliacao_Respostas> Avaliacao_Respostas { get; set; }
    }
}
