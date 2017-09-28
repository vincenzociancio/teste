using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MS2000WEB.Models;

namespace MS2000WEB.ViewModels
{
    public class DocumentosParametrizadoViewModel
    {
        public List<Documentos> ListaDeDocumentos { get; set; }

        public class Documentos
        {
            public int? ID { get; set; }
            public int? DocID { get; set; }
            public string Tipo_Doc { get; set; }
            public string Sub_Tipo_Doc { get; set; }
            public string Descricao { get; set; }
        }
    
    }



}