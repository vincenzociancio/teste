using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Perguntas
    {
        public Questionario_Perguntas()
        {
            this.Questionario_Alternativas = new List<Questionario_Alternativas>();
        }

        public int PK_Perguntas { get; set; }
        public Nullable<int> FK_Questionario { get; set; }
        public string Perguntas { get; set; }
        public virtual ICollection<Questionario_Alternativas> Questionario_Alternativas { get; set; }
        public virtual Questionario_Questionario Questionario_Questionario { get; set; }
    }
}
