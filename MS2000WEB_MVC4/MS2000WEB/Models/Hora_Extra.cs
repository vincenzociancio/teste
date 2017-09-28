using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Hora_Extra
    {
        public int PK_ID { get; set; }
        public int Ano { get; set; }
        public int Mes { get; set; }
        public double Total_Horas { get; set; }
    }
}
