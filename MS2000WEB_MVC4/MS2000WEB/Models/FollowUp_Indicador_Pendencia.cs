using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Indicador_Pendencia
    {
        public int PK_ID { get; set; }
        public int QTD_PENDENCIA { get; set; }
        public System.DateTime DATA_PENDENCIA { get; set; }
        public int Universo { get; set; }
    }
}
