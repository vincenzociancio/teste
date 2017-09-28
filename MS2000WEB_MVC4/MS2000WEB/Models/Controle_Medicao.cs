using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Medicao
    {
        public int Codigo { get; set; }
        public string Importador_Agrupado { get; set; }
        public System.DateTime Data_Medicao { get; set; }
        public string Local_Inventario { get; set; }
        public int Status { get; set; }
        public string NFiscal { get; set; }
    }
}
