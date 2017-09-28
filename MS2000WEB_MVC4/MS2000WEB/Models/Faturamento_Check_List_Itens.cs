using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faturamento_Check_List_Itens
    {
        public int Codigo { get; set; }
        public int Fk_Codigo { get; set; }
        public string Documentacao { get; set; }
        public Nullable<int> Original { get; set; }
        public Nullable<int> Assinado { get; set; }
        public Nullable<int> Carimbado { get; set; }
        public Nullable<int> Impresso { get; set; }
        public Nullable<int> Copia { get; set; }
    }
}
