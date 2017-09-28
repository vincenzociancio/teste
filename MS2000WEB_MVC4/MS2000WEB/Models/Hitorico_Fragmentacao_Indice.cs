using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Hitorico_Fragmentacao_Indice
    {
        public int Id_Hitorico_Fragmentacao_Indice { get; set; }
        public Nullable<System.DateTime> Dt_Referencia { get; set; }
        public string Nm_Servidor { get; set; }
        public string Nm_Database { get; set; }
        public string Nm_Tabela { get; set; }
        public string Nm_Indice { get; set; }
        public Nullable<decimal> Avg_Fragmentation_In_Percent { get; set; }
        public Nullable<int> Page_Count { get; set; }
        public Nullable<byte> Fill_Factor { get; set; }
    }
}
