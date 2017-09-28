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
    public partial class declaracaoImportacaoTransmissao
    {

        private adicao _adicao;
        private cargaArmazenada _armazem;
        private string _cargapesobruto;
        private string _cargapesoliquido;
        private string _codigobandeiratranspote;
        private string _codigomodalidadedespacho;
        private string _codigomoedafrete;
        private string _codigomoedaseguro;
        private string _codigomotivotransmissao;
        private string _codigoorigemdi;
        private string _codigopaisimportador;
        private string _codigopaisprocedenciacarga;
        private string _codigorecintoalfandegado;
        private string _codigosetorarmazenamento;
        private string _codigotipoagentecarga;
        private string _codigotipoconsignatario;
        private string _codigotipodeclaracao;
        private string _codigotipodocumentocarga;
        private string _codigotipoimportador;
        private string _codigotipomanifesto;
        private string _codigotipopagamentotributario;
        private string _codigourfcargaentrada;
        private string _codigourfdespacho;
        private string _codigoutilizacaodocumentocarga;
        private string _codigoviatransporte;
        private compensacaoCreditoTributo _compensacaocredito;
        private string _datachegadacarga;
        private string _dataembarque;
        private documentoInstrucaoDespacho _documentoinstrucaodespacho;
        private embalagemCarga _embalagem;
        private string _enderecobairroimportador;
        private string _enderecocepimportador;
        private string _enderecocomplementoimportador;
        private string _enderecologradouroimportador;
        private string _enderecomunicipioimportador;
        private string _endereconumeroimportador;
        private string _enderecoufimportador;
        private string _identificacaodeclaracaoimportacao;
        private string _indicadormultimodalviatransporte;
        private string _indicadoroperacaofundap;
        private informacaoMercosul _informacaomercosul;
        private string _informacoescomplementares;
        private string _nomeconsignatario;
        private string _nomeimportador;
        private string _nomelocalembarque;
        private string _nometransportadorviatransporte;
        private string _nomeveiculoviatransporte;
        private string _numeroagentecarga;
        private string _numeroconsignatario;
        private string _numerocontapagamentotributario;
        private string _numerocpfrepresentantelegal;
        private string _numerodocumentocarga;
        private string _numerodocumentocargamaster;
        private string _numeroimportador;
        private string _numeromanifesto;
        private string _numerotelefoneimportador;
        private string _numeroveiculoviatransporte;
        private pagamentoTributos _pagamento;
        private processoVinculado _processo;
        private string _totaladicoes;
        private string _valorfreteterritorionacionalmoedanegociada;
        private string _valortotalfretecollect;
        private string _valortotalfretemoedanacional;
        private string _valortotalfreteprepaid;
        private string _valortotalmlemoedanacional;
        private string _valortotalseguromoedanacional;
        private string _valortotalseguromoedanegociada;

        public declaracaoImportacaoTransmissao()
        {
            _adicao = new adicao();
            _armazem = new cargaArmazenada();
            _compensacaocredito = new compensacaoCreditoTributo();
            _documentoinstrucaodespacho = new documentoInstrucaoDespacho();
            _embalagem = new embalagemCarga();
            _informacaomercosul = new informacaoMercosul();
            _pagamento = new pagamentoTributos();
            _processo = new processoVinculado();
        }

        public adicao adicao
        {
            get { return _adicao; }
            set { _adicao = value; }
        }

        public cargaArmazenada armazem
        {
            get { return _armazem; }
            set { _armazem = value; }
        }

        public string cargaPesoBruto
        {
            get { return _cargapesobruto; }
            set { _cargapesobruto = value; }
        }

        public string cargaPesoLiquido
        {
            get { return _cargapesoliquido; }
            set { _cargapesoliquido = value; }
        }

        public string codigoBandeiraTranspote
        {
            get { return _codigobandeiratranspote; }
            set { _codigobandeiratranspote = value; }
        }

        public string codigoModalidadeDespacho
        {
            get { return _codigomodalidadedespacho; }
            set { _codigomodalidadedespacho = value; }
        }

        public string codigoMoedaFrete
        {
            get { return _codigomoedafrete; }
            set { _codigomoedafrete = value; }
        }

        public string codigoMoedaSeguro
        {
            get { return _codigomoedaseguro; }
            set { _codigomoedaseguro = value; }
        }

        public string codigoMotivoTransmissao
        {
            get { return _codigomotivotransmissao; }
            set { _codigomotivotransmissao = value; }
        }

        public string codigoOrigemDI
        {
            get { return _codigoorigemdi; }
            set { _codigoorigemdi = value; }
        }

        public string codigoPaisImportador
        {
            get { return _codigopaisimportador; }
            set { _codigopaisimportador = value; }
        }

        public string codigoPaisProcedenciaCarga
        {
            get { return _codigopaisprocedenciacarga; }
            set { _codigopaisprocedenciacarga = value; }
        }

        public string codigoRecintoAlfandegado
        {
            get { return _codigorecintoalfandegado; }
            set { _codigorecintoalfandegado = value; }
        }

        public string codigoSetorArmazenamento
        {
            get { return _codigosetorarmazenamento; }
            set { _codigosetorarmazenamento = value; }
        }

        public string codigoTipoAgenteCarga
        {
            get { return _codigotipoagentecarga; }
            set { _codigotipoagentecarga = value; }
        }

        public string codigoTipoConsignatario
        {
            get { return _codigotipoconsignatario; }
            set { _codigotipoconsignatario = value; }
        }

        public string codigoTipoDeclaracao
        {
            get { return _codigotipodeclaracao; }
            set { _codigotipodeclaracao = value; }
        }

        public string codigoTipoDocumentoCarga
        {
            get { return _codigotipodocumentocarga; }
            set { _codigotipodocumentocarga = value; }
        }

        public string codigoTipoImportador
        {
            get { return _codigotipoimportador; }
            set { _codigotipoimportador = value; }
        }

        public string codigoTipoManifesto
        {
            get { return _codigotipomanifesto; }
            set { _codigotipomanifesto = value; }
        }

        public string codigoTipoPagamentoTributario
        {
            get { return _codigotipopagamentotributario; }
            set { _codigotipopagamentotributario = value; }
        }

        public string codigoUrfCargaEntrada
        {
            get { return _codigourfcargaentrada; }
            set { _codigourfcargaentrada = value; }
        }

        public string codigoUrfDespacho
        {
            get { return _codigourfdespacho; }
            set { _codigourfdespacho = value; }
        }

        public string codigoUtilizacaoDocumentoCarga
        {
            get { return _codigoutilizacaodocumentocarga; }
            set { _codigoutilizacaodocumentocarga = value; }
        }

        public string codigoViaTransporte
        {
            get { return _codigoviatransporte; }
            set { _codigoviatransporte = value; }
        }

        public compensacaoCreditoTributo compensacaoCredito
        {
            get { return _compensacaocredito; }
            set { _compensacaocredito = value; }
        }

        public string dataChegadaCarga
        {
            get { return _datachegadacarga; }
            set { _datachegadacarga = value; }
        }

        public string dataEmbarque
        {
            get { return _dataembarque; }
            set { _dataembarque = value; }
        }

        public documentoInstrucaoDespacho documentoInstrucaoDespacho
        {
            get { return _documentoinstrucaodespacho; }
            set { _documentoinstrucaodespacho = value; }
        }

        public embalagemCarga embalagem
        {
            get { return _embalagem; }
            set { _embalagem = value; }
        }

        public string enderecoBairroImportador
        {
            get { return _enderecobairroimportador; }
            set { _enderecobairroimportador = value; }
        }

        public string enderecoCepImportador
        {
            get { return _enderecocepimportador; }
            set { _enderecocepimportador = value; }
        }

        public string enderecoComplementoImportador
        {
            get { return _enderecocomplementoimportador; }
            set { _enderecocomplementoimportador = value; }
        }

        public string enderecoLogradouroImportador
        {
            get { return _enderecologradouroimportador; }
            set { _enderecologradouroimportador = value; }
        }

        public string enderecoMunicipioImportador
        {
            get { return _enderecomunicipioimportador; }
            set { _enderecomunicipioimportador = value; }
        }

        public string enderecoNumeroImportador
        {
            get { return _endereconumeroimportador; }
            set { _endereconumeroimportador = value; }
        }

        public string enderecoUfImportador
        {
            get { return _enderecoufimportador; }
            set { _enderecoufimportador = value; }
        }

        public string identificacaoDeclaracaoImportacao
        {
            get { return _identificacaodeclaracaoimportacao; }
            set { _identificacaodeclaracaoimportacao = value; }
        }

        public string indicadorMultimodalViaTransporte
        {
            get { return _indicadormultimodalviatransporte; }
            set { _indicadormultimodalviatransporte = value; }
        }

        public string indicadorOperacaoFundap
        {
            get { return _indicadoroperacaofundap; }
            set { _indicadoroperacaofundap = value; }
        }

        public informacaoMercosul informacaoMercosul
        {
            get { return _informacaomercosul; }
            set { _informacaomercosul = value; }
        }

        public string informacoesComplementares
        {
            get { return _informacoescomplementares; }
            set { _informacoescomplementares = value; }
        }

        public string nomeConsignatario
        {
            get { return _nomeconsignatario; }
            set { _nomeconsignatario = value; }
        }

        public string nomeImportador
        {
            get { return _nomeimportador; }
            set { _nomeimportador = value; }
        }

        public string nomeLocalEmbarque
        {
            get { return _nomelocalembarque; }
            set { _nomelocalembarque = value; }
        }

        public string nomeTransportadorViaTransporte
        {
            get { return _nometransportadorviatransporte; }
            set { _nometransportadorviatransporte = value; }
        }

        public string nomeVeiculoViaTransporte
        {
            get { return _nomeveiculoviatransporte; }
            set { _nomeveiculoviatransporte = value; }
        }

        public string numeroAgenteCarga
        {
            get { return _numeroagentecarga; }
            set { _numeroagentecarga = value; }
        }

        public string numeroConsignatario
        {
            get { return _numeroconsignatario; }
            set { _numeroconsignatario = value; }
        }

        public string numeroContaPagamentoTributario
        {
            get { return _numerocontapagamentotributario; }
            set { _numerocontapagamentotributario = value; }
        }

        public string numeroCpfRepresentanteLegal
        {
            get { return _numerocpfrepresentantelegal; }
            set { _numerocpfrepresentantelegal = value; }
        }

        public string numeroDocumentoCarga
        {
            get { return _numerodocumentocarga; }
            set { _numerodocumentocarga = value; }
        }

        public string numeroDocumentoCargaMaster
        {
            get { return _numerodocumentocargamaster; }
            set { _numerodocumentocargamaster = value; }
        }

        public string numeroImportador
        {
            get { return _numeroimportador; }
            set { _numeroimportador = value; }
        }

        public string numeroManifesto
        {
            get { return _numeromanifesto; }
            set { _numeromanifesto = value; }
        }

        public string numeroTelefoneImportador
        {
            get { return _numerotelefoneimportador; }
            set { _numerotelefoneimportador = value; }
        }

        public string numeroVeiculoViaTransporte
        {
            get { return _numeroveiculoviatransporte; }
            set { _numeroveiculoviatransporte = value; }
        }

        public pagamentoTributos pagamento
        {
            get { return _pagamento; }
            set { _pagamento = value; }
        }

        public processoVinculado processo
        {
            get { return _processo; }
            set { _processo = value; }
        }

        public string totalAdicoes
        {
            get { return _totaladicoes; }
            set { _totaladicoes = value; }
        }

        public string valorFreteTerritorioNacionalMoedaNegociada
        {
            get { return _valorfreteterritorionacionalmoedanegociada; }
            set { _valorfreteterritorionacionalmoedanegociada = value; }
        }

        public string valorTotalFreteCollect
        {
            get { return _valortotalfretecollect; }
            set { _valortotalfretecollect = value; }
        }

        public string valorTotalFreteMoedaNacional
        {
            get { return _valortotalfretemoedanacional; }
            set { _valortotalfretemoedanacional = value; }
        }

        public string valorTotalFretePrepaid
        {
            get { return _valortotalfreteprepaid; }
            set { _valortotalfreteprepaid = value; }
        }

        public string valorTotalMLEMoedaNacional
        {
            get { return _valortotalmlemoedanacional; }
            set { _valortotalmlemoedanacional = value; }
        }

        public string valorTotalSeguroMoedaNacional
        {
            get { return _valortotalseguromoedanacional; }
            set { _valortotalseguromoedanacional = value; }
        }

        public string valorTotalSeguroMoedaNegociada
        {
            get { return _valortotalseguromoedanegociada; }
            set { _valortotalseguromoedanegociada = value; }
        }

        public string ToXML()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(declaracaoImportacaoTransmissao));
            MemoryStream ms = new System.IO.MemoryStream();
            serializer.Serialize(ms, this);
            StreamReader sr = new System.IO.StreamReader(ms);
            return sr.ReadToEnd();
        }
    }
}