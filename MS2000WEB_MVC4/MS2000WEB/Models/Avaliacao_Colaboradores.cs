using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Colaboradores
    {
        public int ID { get; set; }
        public string FK_Colaborador { get; set; }
        public bool Realizado { get; set; }
        public Nullable<System.DateTime> Data_de_Realizacao { get; set; }
        public int FK_Avaliacao { get; set; }
        public virtual Avaliacao_Avaliacao Avaliacao_Avaliacao { get; set; }
    }
}
