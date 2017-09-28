using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Anexo
    {
        public int PK_Anexo { get; set; }
        public string Descricao { get; set; }
        public string Caminho { get; set; }
        public string FK_Processo { get; set; }
        public string FK_Usuario { get; set; }
    }
}
