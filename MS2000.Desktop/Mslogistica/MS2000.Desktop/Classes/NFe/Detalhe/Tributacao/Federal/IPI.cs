﻿using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class IPI
    {
        /// <summary>
        ///     O02 - Classe de enquadramento do IPI para Cigarros e Bebidas
        /// </summary>
        public string clEnq { get; set; }

        /// <summary>
        ///     O03 - CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou
        ///     indireta.
        /// </summary>
        public string CNPJProd { get; set; }

        /// <summary>
        ///     O04 - Código do selo de controle IPI
        /// </summary>
        public string cSelo { get; set; }

        /// <summary>
        ///     O05 - Quantidade de selo de controle
        /// </summary>
        public int? qSelo { get; set; }

        /// <summary>
        ///     O06 - Código de Enquadramento Legal do IPI
        /// </summary>
        public int cEnq { get; set; }

        /// <summary>
        ///     O07 (IPITrib) - Grupo do CST 00, 49, 50 e 99
        ///     O08 (IPINT) - Grupo CST 01, 02, 03, 04, 51, 52, 53, 54 e 55
        /// </summary>
        [XmlElement("IPITrib", typeof (IPITrib))]
        [XmlElement("IPINT", typeof (IPINT))]
        public IPIBasico TipoIPI { get; set; }

        public bool ShouldSerializeqSelo()
        {
            return qSelo.HasValue;
        }
    }
}