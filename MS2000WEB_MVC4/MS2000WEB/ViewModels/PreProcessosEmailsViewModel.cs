using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class PreProcessosEmailsViewModel
    {
        public int PK_ID { get; set; }
        public int FK_pre_Processo { get; set; }
        public string Email_De { get; set; }
        public string Email_Para { get; set; }
        public string Email_CC { get; set; } 
        public string Email_Assunto { get; set; }
        public string Email_BodyHTML { get; set; }
        public string Email_BodyHTMLOriginal { get; set; }
        public DateTime? DT_Email { get; set; }

        // Anexos do email

        public string Descricao { get; set; }
        public string Caminho { get; set; }
        public string CID { get; set; }
        public int PK_Anexos { get; set; }
        public int FK_Email { get; set; }
    }
}