using MSBiblioteca.MSUtil;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class ControleDeTributoViewModel
    {
        public int ID { get; set; }
        public Tributos Tributo { get; set; }
        public Meses Competencia { get; set; }
        public Periodicidade Periodicidade { get; set; }
        public DateTime Data { get; set; }
        public int? Ano { get; set; }
        public decimal Valor { get; set; }
    }
}