using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Frequencia_Acidente
    {
        public int PK_ID { get; set; }
        public int Ano { get; set; }
        public int Mes { get; set; }
        public double Total_Horas { get; set; }
        public int Total_Acidentes { get; set; }
    }
}
