using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Emails
    {
        public int PK_ID { get; set; }
        public string FK_Processo { get; set; }
        public string Email_ID { get; set; }
        public string Email_De { get; set; }
        public string Email_Para { get; set; }
        public string Email_CC { get; set; }
        public string Email_CCo { get; set; }
        public string Email_Assunto { get; set; }
        public string Email_BodyHTML { get; set; }
        public string Email_BodyTXT { get; set; }
        public string Email_Importancia { get; set; }
        public System.DateTime DT_Email { get; set; }
        public System.DateTime DT_Cadastro { get; set; }
        public string FK_Usuario { get; set; }
        public string Email_BodyHTMLOriginal { get; set; }
    }
}
