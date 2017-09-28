using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Usuarios_APEN
    {
        public int Sequencial { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Hora { get; set; }
        public Nullable<int> OK { get; set; }
        public Nullable<int> NAO { get; set; }
        public Nullable<int> TOTAL { get; set; }
        public Nullable<int> PERCENTUAL { get; set; }
    }
}
