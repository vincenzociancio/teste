using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Check_Tipo_Processo
    {
        public int PK_ID { get; set; }
        public string FK_Tipo_Processo { get; set; }
        public string FK_Usuario { get; set; }
    }
}
