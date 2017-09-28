using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_Numerario_Obrigatorio
    {
        public int PK_ID { get; set; }
        public string FK_Tipo_Processo { get; set; }
        public string FK_Tipo_Declaracao { get; set; }
        public string FK_Tipo_Numerario { get; set; }
        public string Plano_Contas { get; set; }
    }
}
