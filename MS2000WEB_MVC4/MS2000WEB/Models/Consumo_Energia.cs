using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Consumo_Energia
    {
        public int PK_ID { get; set; }
        public int Ano { get; set; }
        public int Mes { get; set; }
        public double Conta_Luz_CS { get; set; }
        public double Conta_Lus_DG { get; set; }
        public int Efetivo_Mensal { get; set; }
    }
}
