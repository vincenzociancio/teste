using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MS2000WEB.ViewModels
{
    public class instrumento_comercial
    {
        [XmlElement("tipo-instrumento")]
        public String tipo_instrumento = "";
        [XmlElement("codigo-instrumento")]
        public String codigo_instrumento = "";

    }
}
