using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class ItensFaturaViewModel
    {
        public string Sequencial { get; set; }
        public string Descricao_Produto { get; set; }
        public double? Quantidade { get; set; }
        public string Unidade { get; set; }
        public double? VMLE { get; set; }        
    }
}