using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class ProcessosViewModel
    {       
        public string codigo { get; set; }
        public DateTime? Data { get; set; }
        public string CNPJ_CPF { get; set; }
        public string Importador { get; set; }  
    }
}