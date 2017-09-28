using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace MS2000WEB.ViewModels
{
    public class PreDocumentosViewModel
    {        
        public int pk_codigo { get; set; }
        public string TipoDocumento { get; set; }
        public string SubTipoDocumento { get; set; }
        public string NumeroDocumento { get; set; }
        public string Pasta { get; set; }
        public string Arquivo { get; set; }         
        public DateTime?  DataInclusao { get; set; }
        public string DescricaoArquivo { get; set; }
    }
}