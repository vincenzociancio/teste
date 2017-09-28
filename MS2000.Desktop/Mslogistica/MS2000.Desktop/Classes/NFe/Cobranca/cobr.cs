using System.Collections.Generic;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Cobranca
{
    public class cobr
    {
        /// <summary>
        ///     Y02 - Grupo Fatura
        /// </summary>
        public fat fat { get; set; }

        /// <summary>
        ///     Y07 - Grupo Duplicata
        ///     <para>Ocorrência: 0-120</para>
        /// </summary>
        [XmlElement("dup")]
        public List<dup> dup { get; set; }
    }
}