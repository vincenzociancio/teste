using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Email_auto
    {
        public int Codigo { get; set; }
        public string Programa { get; set; }
        public string Assunto { get; set; }
        public string Titulo { get; set; }
        public string De { get; set; }
        public string Para { get; set; }
        public string CC { get; set; }
        public string CCO { get; set; }
        public string Body { get; set; }
        public string Anexo { get; set; }
        public Nullable<int> HTML { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public Nullable<int> Lixo { get; set; }
        public string Erro_Message { get; set; }
    }
}
