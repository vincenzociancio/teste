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
    public partial class adicaoDocumentoVinculado
    {

        private string _codigotipodocumentovinculado;
        private string _numerodocumentovinculado;

        public string codigoTipoDocumentoVinculado
        {
            get { return _codigotipodocumentovinculado; }
            set { _codigotipodocumentovinculado = value; }
        }

        public string numeroDocumentoVinculado
        {
            get { return _numerodocumentovinculado; }
            set { _numerodocumentovinculado = value; }
        }

        public string ToXML()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(adicaoDocumentoVinculado));
            MemoryStream ms = new System.IO.MemoryStream();
            serializer.Serialize(ms, this);
            StreamReader sr = new System.IO.StreamReader(ms);
            return sr.ReadToEnd();
        }
    }
}