using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Destinatario
{
    /// <summary>
    ///     <para>1 – Contribuinte ICMSpagamento à vista;</para>
    ///     <para>2 – Contribuinte isento de inscrição;</para>
    ///     <para>9 – Não Contribuinte</para>
    /// </summary>
    public enum indIEDest
    {
        [XmlEnum("1")] ICMSpagamentoAVista,
        [XmlEnum("2")] Isento,
        [XmlEnum("9")] NaoContribuinte
    }
}