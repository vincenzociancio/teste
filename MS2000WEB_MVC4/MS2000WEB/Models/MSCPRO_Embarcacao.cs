using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Embarcacao
    {
        public int PK_REG { get; set; }
        public string Nome_Embarcacao { get; set; }
        public Nullable<int> FK_Contribuinte { get; set; }
    }
}
