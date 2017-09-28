using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Alternativas
    {
        public Questionario_Alternativas()
        {
            this.Questionario_Respostas = new List<Questionario_Respostas>();
        }

        public int PK_Alternativas { get; set; }
        public Nullable<int> FK_Perguntas { get; set; }
        public string Alternativa { get; set; }
        public Nullable<int> Selecao { get; set; }
        public virtual ICollection<Questionario_Respostas> Questionario_Respostas { get; set; }
        public virtual Questionario_Perguntas Questionario_Perguntas { get; set; }
    }
}
