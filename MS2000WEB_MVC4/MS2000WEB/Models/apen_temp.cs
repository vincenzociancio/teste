using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class apen_temp
    {
        public Nullable<int> TotOkGeral { get; set; }
        public Nullable<int> TotErroGeral { get; set; }
        public Nullable<int> TotProcGeral { get; set; }
        public int PK_REG { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> Hora { get; set; }
    }
}
