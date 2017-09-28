using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
using NFe.Classes.Informacoes.Detalhe.Tributacao.Federal;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class PIS
    {
        /// <summary>
        ///     <para>Q02 (PISAliq) - Grupo PIS tributado pela alíquota</para>
        ///     <para>Q03 (PISQtde) - Grupo PIS tributado por Qtde</para>
        ///     <para>Q04 (PISNT) - Grupo PIS não tributado</para>
        ///     <para>Q05 (PISOutr) - Grupo PIS Outras Operações</para>
        /// </summary>
        [XmlElement("PISAliq", typeof (PISAliq))]
        [XmlElement("PISQtde", typeof (PISQtde))]
        [XmlElement("PISNT", typeof (PISNT))]
        [XmlElement("PISOutr", typeof (PISOutr))]
        public PISBasico TipoPIS { get; set; }
    }
}