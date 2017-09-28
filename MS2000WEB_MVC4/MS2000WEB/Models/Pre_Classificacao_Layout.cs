using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Classificacao_Layout
    {
        public Pre_Classificacao_Layout()
        {
            this.Pre_Classificacao_Importador_Layout = new List<Pre_Classificacao_Importador_Layout>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public virtual ICollection<Pre_Classificacao_Importador_Layout> Pre_Classificacao_Importador_Layout { get; set; }
    }
}
