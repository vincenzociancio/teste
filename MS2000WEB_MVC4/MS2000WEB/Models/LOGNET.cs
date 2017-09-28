using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class LOGNET
    {
        public int REGISTRO { get; set; }
        public Nullable<System.DateTime> DATA { get; set; }
        public Nullable<System.DateTime> HORA { get; set; }
        public string USUARIO { get; set; }
        public string PAGINA { get; set; }
        public string PARAMETROS { get; set; }
    }
}
