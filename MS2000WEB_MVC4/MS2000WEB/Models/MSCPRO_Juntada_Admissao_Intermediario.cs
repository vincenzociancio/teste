using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Juntada_Admissao_Intermediario
    {
        public int PK_REG { get; set; }
        public Nullable<int> FK_Processo { get; set; }
        public Nullable<int> FK_Tipo_Juntada { get; set; }
        public string Processo_Secundario { get; set; }
    }
}
