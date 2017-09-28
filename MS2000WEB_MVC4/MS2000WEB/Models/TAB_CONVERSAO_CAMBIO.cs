using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class TAB_CONVERSAO_CAMBIO
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Taxa_Conversao { get; set; }
        public string Vigencia_Inicio_Taxa { get; set; }
        public string Vigencia_Fim_Taxa { get; set; }
    }
}
