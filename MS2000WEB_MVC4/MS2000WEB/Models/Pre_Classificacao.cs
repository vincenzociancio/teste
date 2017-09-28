using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Classificacao
    {
        public int ID { get; set; }
        public int FK_PreProcesso { get; set; }
        public int FK_Layout { get; set; }
        public int Linha { get; set; }
        public int Coluna { get; set; }
        public string Tipo { get; set; }
        public string TipoFormato { get; set; }
        public string Conteudo { get; set; }
    }
}
