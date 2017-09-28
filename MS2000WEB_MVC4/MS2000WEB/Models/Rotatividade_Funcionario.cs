using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Rotatividade_Funcionario
    {
        public int PK_ID { get; set; }
        public int Ano { get; set; }
        public int Mes { get; set; }
        public int Contratado { get; set; }
        public int Dispensado { get; set; }
    }
}
