using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Satisfacao_Perguntas
    {
        public Satisfacao_Perguntas()
        {
            this.Satisfacao_Respostas = new List<Satisfacao_Respostas>();
        }

        public int PK_Perguntas { get; set; }
        public Nullable<int> FK_questionario { get; set; }
        public string Perguntas { get; set; }
        public Nullable<int> IDL { get; set; }
        public virtual Satisfacao_Questionario Satisfacao_Questionario { get; set; }
        public virtual ICollection<Satisfacao_Respostas> Satisfacao_Respostas { get; set; }
    }
}
