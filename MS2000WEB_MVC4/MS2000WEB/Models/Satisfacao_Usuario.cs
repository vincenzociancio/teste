using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Satisfacao_Usuario
    {
        public Satisfacao_Usuario()
        {
            this.Satisfacao_Respostas = new List<Satisfacao_Respostas>();
        }

        public int PK_usuario { get; set; }
        public string Nome { get; set; }
        public string Pin { get; set; }
        public string Empresa { get; set; }
        public virtual ICollection<Satisfacao_Respostas> Satisfacao_Respostas { get; set; }
    }
}
