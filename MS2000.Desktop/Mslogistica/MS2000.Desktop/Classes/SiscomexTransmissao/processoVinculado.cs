//////////////////////////
//Generated by XSD2Class.
//////////////////////////
using System;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.IO;

namespace MS2000.Desktop.Classes.SiscomexTransmissao
{
    public partial class processoVinculado
    {

        private string _codigotipoprocesso;
        private string _numeroprocesso;

        public string codigoTipoProcesso
        {
            get { return _codigotipoprocesso; }
            set { _codigotipoprocesso = value; }
        }

        public string numeroProcesso
        {
            get { return _numeroprocesso; }
            set { _numeroprocesso = value; }
        }

        public string ToXML()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(processoVinculado));
            MemoryStream ms = new System.IO.MemoryStream();
            serializer.Serialize(ms, this);
            StreamReader sr = new System.IO.StreamReader(ms);
            return sr.ReadToEnd();
        }
    }
}