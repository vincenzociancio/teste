using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Abertos
    {
        public string Processo { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> hora { get; set; }
    }
}
