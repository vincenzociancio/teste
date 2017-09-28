using System;
using System.Data.SqlClient;
using MS2000.Desktop.Classes;
using MS2000.Desktop.Classes.NFe.Identificacao.Tipos;
using MS2000.Desktop.Classes.NFe;
using MS2000.Desktop.Classes.NFe.Utils;
using MS2000.Desktop.Classes.NFe.Identificacao;
using MS2000.Desktop.Classes.NFe.Emitente;
using MS2000.Desktop.Classes.NFe.Destinatario;
using MS2000.Desktop.Classes.NFe.Detalhe;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
using NFe.Classes.Informacoes.Detalhe.Tributacao.Federal;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual;
using System.Collections.Generic;
using MS2000.Desktop.Classes.NFe.Detalhe.DeclaracaoImportacao;
using System.Linq;
using System.Windows.Forms;
using MS2000.Desktop.Classes.NFe.Total;
using MS2000.Desktop.Classes.NFe.Transporte;
using MS2000.Desktop.Classes.NFe.Observacoes;

namespace MS2000.Desktop.Menu.Ferramenta
{
    public partial class FrmNFe : MS2000.Desktop.Componentes.MSForm01
    {
        protected class Emitente
        {
            private string cep;
            private string ie;
            private long codigoMunicipio;

            public long CodigoMunicipio
            {
                get
                {
                    if (Municipio.Contains("MACA"))
                    {
                        return 3302403;//macae
                    }
                    else
                    {
                        if (Municipio.Contains("CAMPINAS"))
                        {
                            return 3509502;//campinas
                        }

                        return 3304557;//rj
                    }
                }
                set { codigoMunicipio = value; }
            }

            public string IE
            {
                get { return ie.Replace(".", ""); }
                set { ie = value; }
            }
            public string CEP
            {
                get { return cep.Replace("-", ""); }
                set { cep = value; }
            }
            public string Codigo { get; set; }
            public string CNPJ { get; set; }
            public string RazaoSocial { get; set; }
            public string NomeFantasia { get; set; }
            public string Endereco { get; set; }
            public string Numero { get; set; }
            public string Complemento { get; set; }
            public string Bairro { get; set; }
            public string Municipio { get; set; }
            public string UF { get; set; }

        }
        protected class Destinatario
        {
            private string cep;
            private string ie;
            private string uf;
            private string bairro;
            private string municipio;
            private long codigoMunicipio;

            public long CodigoMunicipio
            {
                get
                {
                    if (this.UF == "EX")
                    {
                        return 9999999;//exterior
                    }
                    if (Municipio.Contains("MACA"))
                    {
                        return 3302403;//macae
                    }
                    if (Municipio.Contains("RIO"))
                    {
                        return 3304557;//rj
                    }
                    if (Municipio.Contains("CAMPINAS"))
                    {
                        return 3509502;//SP
                    }
                    return 9999999;//exterior
                }
                set { codigoMunicipio = value; }
            }
            public string Bairro
            {
                get
                {
                    if (this.Cod_Bacen == 1058)//Brasil
                    {
                        return bairro;
                    }
                    else
                    {
                        return "EXTERIOR";
                    }
                }
                set { bairro = value; }
            }

            public string Municipio
            {
                get
                {
                    if (this.Cod_Bacen == 1058)//Brasil
                    {
                        return municipio;
                    }
                    else
                    {
                        return "EXTERIOR";
                    }
                }
                set { municipio = value; }
            }

            public string UF
            {
                get
                {
                    if (this.Cod_Bacen == 1058)//Brasil
                    {
                        return uf;
                    }
                    else
                    {
                        return "EX";
                    }
                }
                set { uf = value; }
            }

            public string IE
            {
                get { return ie.Replace(".", ""); }
                set { ie = value; }
            }
            public string CEP
            {
                get
                {
                    if (this.Cod_Bacen == 1058)//Brasil
                    {
                        return cep.Replace("-", "");
                    }
                    else
                    {
                        return "99999999";
                    }

                }
                set { cep = value; }
            }
            public string CNPJ { get; set; }
            public string RazaoSocial { get; set; }
            public string Endereco { get; set; }
            public string Numero { get; set; }
            public string Complemento { get; set; }
            public int? Cod_Bacen { get; set; }
            public string Desc_PAIS { get; set; }

        }
        protected class Produto
        {
            private string desc_unid_medid;

            public string Desc_Unid_Medid
            {                	            
                //get { return desc_unid_medid.Substring(0, 4); }	                            
                get { return desc_unid_medid.Substring(0, 3); }	                            
                set { desc_unid_medid = value; }
            }
            public string Descricao { get; set; }

            public string NCM { get; set; }

            public decimal Quantidade { get; set; }

            public decimal Valor_Unitario { get; set; }

            public decimal Valor_Total { get; set; }

            public decimal Frete { get; set; }

            public decimal Seguro { get; set; }
            public int FaturaId { get; set; }
            public string Sequencial { get; set; }

            //Imposttos do itens

            private decimal aliq_icms_full;
            private decimal aliq_icms;
            private decimal aliq_icms_extra;

            private decimal aliq_ii;
            private decimal aliq_ipi;
            private decimal aliq_pis;
            private decimal aliq_cofins;

            private decimal base_icms_full;
            private decimal valor_icms_full;

            private decimal base_ii;
            private decimal base_ipi;
            private decimal base_pis;
            private decimal base_cofins;

            private decimal valor_ii;
            private decimal valor_ipi;
            private decimal valor_pis;
            private decimal valor_cofins;

            public string Regime_Tributacao_IPI { get; set; }
            public string Regime_Tributacao_PISCOFINS { get; set; }
            public decimal Valor_Aduaneiro { get; set; }
            public decimal Valor_Tx_Siscomex { get; set; }

            /// <summary>
            /// Alíquota ICMS Full = Alíquota ICMS + FECP
            /// </summary>
            public decimal Aliq_ICMS_Full
            {
                get { return (aliq_icms + aliq_icms_extra); }
                private set { aliq_icms_full = value; }
            }
            public decimal Aliq_ICMS
            {
                get { return aliq_icms; }
                set { aliq_icms = value; }
            }

            /// <summary>
            /// Alíquota extra = alíquota FECP
            /// </summary>
            public decimal Aliq_ICMS_EXTRA
            {
                get { return aliq_icms_extra; }
                set { aliq_icms_extra = value; }
            }
            public decimal Aliq_II
            {
                get { return aliq_ii; }
                set { aliq_ii = value; }
            }
            public decimal Aliq_IPI
            {
                get { return aliq_ipi; }
                set { aliq_ipi = value; }
            }
            public decimal Aliq_PIS
            {
                get { return aliq_pis; }
                set { aliq_pis = value; }
            }
            public decimal Aliq_COFINS
            {
                get { return aliq_cofins; }
                set { aliq_cofins = value; }
            }

            /// <summary>
            /// Base de Cálculo = (Valor Aduaneiro + II + IPI + PIS + COFINS + Taxa Siscomex + Demais Despesas*) ÷ (1 - Alíquota devida do ICMS)
            /// * Outros impostos, taxas, contribuições e despesas aduaneiras – O AFRMM faz parte da Base de Cálculo do ICMS na importação?
            /// O AFRMM (Adicional ao Frete para Renovação da Marinha Mercante) tem como natureza jurídica ser uma Contribuição de Intervenção no Domínio Econômico (CIDE). Segundo o entendimento do STF (Súmula 553) o AFRMM é uma contribuição parafiscal ou especial, em razão de sua natureza como contribuição de intervenção no domínio econômico, distinta do imposto e da taxa.
            /// Conforme texto do artigo 37, transcrito neste tópico acima, na importação, compõem a base de cálculo do ICMS quaisquer outros impostos, taxas, contribuições e despesas aduaneiras envolvidos na operação.
            /// </summary>
            public decimal Base_ICMS_Full
            {
                get
                {
                    return (Valor_Aduaneiro + Valor_II + Valor_IPI + Valor_PIS + Valor_COFINS + Valor_Tx_Siscomex + Valor_AFRMM) / (1 - Aliq_ICMS_Full / 100);
                }
                private set { base_icms_full = value; }
            }
            /// <summary>
            /// Valor ICMS Full = ICMS + FECP
            /// </summary>
            public decimal Valor_ICMS_Full
            {
                get { return Base_ICMS_Full * (Aliq_ICMS_Full / 100); }
                private set { valor_icms_full = value; }
            }
            /// <summary>
            /// Base IPI = (Valor Aduaneiro + II)
            /// </summary>
            public decimal Base_IPI
            {
                get { return (Valor_Aduaneiro + Valor_II); }
                private set { base_ipi = value; }
            }
            /// <summary>
            ///  Base II = Valor Aduaneiro 
            /// </summary>
            public decimal Base_II
            {
                get { return Valor_Aduaneiro; }
                private set { base_ii = value; }
            }
            /// <summary>
            /// Valor II = TEC (%) x Valor Aduaneiro 
            /// </summary>
            public decimal Valor_II
            {
                get { return (Base_II * (aliq_ii / 100)); }
                private set { valor_ii = value; }
            }
            /// <summary>
            /// Valor IPI = TIPI (%) x (Valor Aduaneiro + II)
            /// </summary>
            public decimal Valor_IPI
            {
                get { return (Base_IPI * (aliq_ipi / 100)); }
                private set { valor_ipi = value; }
            }
            /// <summary>
            /// Base PIS = Valor Aduaneiro
            /// </summary>
            public decimal Base_PIS
            {
                get { return Valor_Aduaneiro; }
                private set { base_pis = value; }
            }
            /// <summary>
            /// PIS = Alíquota PIS x Valor Aduaneiro 
            /// </summary>
            public decimal Valor_PIS
            {
                get { return (Base_PIS * (aliq_pis / 100)); }
                private set { valor_pis = value; }
            }
            /// <summary>
            /// Base COFINS = Valor Aduaneiro
            /// </summary>
            public decimal Base_COFINS
            {
                get { return Valor_Aduaneiro; }
                private set { base_cofins = value; }
            }
            /// <summary>
            /// Cofins = Alíquota Cofins x Valor Aduaneiro
            /// </summary>
            public decimal Valor_COFINS
            {
                get { return (Base_COFINS * (aliq_cofins / 100)); }
                private set { valor_cofins = value; }
            }

            public decimal Valor_AFRMM { get; set; }

            public decimal Valor_Frete_Collect { get; set; }
        }
        protected class ProcessoLocal : Processo
        {
            private string ufdesembaraco;

            public string UfDeDesembaraco
            {
                get
                {
                    if (ufdesembaraco.Contains("071"))
                    {
                        return "RJ";
                    }
                    else
                        if (ufdesembaraco.Contains("072"))
                        {
                            return "ES";
                        }
                        else
                        {
                            return "";
                        }

                }
                set { ufdesembaraco = value; }
            }

            public ProcessoLocal()
            {

            }
            public ProcessoLocal(SqlDataReader reader)
                : base(reader)
            {

            }

            public string LocalDeDesembaraco { get; set; }
            public decimal? ValorAFRMM { get; set; }
            public string CodigoExportador { get; set; }
        }
        protected class Municipio
        {
            public int Codigo { get; set; }
            public string Descricao { get; set; }
        }
        public FrmNFe()
        {
            InitializeComponent();
        }

        private void FrmTxTNFe_Load(object sender, EventArgs e)
        {
            ActiveControl = txtProcesso;
            grvItens.AutoGenerateColumns = false;

            // Somente 0 - Entrada, até segunda ordem
            cbbTipoDocumento.SelectedIndex = 0;
            cbbTipoImpressaoDANFE.SelectedIndex = 0;
            cbbDestinoDaOperacao.SelectedIndex = 2;

            cbbUF.DataSource = Enum.GetValues(typeof(Estado));
            cbbUF.SelectedIndex = -1;

            _municipios = getMunicipio();
        }

        private Emitente _emitente;
        private Destinatario _destinatario;
        private MS2000.Desktop.Classes.NFe.NFe _nfe;
        private List<Produto> _produtos;
        private ProcessoLocal _dados_processo;
        private List<Municipio> _municipios;

        private readonly string[] _TIPOS_AEREO = { "11", "14" };
        private readonly string[] _TIPOS_MARITIMO = { "12", "15" };
        private readonly string[] _TIPOS_ENTRADA_FICTA = { "NC" };

        private readonly string[] _REGIME_TRIBUTACAO_IPI_ISENTO = { "1", "3", "5" };
        private readonly string[] _REGIME_TRIBUTACAO_PIS_COFINS_ISENTO = { "2", "3", "5", "6" };

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {

            txtTotalDosTributos.Clear();
            txtBaseCalculo.Clear();
            txtTotalProdutoServico.Clear();
            txtTotalII.Clear();
            txtTotalDespesas.Clear();
            txtTotalICMS.Clear();
            txtTotalFrete.Clear();
            txtTotalIPI.Clear();
            txtTotalSeguro.Clear();
            txtPIS.Clear();
            txtTotalDesconto.Clear();
            txtCOFINS.Clear();
            txtTotalNota.Clear();

            btnGerarNfe.Enabled = false;
            btnExportar.Enabled = false;
            if (txtProcesso.MaskCompleted)
            {
                _emitente = getEmitenteDB(txtProcesso.Text);
                if (_emitente != null)
                {
                    _produtos = getProdutoDB(txtProcesso.Text);
                    if (_produtos.Count > 0)
                    {
                        grvItens.DataSource = _produtos;
                        _dados_processo = getDadosProcessoDB(txtProcesso.Text);
                        if (_dados_processo != null)
                        {
                            _destinatario = getDestinatarioDB(_dados_processo.CodigoExportador);
                            btnGerarNfe.Enabled = true;
                        }
                        else
                        {
                            MessageBox.Show("Processo com conhecimento e/ou registro de chegada imcompleto!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            return;
                        }
                    }
                    else
                    {
                        MessageBox.Show("Processo não 'TRIBUTADO' e/ou sem 'DI/DSI'!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                }
                else
                {
                    MessageBox.Show("Processo não foi localizado!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }
        }

        protected virtual MS2000.Desktop.Classes.NFe.NFe GetNf(int numero, ModeloDocumento modelo, VersaoServico versao)
        {
            var nf = new MS2000.Desktop.Classes.NFe.NFe { infNFe = GetInf(numero, modelo, versao) };
            return nf;
        }

        protected virtual infNFe GetInf(int numero, ModeloDocumento modelo, VersaoServico versao)
        {
            var infNFe = new infNFe
            {
                versao = Auxiliar.VersaoServicoParaString(versao),
                ide = GetIdentificacao(numero, modelo, versao),
                emit = GetEmitente(),
                dest = GetDestinatario(versao),
                transp = GetTransporte(),
                infAdic = new infAdic { infCpl = txtInformacaoAdicionais.Text }

            };
            /*
            if (infNFe.ide.mod == ModeloDocumento.NFe & versao == VersaoServico.ve310)
            {
                infNFe.cobr = GetCobranca(); //V3.00 Somente
            }
            if (infNFe.ide.mod == ModeloDocumento.NFCe)
                infNFe.pag = GetPagamento(); //NFCe Somente               
            */

            for (var i = 0; i < _produtos.Count; i++)
            {
                infNFe.det.Add(GetDetalhe(i, infNFe.emit.CRT, modelo, _produtos[i]));
            }

            infNFe.total = GetTotal(versao, infNFe.det);

            return infNFe;
        }

        protected virtual ide GetIdentificacao(int numero, ModeloDocumento modelo, VersaoServico versao)
        {
            var ide = new ide
            {
                cUF = (Estado)cbbUF.SelectedItem,//Estado.RJ,
                cNF = "",
                natOp = txtNaturezaOperacao.Text, //"COMPRA DE ATIVO FIXO",
                indPag = IndicadorPagamento.ipOutras,
                mod = modelo,
                serie = 1,
                nNF = numero,
                tpNF = (cbbTipoDocumento.SelectedIndex == 0) ? TipoNFe.tnEntrada : TipoNFe.tnSaida,
                cMunFG = (int)cbbMunicipioOcorrencia.SelectedValue,
                tpImp = (cbbTipoImpressaoDANFE.SelectedIndex == 0) ? TipoImpressao.tiRetrato : TipoImpressao.tiPaisagem,
                tpEmis = TipoEmissao.teNormal,
                //cDV = ,
                //----- Importante chave para envio para produção ou homologação -----------------------
                tpAmb = TipoAmbiente.taProducao,
                finNFe = FinalidadeNFe.fnNormal,
                verProc = "3.10.49"
            };

            if (ide.tpEmis != TipoEmissao.teNormal)
            {
                ide.dhCont = DateTime.Now.ToString(versao == VersaoServico.ve310 ? "yyyy-MM-ddTHH:mm:sszzz" : "yyyy-MM-ddTHH:mm:ss");
            }

            #region V2.00

            if (versao == VersaoServico.ve200)
            {
                ide.dEmi = DateTime.Today.ToString("yyyy-MM-dd");
                ide.dSaiEnt = DateTime.Today.ToString("yyyy-MM-dd");
            }

            #endregion

            #region V3.00

            if (versao != VersaoServico.ve310)
                return ide;

            if (cbbDestinoDaOperacao.SelectedIndex == 0)
            {
                ide.idDest = DestinoOperacao.doInterna;
            }
            else
                if (cbbDestinoDaOperacao.SelectedIndex == 1)
                {
                    ide.idDest = DestinoOperacao.doInterestadual;
                }
                else
                {
                    ide.idDest = DestinoOperacao.doExterior;
                }

            ide.dhEmi = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz");
            //Mude aqui para enviar a nfe vinculada ao EPEC, V3.10
            if (ide.mod == ModeloDocumento.NFe)
                ide.dhSaiEnt = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz");
            else
                ide.tpImp = TipoImpressao.tiNFCe;
            ide.procEmi = ProcessoEmissao.peContribuinteAplicativoFisco;
            ide.indFinal = ConsumidorFinal.cfConsumidorFinal;
            ide.indPres = PresencaComprador.pcNao; //NFCe: deve ser 1 ou 4

            #endregion
            return ide;
        }

        protected virtual emit GetEmitente()
        {
            emit emit = null;
            if (_emitente != null)
            {
                emit = new emit()
                {
                    CNPJ = _emitente.CNPJ,
                    xNome = _emitente.RazaoSocial,
                    xFant = _emitente.RazaoSocial,
                    IE = _emitente.IE,
                    CRT = CRT.RegimeNormal
                };

                emit.enderEmit = new enderEmit()
                {
                    xLgr = _emitente.Endereco,
                    nro = _emitente.Numero,
                    xCpl = _emitente.Complemento,
                    xBairro = _emitente.Bairro,
                    cMun = _emitente.CodigoMunicipio,
                    xMun = _emitente.Municipio,
                    UF = _emitente.UF,
                    CEP = _emitente.CEP,
                    cPais = 1058,
                    xPais = "BRASIL"
                };
            }
            return emit;
        }

        protected virtual dest GetDestinatario(VersaoServico versao)
        {
            dest dest = null;
            if (_destinatario != null)
            {
                dest = new dest(versao)
                {
                    xNome = _destinatario.RazaoSocial,
                    enderDest = new enderDest()
                    {
                        xLgr = _destinatario.Endereco,
                        nro = _destinatario.Numero,
                        xBairro = _destinatario.Bairro,
                        cMun = _destinatario.CodigoMunicipio,
                        xMun = _destinatario.Municipio,
                        UF = _destinatario.UF,
                        CEP = _destinatario.CEP,
                        cPais = _destinatario.Cod_Bacen,
                        xPais = _destinatario.Desc_PAIS
                    }
                };

                //if (versao == VersaoServico.ve200)
                //    dest.IE = "ISENTO";
                if (versao != VersaoServico.ve310)
                    return dest;
                dest.indIEDest = indIEDest.NaoContribuinte; //NFCe: Tem que ser não contribuinte V3.00 Somente
                dest.email = ""; //V3.00 Somente                
            }
            return dest;
        }

        protected Emitente getEmitenteDB(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT i.Codigo, i.CNPJ_CPF_COMPLETO, i.Razao_Social, i.Inscricao_Estadual, i.Endereco, i.Numero, i.Complemento, " +
                        "i.Bairro, i.Cidade, i.UF, i.CEP " +
                        "FROM Processos p INNER JOIN Importadores i on p.Importador = i.Codigo " +
                        "WHERE p.Codigo=@Processo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    Emitente emitente = null;
                    while (reader.Read())
                    {
                        emitente = new Emitente
                        {
                            Codigo = reader["Codigo"].ToString(),
                            CNPJ = reader["CNPJ_CPF_COMPLETO"].ToString(),
                            RazaoSocial = reader["Razao_Social"].ToString(),
                            NomeFantasia = reader["Razao_Social"].ToString(),
                            IE = reader["Inscricao_Estadual"].ToString(),
                            Endereco = reader["Endereco"].ToString(),
                            Numero = reader["Numero"].ToString(),
                            Complemento = reader["Complemento"].ToString(),
                            Bairro = reader["Bairro"].ToString(),
                            Municipio = reader["Cidade"].ToString(),
                            CEP = reader["CEP"].ToString(),
                            UF = reader["UF"].ToString()
                        };
                    }

                    if (emitente != null)
                    {
                        txtEmitenteCNPJ.Text = emitente.CNPJ;
                        txtEmitenteRazao.Text = emitente.RazaoSocial;
                        txtEmitenteFantasia.Text = emitente.RazaoSocial;
                        txtEmitenteIE.Text = emitente.IE;
                        txtEmitenteEndereco.Text = emitente.Endereco;
                        txtEmitenteNumero.Text = emitente.Numero;
                        txtEmitenteComplemento.Text = emitente.Complemento;
                        txtEmitenteBairro.Text = emitente.Bairro;
                        txtEmitenteMunicipio.Text = emitente.Municipio;
                        txtEmitenteUF.Text = emitente.UF;
                        txtEmitenteCEP.Text = emitente.CEP;
                        txtEmitentePais.Text = "BRASIL";
                    }
                    else
                    {
                        txtEmitenteCNPJ.Clear();
                        txtEmitenteRazao.Clear();
                        txtEmitenteFantasia.Clear();
                        txtEmitenteIE.Clear();
                        txtEmitenteEndereco.Clear();
                        txtEmitenteNumero.Clear();
                        txtEmitenteComplemento.Clear();
                        txtEmitenteBairro.Clear();
                        txtEmitenteMunicipio.Clear();
                        txtEmitenteUF.Clear();
                        txtEmitenteCEP.Clear();
                    }
                    return emitente;
                }
            }
        }

        protected Destinatario getDestinatarioDB(string exportador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select E.Razao_Social,E.CGC_CPF, E.Endereco, E.Numero, E.Complemento, E.Cidade, E.Bairro, E.Estado, E.CEP,E.UF, E.Inscricao_Estadual, " +
                        "CAST(P.COD_BACEN as int)AS 'COD_BACEN', P.DESCRICAO as 'desc_pais' " +
                        "from Exportadores E inner join TAB_PAIS P on P.CODIGO = E.Pais " +
                        "where E.Codigo = @exportador";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@exportador", exportador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    Destinatario destinatario = null;
                    while (reader.Read())
                    {
                        destinatario = new Destinatario
                        {
                            CNPJ = reader["CGC_CPF"].ToString(),
                            RazaoSocial = reader["Razao_Social"].ToString(),
                            IE = reader["Inscricao_Estadual"].ToString(),
                            Endereco = reader["Endereco"].ToString(),
                            Numero = reader["Numero"].ToString(),
                            Complemento = reader["Complemento"].ToString(),
                            Bairro = reader["Bairro"].ToString(),
                            Municipio = reader["Cidade"].ToString(),
                            CEP = reader["CEP"].ToString(),
                            UF = reader["UF"].ToString(),
                            Cod_Bacen = (reader["COD_BACEN"] == DBNull.Value) ? (int?)null : (Convert.ToInt16(reader["COD_BACEN"])),
                            Desc_PAIS = reader["desc_pais"].ToString()
                        };
                    }

                    if (destinatario != null)
                    {
                        txtDestinatarioCNPJ.Text = destinatario.CNPJ;
                        txtDestinatarioRazao.Text = destinatario.RazaoSocial;
                        txtDestinatarioIE.Text = destinatario.IE;
                        txtDestinatarioEndereco.Text = destinatario.Endereco;
                        txtDestinatarioNumero.Text = destinatario.Numero;
                        txtDestinatarioComplemento.Text = destinatario.Complemento;
                        txtDestinatarioBairro.Text = destinatario.Bairro;
                        txtDestinatarioMunicipio.Text = destinatario.Municipio;
                        txtDestinatarioUF.Text = destinatario.UF;
                        txtDestinatarioCEP.Text = destinatario.CEP;
                        txtDestinatarioBACEN.Text = destinatario.Cod_Bacen.ToString();
                        txtDestinatarioDescPais.Text = destinatario.Desc_PAIS;
                    }
                    else
                    {
                        txtDestinatarioCNPJ.Clear();
                        txtDestinatarioRazao.Clear();
                        txtDestinatarioIE.Clear();
                        txtDestinatarioEndereco.Clear();
                        txtDestinatarioNumero.Clear();
                        txtDestinatarioComplemento.Clear();
                        txtDestinatarioBairro.Clear();
                        txtDestinatarioMunicipio.Clear();
                        txtDestinatarioUF.Clear();
                        txtDestinatarioCEP.Clear();
                    }
                    return destinatario;
                }
            }
        }

        protected List<Produto> getProdutoDB(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CAST((I.Descricao_Produto + ' - PN: ' + I.Produto) AS varchar(119)) AS Desc_Produto, I.NCM , " +
                "U.DESCRICAO AS Desc_Unid_Medid, I.Quantidade AS Prod_Qdt, " + 
                //"(I.Valor_Unitario * ptc.Taxa_conversao) AS Valor_Unitario_Prod, " +
                "ROUND((I.Valor_Unitario * ptc.Taxa_conversao),2) AS Valor_Unitario_Prod, " +                
                "CAST((I.Valor_Unitario * ptc.Taxa_conversao)AS DECIMAL(9,2))*I.Quantidade AS Valor_Total_Prod, " +
                "CAST((((I.Rateio_Frete_prepaid + I.Rateio_Frete_collect + I.Rateio_Frete_ternac)* ptc.Taxa_conversao )* I.Quantidade)AS DECIMAL(9,2)) AS Frete, " +
                "(I.Rateio_Seguro * I.Quantidade) AS Seguro, f.Fatura_Id, I.Sequencial, " +
                //impostos dos itens
                "(I.Base_Calc_II * ptc.Taxa_conversao) as vl_va, " +//<---verificar diferença valor aduaneiro 
                "(I.Valor_Total*(((select SUM(ItensFaturas.Valor_Total) " +
                "from ItensFaturas INNER JOIN Faturas ON ItensFaturas.Fatura_Id = Faturas.Fatura_Id " +
                "where Faturas.Processo = f.Processo) +  " +
                "(select sum(da) from Processos_ADICOES_ICMS_PIS_COFINS where Processo = f.Processo))/ " +
                "(select SUM(ItensFaturas.Valor_Total)  " +
                "from ItensFaturas INNER JOIN Faturas ON ItensFaturas.Fatura_Id = Faturas.Fatura_Id " +
                "where Faturas.Processo = f.Processo)))-I.Valor_Total as vl_txs, " +                
                "A.Aliq_ICMS, A.Aliq_ICMS_EXTRA, A.Aliq_NCM_IPI, A.Aliq_NCM_II, A.Aliq_COFINS, A.Aliq_PIS_PASEP, T.Regime_Tributacao_IPI, T.CD_REGIME_TRIBUTAR_PISCOFINS " +
                ",ISNULL(I.Rateio_Acresc_ICMS,0) as 'Afrmm',((I.Rateio_Frete_collect*ptc.Taxa_conversao) * I.Quantidade) as'Rateio_Collect' " +
                "FROM Faturas f  " +
                "INNER JOIN ItensFaturas I ON I.Fatura_Id = f.Fatura_Id " +
                "INNER JOIN Tributacao_Item_Fatura T  ON I.Fatura_Id = T.Fatura_Id AND I.Sequencial = T.Sequencial_Item " +
                "INNER JOIN Processos_Taxas_Conversao ptc ON f.Moeda = ptc.Moeda AND f.Processo = ptc.Processo " +
                "INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS A ON T.Adicao = A.Adicao AND F.Processo = A.Processo  " +
                "INNER JOIN TAB_UNID_MEDIDA U ON U.CODIGO = I.Unidade  " +
                "WHERE f.Processo = @Processo ORDER BY f.Fatura_Id, I.Sequencial ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Produto> produto = new List<Produto>();
                    while (reader.Read())
                    {
                        produto.Add(new Produto
                        {
                            Descricao = reader["Desc_Produto"].ToString(),
                            NCM = reader["NCM"].ToString(),
                            Desc_Unid_Medid = reader["Desc_Unid_Medid"].ToString(),
                            Quantidade = Convert.ToDecimal(reader["Prod_Qdt"]),
                            Valor_Unitario = Convert.ToDecimal(reader["Valor_Unitario_Prod"]),
                            Valor_Total = Convert.ToDecimal(reader["Valor_Total_Prod"]),
                            Frete = Convert.ToDecimal(reader["Frete"]),
                            Seguro = Convert.ToDecimal(reader["Seguro"]),
                            FaturaId = Convert.ToInt32(reader["Fatura_Id"]),
                            Sequencial = reader["Sequencial"].ToString(),
                            Regime_Tributacao_IPI = reader["Regime_Tributacao_IPI"].ToString(),
                            Regime_Tributacao_PISCOFINS = reader["CD_REGIME_TRIBUTAR_PISCOFINS"].ToString(),
                            //impostos dos itens
                            Valor_Aduaneiro = Convert.ToDecimal(reader["vl_va"]),
                            Valor_Tx_Siscomex = Convert.ToDecimal(reader["vl_txs"]),
                            //aliquotas
                            Aliq_ICMS = Convert.ToDecimal(reader["Aliq_ICMS"]),
                            Aliq_ICMS_EXTRA = Convert.ToDecimal(reader["Aliq_ICMS_EXTRA"]),
                            Aliq_IPI = Convert.ToDecimal(reader["Aliq_NCM_IPI"]),
                            Aliq_II = Convert.ToDecimal(reader["Aliq_NCM_II"]),
                            Aliq_PIS = Convert.ToDecimal(reader["Aliq_PIS_PASEP"]),
                            Aliq_COFINS = Convert.ToDecimal(reader["Aliq_COFINS"]),
                            //
                            Valor_AFRMM = Convert.ToDecimal(reader["Afrmm"]),
                            Valor_Frete_Collect = Convert.ToDecimal(reader["Rateio_Collect"])
                        });
                    }
                    return produto;
                }
            }
        }

        protected ProcessoLocal getDadosProcessoDB(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT P.Tipo, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, " +
                    "CAST(P.DT_DESEMBARACO as date) as DT_DESEMBARACO, CAST(P.DT_DESEMBARACOC as date) as DT_DESEMBARACOC, U.Codigo AS UfDeDesembaraco, U.DESCRICAO AS LocalDeDesembaraco, ISNULL(A.VL_ACRESCIMO,0) AS AFRRM , F.Exportador as Cod_Exportador " +
                    "FROM Processos P " +
                    "INNER JOIN Conhecimento_Processo C ON C.FK_Processo = P.ID " +
                    "LEFT JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho " +
                    "INNER JOIN Faturas F ON F.Processo = P.Codigo " +
                    "LEFT JOIN Acrescimos_ICMS A ON A.Fatura_Id = F.Fatura_Id AND A.CD_ACRESC_ICMS = 1 " +
                    "WHERE P.Codigo=@Processo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    ProcessoLocal dados = null;
                    while (reader.Read())
                    {
                        dados = new ProcessoLocal
                        {
                            Tipo = reader["Tipo"].ToString(),
                            NR_DECLARACAO_IMP = reader["NR_DECLARACAO_IMP"].ToString(),
                            DT_REGISTRO_DI = reader["DT_REGISTRO_DI"].ToString(),
                            NR_DECLARACAO_IMPC = reader["NR_DECLARACAO_IMPC"].ToString(),
                            DT_REGISTRO_DIC = reader["DT_REGISTRO_DIC"].ToString(),
                            DT_DESEMBARACO = (reader["DT_DESEMBARACO"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["DT_DESEMBARACO"]),
                            DT_DESEMBARACOC = (reader["DT_DESEMBARACOC"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["DT_DESEMBARACOC"]),
                            LocalDeDesembaraco = reader["LocalDeDesembaraco"].ToString(),
                            UfDeDesembaraco = reader["UfDeDesembaraco"].ToString(),
                            ValorAFRMM = Convert.ToDecimal(reader["AFRRM"]),
                            CodigoExportador = reader["Cod_Exportador"].ToString()
                        };
                    }
                    return dados;
                }
            }
        }

        protected virtual det GetDetalhe(int i, CRT crt, ModeloDocumento modelo, Produto item)
        {
            var det = new det
            {
                nItem = i + 1,
                prod = GetProduto(i + 1, item),
                imposto = new imposto
                {
                    //vTotTrib = 0.17m,
                    ICMS = new ICMS
                    {
                        TipoICMS =
                            crt == CRT.SimplesNacional
                                ? InformarCSOSN(Csosnicms.Csosn102)
                                : InformarICMS(Csticms.Cst00, VersaoServico.ve310, item)
                    }
                    /*COFINS =
                        new COFINS
                        {
                            TipoCOFINS = new COFINSOutr { CST = CSTCOFINS.cofins99, pCOFINS = 0, vBC = 0, vCOFINS = 0 }
                        },
                    PIS = new PIS { TipoPIS = new PISOutr { CST = CSTPIS.pis99, pPIS = 0, vBC = 0, vPIS = 0 } }*/
                }
            };

            //Declaração de importação
            det.prod.DI = GetDI(_dados_processo, item);

            if (modelo == ModeloDocumento.NFe)//NFCe não aceita grupo "IPI"
            {
                det.imposto.IPI = new IPI() { cEnq = 101 };

                if (_REGIME_TRIBUTACAO_IPI_ISENTO.Contains(item.Regime_Tributacao_IPI))
                {
                    det.imposto.IPI.TipoIPI = new IPINT() { CST = CSTIPI.ipi05 };                    
                }
                else
                {
                    det.imposto.IPI.TipoIPI = new IPITrib()
                    {
                        CST = CSTIPI.ipi49,
                        pIPI = item.Aliq_IPI,
                        vBC = item.Base_IPI,
                        vIPI = item.Valor_IPI,
                    };
                }
            }            

            //II
            //if (item.Aliq_II > 0)
            //{
            //    det.imposto.II = new II() { vBC = item.Base_II, vII = item.Valor_II };
            //}

            det.imposto.II = new II() { vBC = item.Base_II, vII = item.Valor_II };

            //PIS
            det.imposto.PIS = new PIS();

            if (_REGIME_TRIBUTACAO_PIS_COFINS_ISENTO.Contains(item.Regime_Tributacao_PISCOFINS))
            {
                det.imposto.PIS.TipoPIS = new PISNT { CST = CSTPIS.pis09 };                
            }
            else
            {
                det.imposto.PIS.TipoPIS = new PISAliq()
                {
                    CST = CSTPIS.pis01,
                    vPIS = item.Valor_PIS,
                    vBC = item.Base_PIS,
                    pPIS = item.Aliq_PIS,
                };
            }
            //COFINS
            det.imposto.COFINS = new COFINS();

            if (_REGIME_TRIBUTACAO_PIS_COFINS_ISENTO.Contains(item.Regime_Tributacao_PISCOFINS))
            {
                det.imposto.COFINS.TipoCOFINS = new COFINSNT { CST = CSTCOFINS.cofins09 };
            }
            else
            {
                det.imposto.COFINS.TipoCOFINS = new COFINSAliq()
                {
                    CST = CSTCOFINS.cofins01,
                    vCOFINS = item.Valor_COFINS,
                    vBC = item.Base_COFINS,
                    pCOFINS = item.Aliq_COFINS,
                };
            }
            
            //Total de todos os imposttos - ATENCAO

            try
            {
                det.imposto.vTotTrib = ((IPITrib)det.imposto.IPI.TipoIPI).vIPI +
                                        det.imposto.II.vII +
                                       ((PISAliq)det.imposto.PIS.TipoPIS).vPIS +
                                       ((COFINSAliq)det.imposto.COFINS.TipoCOFINS).vCOFINS +
                                       ((ICMS00)det.imposto.ICMS.TipoICMS).vICMS;                                                                 
            }
            catch (Exception)
            {
                if ((_REGIME_TRIBUTACAO_PIS_COFINS_ISENTO.Contains(item.Regime_Tributacao_PISCOFINS)) && (_REGIME_TRIBUTACAO_IPI_ISENTO.Contains(item.Regime_Tributacao_IPI)))
                {
                    det.imposto.vTotTrib = 0;
                }
                else
                {
                    det.imposto.vTotTrib = 0 + det.imposto.II.vII + ((PISAliq)det.imposto.PIS.TipoPIS).vPIS + ((COFINSAliq)det.imposto.COFINS.TipoCOFINS).vCOFINS + ((ICMS00)det.imposto.ICMS.TipoICMS).vICMS;
                }                
            }                       

            return det;
        }

        protected virtual prod GetProduto(int i, Produto item)
        {
            var p = new prod
            {
                cProd = i.ToString().PadLeft(5, '0'),
                cEAN = "",
                xProd = item.Descricao,
                NCM = item.NCM,
                EXTIPI = "",
                CFOP = Convert.ToInt32(cbbCFOP.Text),
                uCom = item.Desc_Unid_Medid,
                qCom = item.Quantidade,
                vUnCom = item.Valor_Unitario,
                vProd = item.Valor_Total,
                cEANTrib = "",
                uTrib = item.Desc_Unid_Medid,
                qTrib = item.Quantidade,
                vUnTrib = item.Valor_Unitario,
                vFrete = item.Frete,
                vSeg = item.Seguro,
                vDesc = null,
                vOutro = item.Valor_Tx_Siscomex,
                indTot = IndicadorTotal.ValorDoItemCompoeTotalNF,
                xPed = "",
                nItemPed = 0,
            };
            return p;
        }

        protected virtual List<DI> GetDI(ProcessoLocal _processo, Produto item)
        {
            var listaDedi = new List<DI>();

            var di = new DI
            {
                nDI = string.IsNullOrEmpty(_processo.NR_DECLARACAO_IMP) ? _processo.NR_DECLARACAO_IMPC : _processo.NR_DECLARACAO_IMP,

                dDI = string.IsNullOrEmpty(_processo.NR_DECLARACAO_IMP) ?
                string.Format("{0}-{1}-{2}",
                _processo.DT_REGISTRO_DIC.Substring(4, 4),
                _processo.DT_REGISTRO_DIC.Substring(2, 2),
                _processo.DT_REGISTRO_DIC.Substring(0, 2)) :
                string.Format("{0}-{1}-{2}",
                _processo.DT_REGISTRO_DI.Substring(4, 4),
                _processo.DT_REGISTRO_DI.Substring(2, 2),
                _processo.DT_REGISTRO_DI.Substring(0, 2)),

                dDesemb = string.IsNullOrEmpty(_processo.NR_DECLARACAO_IMP) ?
                Convert.ToDateTime(_processo.DT_DESEMBARACOC).ToString("yyyy-MM-dd") :
                Convert.ToDateTime(_processo.DT_DESEMBARACO).ToString("yyyy-MM-dd"),

                xLocDesemb = _processo.LocalDeDesembaraco,
                cExportador = "1",
                tpIntermedio = TipoIntermediacao.ContaPropria,
                CNPJ = _emitente.CNPJ,
                UFTerceiro = _emitente.UF,

                //--------Adições----------------
                adi = GetAdicao(_destinatario.RazaoSocial, item)
                //-------------------------------
            };


            // Via de Transporte: Aereo, Maritimo etc...            
            if (_TIPOS_MARITIMO.Contains(_processo.Tipo))
            {
                di.tpViaTransp = TipoTransporteInternacional.Maritima;
                di.vAFRMM = _processo.ValorAFRMM;
            }
            else
                if (_TIPOS_AEREO.Contains(_processo.Tipo))
                {
                    di.tpViaTransp = TipoTransporteInternacional.Aerea;
                }
                else
                    if (_TIPOS_ENTRADA_FICTA.Contains(_processo.Tipo))
                    {
                        di.tpViaTransp = TipoTransporteInternacional.EntradaSaidaficta;
                    }

            // UF de Desembaraço
            di.UFDesemb = _processo.UfDeDesembaraco;

            listaDedi.Add(di);
            return listaDedi;
        }

        protected virtual List<adi> GetAdicao(string cod_fabricante, Produto item)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT T.Adicao, T.Sequencial_Item " +
                "FROM Tributacao_Item_Fatura T " +
                "WHERE T.Fatura_Id = @Fatura_Id and T.Sequencial_Item = @Sequencial " +
                "ORDER BY T.Adicao, T.Sequencial_Item";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Fatura_Id", item.FaturaId);
                cmd.Parameters.AddWithValue("@Sequencial", item.Sequencial);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    var adicao = new List<adi>();
                    while (reader.Read())
                    {
                        adicao.Add(new adi
                        {
                            nAdicao = Convert.ToInt16(reader["Adicao"]),
                            nSeqAdic = Convert.ToInt16(reader["Sequencial_Item"]),
                            cFabricante = cod_fabricante,
                            nDraw = ""
                        });
                    }
                    return adicao;
                }
            }
        }

        protected virtual List<Municipio> getMunicipio()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Municipio ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    var municipio = new List<Municipio>();
                    while (reader.Read())
                    {
                        municipio.Add(new Municipio
                        {
                            Codigo = Convert.ToInt32(reader["Codigo"]),
                            Descricao = reader["Descricao"].ToString()
                        });
                    }
                    return municipio;
                }
            }
        }

        protected virtual ICMSBasico InformarICMS(Csticms CST, VersaoServico versao, Produto item)
        {
            /*var icms20 = new ICMS20
            {
                orig = OrigemMercadoria.OmEstrangeiraImportacaoDireta,
                CST = Csticms.Cst00,
                modBC = DeterminacaoBaseIcms.DbiValorOperacao,
                vBC = 1,
                pICMS = 17,
                vICMS = 0.17m,
                motDesICMS = MotivoDesoneracaoIcms.MdiTaxi
            };

            if (versao == VersaoServico.ve310)
                icms20.vICMSDeson = 0.10m; */
            //V3.00 ou maior Somente

            switch (CST)
            {
                case Csticms.Cst00:
                    return new ICMS00
                    {
                        orig = OrigemMercadoria.OmEstrangeiraImportacaoDireta,
                        CST = Csticms.Cst00,
                        modBC = DeterminacaoBaseIcms.DbiValorOperacao,
                        vBC = item.Base_ICMS_Full,
                        pICMS = item.Aliq_ICMS_Full,
                        vICMS = item.Valor_ICMS_Full,
                    };
                case Csticms.Cst40:
                case Csticms.Cst41:
                case Csticms.Cst50:
                    return new ICMS40
                    {
                        orig = OrigemMercadoria.OmEstrangeiraImportacaoDireta,
                        CST = CST,
                    };
                //return icms20;
                //Outros casos aqui
            }

            return new ICMS10();
        }

        protected virtual ICMSBasico InformarCSOSN(Csosnicms CST)
        {
            switch (CST)
            {
                case Csosnicms.Csosn101:
                    return new ICMSSN101
                    {
                        CSOSN = Csosnicms.Csosn101,
                        orig = OrigemMercadoria.OmNacional
                    };
                case Csosnicms.Csosn102:
                    return new ICMSSN102
                    {
                        CSOSN = Csosnicms.Csosn102,
                        orig = OrigemMercadoria.OmNacional
                    };
                //Outros casos aqui
                default:
                    return new ICMSSN201();
            }
        }

        protected virtual total GetTotal(VersaoServico versao, List<det> produtos)
        {
            var icmsTot = new ICMSTot
            {
                vProd = produtos.Sum(p => p.prod.vProd),
                vTotTrib = produtos.Sum(p => p.imposto.vTotTrib ?? 0),
                vNF = (produtos.Sum(p => p.prod.vProd) +
                produtos.Sum(p => p.prod.vFrete ?? 0) +
                produtos.Sum(p => p.imposto.vTotTrib ?? 0) +
                produtos.Sum(p => p.prod.vOutro ?? 0)) - produtos.Sum(p => p.prod.vDesc ?? 0),
                vDesc = produtos.Sum(p => p.prod.vDesc ?? 0),
                vOutro = produtos.Sum(p => p.prod.vOutro ?? 0),
            };

            if (versao == VersaoServico.ve310)
                icmsTot.vICMSDeson = 0;

            foreach (var produto in produtos)
            {
                if (produto.imposto.IPI != null && produto.imposto.IPI.TipoIPI.GetType() == typeof(IPITrib))
                    icmsTot.vIPI = icmsTot.vIPI + ((IPITrib)produto.imposto.IPI.TipoIPI).vIPI ?? 0;

                if (produto.imposto.II != null)
                    icmsTot.vII = icmsTot.vII + produto.imposto.II.vII;

                if (produto.imposto.PIS != null && produto.imposto.PIS.TipoPIS.GetType() == typeof(PISAliq))
                    icmsTot.vPIS = icmsTot.vPIS + ((PISAliq)produto.imposto.PIS.TipoPIS).vPIS;

                if (produto.imposto.COFINS != null && produto.imposto.COFINS.TipoCOFINS.GetType() == typeof(COFINSAliq))
                    icmsTot.vCOFINS = icmsTot.vCOFINS + ((COFINSAliq)produto.imposto.COFINS.TipoCOFINS).vCOFINS;

                icmsTot.vFrete = icmsTot.vFrete + produto.prod.vFrete ?? 0;

                icmsTot.vSeg = icmsTot.vSeg + produto.prod.vSeg ?? 0;

                if (produto.imposto.ICMS.TipoICMS.GetType() == typeof(ICMS00))
                {
                    icmsTot.vBC = icmsTot.vBC + ((ICMS00)produto.imposto.ICMS.TipoICMS).vBC;
                    icmsTot.vICMS = icmsTot.vICMS + ((ICMS00)produto.imposto.ICMS.TipoICMS).vICMS;
                }

                if (produto.imposto.ICMS.TipoICMS.GetType() == typeof(ICMS20))
                {
                    icmsTot.vBC = icmsTot.vBC + ((ICMS20)produto.imposto.ICMS.TipoICMS).vBC;
                    icmsTot.vICMS = icmsTot.vICMS + ((ICMS20)produto.imposto.ICMS.TipoICMS).vICMS;
                }
                //Outros Ifs aqui, caso vá usar as classes ICMS00, ICMS10 para totalizar
            }

            var t = new total { ICMSTot = icmsTot };
            return t;
        }

        protected virtual transp GetTransporte()
        {
            var t = new transp
            {
                modFrete = ModalidadeFrete.mfContaEmitente, //NFCe: Não pode ter frete
                vol = GetVolume(txtProcesso.Text),
            };

            return t;
        }

        protected virtual List<vol> GetVolume(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT E.Processo, E.DescricaoEmbalagem, E.Quantidade, CP.Peso_Liquido, CP.Peso_Bruto " +
                "FROM Embalagem_Processo E " +
                "INNER JOIN TAB_TP_EMBALAGEM AS T ON E.TipoEmbalagem = T.Codigo " +
                "INNER JOIN Conhecimento_Processo CP ON E.Processo = CP.Processo " +
                "WHERE E.Processo = @Processo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    var vol = new List<vol>();
                    while (reader.Read())
                    {
                        vol.Add(new vol
                        {
                            qVol = Convert.ToInt32(reader["Quantidade"]),
                            esp = reader["DescricaoEmbalagem"].ToString(),
                            pesoL = Convert.ToDecimal(reader["Peso_Liquido"]),
                            pesoB = Convert.ToDecimal(reader["Peso_Bruto"])
                        });
                    }
                    return vol;
                }
            }
        }

        private void cbbUF_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cbbUF.Text) && (_municipios != null))
            {
                Estado uf = (Estado)cbbUF.SelectedItem;
                int cod = (int)uf;
                cbbMunicipioOcorrencia.DataSource = null;
                cbbMunicipioOcorrencia.DataSource = _municipios.Where(c => c.Codigo.ToString().Substring(0, 2) == cod.ToString()).ToList();
                cbbMunicipioOcorrencia.DisplayMember = "Descricao";
                cbbMunicipioOcorrencia.ValueMember = "Codigo";
            }
        }

        private void btnGerarNfe_Click(object sender, EventArgs e)
        {
            btnExportar.Enabled = false;
            if (string.IsNullOrEmpty(txtNaturezaOperacao.Text))
            {
                MessageBox.Show("O campo 'Natureza da Operação' da aba 'Dados da NFe' é obrigatório!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tabControlNFe.SelectedTab = tpDadosNFe;
                txtNaturezaOperacao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbUF.Text))
            {
                MessageBox.Show("O campo 'UF' da aba 'Dados da NFe' é obrigatório!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tabControlNFe.SelectedTab = tpDadosNFe;
                cbbUF.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbCFOP.Text))
            {
                MessageBox.Show("O campo 'CFOP' da aba 'Produtos e Serviços' é obrigatório!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tabControlNFe.SelectedTab = tpProdutos;
                cbbCFOP.Focus();
                return;
            }

            //CRIAR NFe                       
            try
            {
                Random rnd = new Random();
                int numero = rnd.Next(1, 999999999);
                _nfe = GetNf(Convert.ToInt32(numero), ModeloDocumento.NFe, VersaoServico.ve310);

                if (_nfe.infNFe != null)
                    btnExportar.Enabled = true;

                txtTotalDosTributos.Text = _nfe.infNFe.total.ICMSTot.vTotTrib.ToString();
                txtBaseCalculo.Text = _nfe.infNFe.total.ICMSTot.vBC.ToString();
                txtTotalProdutoServico.Text = _nfe.infNFe.total.ICMSTot.vProd.ToString();
                txtTotalII.Text = _nfe.infNFe.total.ICMSTot.vII.ToString();
                txtTotalDespesas.Text = _nfe.infNFe.total.ICMSTot.vOutro.ToString();
                txtTotalICMS.Text = _nfe.infNFe.total.ICMSTot.vICMS.ToString();
                txtTotalFrete.Text = _nfe.infNFe.total.ICMSTot.vFrete.ToString();
                txtTotalIPI.Text = _nfe.infNFe.total.ICMSTot.vIPI.ToString();
                txtTotalSeguro.Text = _nfe.infNFe.total.ICMSTot.vSeg.ToString();
                txtPIS.Text = _nfe.infNFe.total.ICMSTot.vPIS.ToString();
                txtTotalDesconto.Text = _nfe.infNFe.total.ICMSTot.vDesc.ToString();
                txtCOFINS.Text = _nfe.infNFe.total.ICMSTot.vCOFINS.ToString();
                txtTotalNota.Text = _nfe.infNFe.total.ICMSTot.vNF.ToString();

            }
            catch
            {
                btnExportar.Enabled = false;
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            saveFileDialog.FileName = string.Format("{0}_{1}_{2}", txtProcesso.Text.Replace("/", ""), _nfe.infNFe.ide.nNF.ToString(), _nfe.infNFe.ide.dhEmi.Replace(":", "").Replace("T", "").Replace("-", ""));
            saveFileDialog.DefaultExt = ".txt";
            saveFileDialog.Filter = "Arquivo texto|*.txt";

            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                var arquivoTxt = saveFileDialog.FileName;
                _nfe.SalvarArquivoTXT(arquivoTxt);
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }


    }

}
