using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_APEN_TV
    {
        public int PK_ID_TV_APEN { get; set; }
        public string Processo { get; set; }
        public int Dias_Processo { get; set; }
        public int Dias_Followup { get; set; }
        public string Responsavel { get; set; }
    }
}
