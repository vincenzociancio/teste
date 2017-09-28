using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Entrada
    {
        public int Num { get; set; }
        public string ID { get; set; }
        public string IP { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public string Browser { get; set; }
    }
}
