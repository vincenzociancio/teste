using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe
{
    [XmlRoot(Namespace = "http://www.portalfiscal.inf.br/nfe")]
    public class NFe
    {
        /// <summary>
        ///     A01 - Informações da Nota Fiscal Eletrônica
        /// </summary>
        [XmlElement(Namespace = "http://www.portalfiscal.inf.br/nfe")]
        public infNFe infNFe { get; set; }

        /// <summary>
        /// ZX01 - Informações suplementares da Nota Fiscal
        /// </summary>
        [XmlElement(Namespace = "http://www.portalfiscal.inf.br/nfe")]
        public infNFeSupl infNFeSupl { get; set; }
  
    }
}