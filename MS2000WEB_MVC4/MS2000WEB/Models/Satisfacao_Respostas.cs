using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Satisfacao_Respostas
    {
        public int PK_Respostas { get; set; }
        public Nullable<int> FK_Pergunta { get; set; }
        public Nullable<int> FK_Usuario { get; set; }
        public string Alternativa { get; set; }
        public string Comentarios { get; set; }
        public string data { get; set; }
        public virtual Satisfacao_Perguntas Satisfacao_Perguntas { get; set; }
        public virtual Satisfacao_Usuario Satisfacao_Usuario { get; set; }
    }
}
