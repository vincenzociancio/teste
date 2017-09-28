using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Solicitante
    {
        public int PK_REG { get; set; }
        public string Matricula_Receita { get; set; }
        public string Nome { get; set; }
        public string Cargo { get; set; }
        public string Telefone { get; set; }
        public string Observacao { get; set; }
    }
}
