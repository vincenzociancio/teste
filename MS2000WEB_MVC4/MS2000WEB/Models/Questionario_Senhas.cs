using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Senhas
    {
        public Questionario_Senhas()
        {
            this.Questionario_Controle = new List<Questionario_Controle>();
            this.Questionario_Respostas = new List<Questionario_Respostas>();
        }

        public int PK_Senhas { get; set; }
        public string Senhas { get; set; }
        public Nullable<int> Validade { get; set; }
        public virtual ICollection<Questionario_Controle> Questionario_Controle { get; set; }
        public virtual ICollection<Questionario_Respostas> Questionario_Respostas { get; set; }
    }
}
