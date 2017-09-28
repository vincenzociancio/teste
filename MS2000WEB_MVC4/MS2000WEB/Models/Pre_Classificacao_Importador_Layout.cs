using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Classificacao_Importador_Layout
    {
        public int Id { get; set; }
        public int Fk_Layout { get; set; }
        public string Fk_Importador { get; set; }
        public virtual Pre_Classificacao_Layout Pre_Classificacao_Layout { get; set; }
    }
}
