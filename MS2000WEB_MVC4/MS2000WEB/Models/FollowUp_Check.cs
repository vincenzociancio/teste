using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class FollowUp_Check
    {
        public int PK_ID { get; set; }
        public string FK_Processo { get; set; }
        public System.DateTime Data { get; set; }
        public int Semana { get; set; }
        public string FK_Usuario { get; set; }
        public string Ano { get; set; }
        public Nullable<bool> Aceite { get; set; }
        public string Comentario { get; set; }
    }
}
