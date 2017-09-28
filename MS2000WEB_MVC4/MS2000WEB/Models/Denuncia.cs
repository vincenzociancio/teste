using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Denuncia
    {
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Mensagem { get; set; }
        public Nullable<System.DateTime> Data_Abertura { get; set; }
        public string Protocolo { get; set; }
        public string Resposta { get; set; }
        public string Body { get; set; }
    }
}
