using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class LOGSI
    {
        public int REGISTRO { get; set; }
        public Nullable<System.DateTime> DATA { get; set; }
        public Nullable<System.DateTime> HORA { get; set; }
        public string USUARIO { get; set; }
        public string MODULO { get; set; }
    }
}
