using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MSBiblioteca.DTO.SiscomexExpotacao
{
    public class instrumento_comercial
    {
        [XmlElement("tipo-instrumento")]
        public String tipo_instrumento = "";
        [XmlElement("codigo-instrumento")]
        public String codigo_instrumento = "";

    }
}
