using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MS2000WEB.ViewModels
{
  public class fabricante
    {
        [XmlElement("cpf-cnpj")]
        public String cpf_cnpj = "";
        [XmlElement("sigla-uf-fabric")]
        public String sigla_uf_fabric = "";
        [XmlElement("qtd-estatistica-fabric")]
        public double qtd_estatistica_fabric = 0.0;
        [XmlElement("peso-liquido-fabric")]
        public double peso_liquido_fabric = 0.0;
        [XmlElement("valor-moeda-local-embarque")]
        public double valor_moeda_local_embarque = 0.0;
        [XmlElement("obs-fabric")]
        public String obs_fabric = "";
    }
}
