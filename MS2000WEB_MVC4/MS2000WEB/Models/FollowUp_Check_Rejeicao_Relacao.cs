using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Check_Rejeicao_Relacao
    {
        public int Id { get; set; }
        public int FK_Rejeicao_Tipo { get; set; }
        public int FK_FollowUp_Check { get; set; }
    }
}
