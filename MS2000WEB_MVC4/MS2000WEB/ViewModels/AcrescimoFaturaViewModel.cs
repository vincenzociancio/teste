using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS2000WEB.ViewModels
{
    public class AcrescimoFaturaViewModel 
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Cd_Met_Acres_Valor { get; set; }
        public string Descricao { get; set; }
        public decimal Vl_Acrescimo_Moeda { get; set; }
        public string Cd_Md_Negoc_Acres { get; set; }
        public decimal Vl_Acrescimo_Mn { get; set; }
    }
}
