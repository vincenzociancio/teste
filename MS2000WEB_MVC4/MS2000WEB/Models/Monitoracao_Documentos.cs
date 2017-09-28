using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Monitoracao_Documentos
    {
        public int id { get; set; }
        public string Login { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> hora { get; set; }
        public string numero_documento { get; set; }
        public string processo { get; set; }
        public string arquivo { get; set; }
    }
}
