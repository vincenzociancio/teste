using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MS2000WEB.ViewModels
{
    public class re_base
    {
        [XmlElement("valor-sem-cobertura")]
        public double valor_sem_cobertura = 0.0;
        [XmlElement("valor-com-cobertura")]
        public double valor_com_cobertura = 0.0;
        [XmlElement("valor-consignacao")]
        public String valor_consignacao = "";
    }
}
