using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class TAB_MOEDA_CONVERSAO
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
        public Nullable<double> Taxa_conversao { get; set; }
    }
}
