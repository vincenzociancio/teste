using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace MS2000WEB.ViewModels
{
    public class item_mercadoria
    {
        public String descricao = "";
        [XmlElement("valor-condicao-venda")]
        public double valor_condicao_venda = 0.0;
        [XmlElement("valor-local-embarque")]
        public double valor_local_embarque = 0.0;
        [XmlElement("quantidade-comercializada")]
        public double quantidade_comercializada = 0.0;
        [XmlElement("quantidade-estatistica")]
        public double quantidade_estatistica = 0.0;
        [XmlElement("numero-peso-liquido")]
        public double numero_peso_liquido = 0.0;
    }
}
