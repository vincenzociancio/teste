using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Detalhe
{
    public class det
    {
        /// <summary>
        ///     H02 - Número do item do NF
        /// </summary>
        [XmlAttribute]
        public int nItem { get; set; }

        /// <summary>
        ///     I01 - Detalhamento de Produtos e Serviços
        /// </summary>
        public prod prod { get; set; }

        /// <summary>
        ///     M01 - Tributos incidentes no Produto ou Serviço
        /// </summary>
        public imposto imposto { get; set; }

        /// <summary>
        ///     UA01 - Informação do Imposto devolvido
        /// </summary>
        public impostoDevol impostoDevol { get; set; }

        /// <summary>
        ///     V01 - Informações Adicionais do Produto
        /// </summary>
        public string infAdProd { get; set; }
    }
}