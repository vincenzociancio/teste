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
    public partial class adicaoDeducaoValorAduaneiro
    {

        private string _codigometododeducaovalor;
        private string _codigomoedanegociadadeducao;
        private string _valordeducaomoedanacional;
        private string _valordeducaomoedanegociada;

        public string codigoMetodoDeducaoValor
        {
            get { return _codigometododeducaovalor; }
            set { _codigometododeducaovalor = value; }
        }

        public string codigoMoedaNegociadaDeducao
        {
            get { return _codigomoedanegociadadeducao; }
            set { _codigomoedanegociadadeducao = value; }
        }

        public string valorDeducaoMoedaNacional
        {
            get { return _valordeducaomoedanacional; }
            set { _valordeducaomoedanacional = value; }
        }

        public string valorDeducaoMoedaNegociada
        {
            get { return _valordeducaomoedanegociada; }
            set { _valordeducaomoedanegociada = value; }
        }

        public string ToXML()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(adicaoDeducaoValorAduaneiro));
            MemoryStream ms = new System.IO.MemoryStream();
            serializer.Serialize(ms, this);
            StreamReader sr = new System.IO.StreamReader(ms);
            return sr.ReadToEnd();
        }
    }
}