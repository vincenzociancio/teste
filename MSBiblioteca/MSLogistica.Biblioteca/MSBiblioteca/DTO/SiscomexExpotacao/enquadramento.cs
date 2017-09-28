using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MSBiblioteca.DTO.SiscomexExpotacao
{
    public class enquadramento
    {
        [XmlElement("codigo-enquadramento")]
        public String codigo_enquadramento = "";
    }
}
