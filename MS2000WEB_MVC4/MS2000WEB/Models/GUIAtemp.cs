using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class GUIAtemp
    {
        public string Processo { get; set; }
        public string adicao { get; set; }
        public string NCM { get; set; }
        public string tratamento { get; set; }
        public string fundamento { get; set; }
        public Nullable<double> Valor { get; set; }
        public Nullable<double> Valorcif { get; set; }
        public Nullable<int> Pagina { get; set; }
        public string ato_concessorio { get; set; }
    }
}
