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
    public partial class adicaoDetalhamentoMercadoria
    {

        private string _nomeunidademedidacomercializada;
        private string _quantidademercadoriaunidadecomercializada;
        private string _textodetalhamentomercadoria;
        private string _valorunidadelocalembarque;
        private string _valorunidademedidacondicaovenda;

        public string nomeUnidadeMedidaComercializada
        {
            get { return _nomeunidademedidacomercializada; }
            set { _nomeunidademedidacomercializada = value; }
        }

        public string quantidadeMercadoriaUnidadeComercializada
        {
            get { return _quantidademercadoriaunidadecomercializada; }
            set { _quantidademercadoriaunidadecomercializada = value; }
        }

        public string textoDetalhamentoMercadoria
        {
            get { return _textodetalhamentomercadoria; }
            set { _textodetalhamentomercadoria = value; }
        }

        public string valorUnidadeLocalEmbarque
        {
            get { return _valorunidadelocalembarque; }
            set { _valorunidadelocalembarque = value; }
        }

        public string valorUnidadeMedidaCondicaoVenda
        {
            get { return _valorunidademedidacondicaovenda; }
            set { _valorunidademedidacondicaovenda = value; }
        }

        public string ToXML()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(adicaoDetalhamentoMercadoria));
            MemoryStream ms = new System.IO.MemoryStream();
            serializer.Serialize(ms, this);
            StreamReader sr = new System.IO.StreamReader(ms);
            return sr.ReadToEnd();
        }
    }
}