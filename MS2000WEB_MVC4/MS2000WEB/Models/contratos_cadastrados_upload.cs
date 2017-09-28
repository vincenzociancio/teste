using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class contratos_cadastrados_upload
    {
        public int fk_contrato { get; set; }
        public string Arquivo { get; set; }
        public string codigo { get; set; }
    }
}
