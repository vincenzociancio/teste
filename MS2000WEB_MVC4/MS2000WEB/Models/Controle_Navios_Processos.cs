using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Navios_Processos
    {
        public int PK_ID { get; set; }
        public string FK_Processo { get; set; }
        public int FK_Navio_Chegada { get; set; }
        public string FK_Usuario { get; set; }
        public System.DateTime Data { get; set; }
        public bool Excluido { get; set; }
    }
}
