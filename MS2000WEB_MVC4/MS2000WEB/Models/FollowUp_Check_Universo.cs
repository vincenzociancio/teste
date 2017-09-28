using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Check_Universo
    {
        public int PK_ID { get; set; }
        public int Semana { get; set; }
        public System.DateTime Data { get; set; }
        public string FK_Usuario { get; set; }
        public int Total_Processos { get; set; }
        public string Ano { get; set; }
    }
}
