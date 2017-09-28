using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_TR
    {
        public int PK_TR { get; set; }
        public string FK_Importador { get; set; }
        public string Embarcacao { get; set; }
        public string FK_Processo { get; set; }
        public string DI { get; set; }
        public string IN { get; set; }
        public string Despacho { get; set; }
        public string FK_Documento_Arquivo { get; set; }
        public string Excluido { get; set; }
    }
}
