using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Questionario_Controle
    {
        public int id_Controle { get; set; }
        public int FK_Questionario { get; set; }
        public int FK_Senhas { get; set; }
        public virtual Questionario_Questionario Questionario_Questionario { get; set; }
        public virtual Questionario_Senhas Questionario_Senhas { get; set; }
    }
}
