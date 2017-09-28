﻿using System.Collections.Generic;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Cana
{
    public class cana
    {
        /// <summary>
        ///     ZC02 - Identificação da safra
        /// </summary>
        public string safra { get; set; }

        /// <summary>
        ///     ZC03 - Mês e ano de referência
        /// </summary>
        public string @ref { get; set; }

        /// <summary>
        ///     ZC04 - Grupo Fornecimento diário de cana
        /// </summary>
        [XmlElement("forDia")]
        public List<forDia> forDia { get; set; }

        /// <summary>
        ///     ZC10 - Grupo Deduções – Taxas e Contribuições
        /// </summary>
        [XmlElement("deduc")]
        public List<deduc> deduc { get; set; }
    }
}