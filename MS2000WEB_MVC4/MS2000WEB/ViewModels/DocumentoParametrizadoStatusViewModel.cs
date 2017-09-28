using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class DocumentoParametrizadoStatusViewModel
    {
        public string StatusID { get; set; }
        public string DescricaoStatus { get; set; }
        public bool Ativo { get; set; }
    }
}