using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Satisfacao_Questionario
    {
        public Satisfacao_Questionario()
        {
            this.Satisfacao_Perguntas = new List<Satisfacao_Perguntas>();
        }

        public int PK_Questionario { get; set; }
        public Nullable<System.DateTime> Inicio { get; set; }
        public Nullable<System.DateTime> Fim { get; set; }
        public string Solicitante { get; set; }
        public Nullable<bool> Exibir { get; set; }
        public virtual ICollection<Satisfacao_Perguntas> Satisfacao_Perguntas { get; set; }
    }
}
