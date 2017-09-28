using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Respostas
    {
        public int ID { get; set; }
        public string Descricao { get; set; }
        public int FK_Pergunta { get; set; }
        public bool Correta { get; set; }
        public virtual Avaliacao_Perguntas Avaliacao_Perguntas { get; set; }
    }
}
