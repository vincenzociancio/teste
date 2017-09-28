using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Respostas
    {
        public int PK_Resposta { get; set; }
        public Nullable<int> FK_Senha { get; set; }
        public Nullable<int> FK_Alternativa { get; set; }
        public virtual Questionario_Alternativas Questionario_Alternativas { get; set; }
        public virtual Questionario_Senhas Questionario_Senhas { get; set; }
    }
}
