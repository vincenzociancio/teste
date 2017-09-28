using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_Email_Aviso
    {
        public string codigo { get; set; }
        public string descricao { get; set; }
        public Nullable<int> Tem_parametro { get; set; }
        public string obs_parametro { get; set; }
        public Nullable<int> Somente_HTML { get; set; }
    }
}
