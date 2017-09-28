using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class PreFollowUpViewModel
    {
        public int pk_codigo { get; set; }
        public DateTime?  Data { get; set; }
        public string Hora { get; set; }
        public string Evento { get; set; }
        public string ObsEvento { get; set; }         
        
    }
}