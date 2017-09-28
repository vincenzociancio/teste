using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Emails_Tipo_Anexos
    {
        public int PK_Tipo_Anexo { get; set; }
        public string Descricao { get; set; }
        public string Icone { get; set; }
        public string Extensao { get; set; }
    }
}
