using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Menu
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Nivel { get; set; }
        public Nullable<int> Habilitado { get; set; }
        public string Web_Form { get; set; }
    }
}
