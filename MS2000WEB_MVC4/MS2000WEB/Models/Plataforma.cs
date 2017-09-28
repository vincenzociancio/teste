using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Plataforma
    {
        public int PK_Plataforma { get; set; }
        public string FK_Importador { get; set; }
        public string Plataforma1 { get; set; }
        public string Sigla { get; set; }
        public bool Excluido { get; set; }
    }
}
