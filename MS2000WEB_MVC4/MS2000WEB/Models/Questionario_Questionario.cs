using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Questionario
    {
        public Questionario_Questionario()
        {
            this.Questionario_Controle = new List<Questionario_Controle>();
            this.Questionario_Perguntas = new List<Questionario_Perguntas>();
        }

        public int PK_Questionario { get; set; }
        public string Titulo { get; set; }
        public Nullable<System.DateTime> Inicio { get; set; }
        public Nullable<System.DateTime> Fim { get; set; }
        public string Solicitante { get; set; }
        public virtual ICollection<Questionario_Controle> Questionario_Controle { get; set; }
        public virtual ICollection<Questionario_Perguntas> Questionario_Perguntas { get; set; }
    }
}
