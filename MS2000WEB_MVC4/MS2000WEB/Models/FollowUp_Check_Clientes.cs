using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Check_Clientes
    {
        public int PK_ID { get; set; }
        public string FK_Importador { get; set; }
        public string FK_Usuario { get; set; }
    }
}
