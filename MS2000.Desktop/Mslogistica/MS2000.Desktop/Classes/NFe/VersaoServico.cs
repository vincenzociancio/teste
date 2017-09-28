using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe
{
    public enum VersaoServico
    {
        [XmlEnum("1.00")]
        ve100,

        [XmlEnum("2.00")]
        ve200,

        [XmlEnum("3.10")]
        ve310
    }
}
