using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Respostas_Colaboradores
    {
        public int ID { get; set; }
        public int FK_Pergunta { get; set; }
        public int FK_Avaliacao { get; set; }
        public string FK_Colaborador { get; set; }
        public Nullable<int> FK_Resposta { get; set; }
        public bool Correta { get; set; }
        public virtual Avaliacao_Avaliacao Avaliacao_Avaliacao { get; set; }
    }
}
