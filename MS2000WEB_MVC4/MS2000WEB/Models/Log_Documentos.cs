using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Log_Documentos
    {
        public int Id { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> hora { get; set; }
    }
}
