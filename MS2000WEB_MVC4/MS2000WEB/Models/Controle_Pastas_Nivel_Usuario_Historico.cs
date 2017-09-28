using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Pastas_Nivel_Usuario_Historico
    {
        public int ID { get; set; }
        public string Processo { get; set; }
        public string Usuario_Antes { get; set; }
        public string Usuario_Depois { get; set; }
        public string Nivel { get; set; }
        public System.DateTime Data { get; set; }
    }
}
