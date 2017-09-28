using MS2000.Desktop.Classes;
using MS2000.Desktop.Classes.Licenca_de_importacao;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using WatiN.Core;
using System.Linq;
using WatiN.Core.Native.Windows;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Remote;
using System.Threading;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmRegistroLI : MS2000.Desktop.Componentes.MSForm01
    {
        Importador importador = new Importador();
        Processo processo = new Processo();
        string codImportador;
        //string cgc_cpfImportador;
        string statusFechado;
        public FrmRegistroLI()
        {
            InitializeComponent();
        }

        private void getAdicoes()
        {
            string query = "SELECT T.Adicao, I.NCM,  MAX(I.Descricao_Produto) AS 'Descricao_Produto', P.ID FROM Processos P " +
                "INNER JOIN Faturas F ON P.Codigo = F.Processo " +
                "INNER JOIN Tributacao_Item_Fatura T ON  T.Fatura_Id = F.Fatura_Id " +
                "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id AND I.Sequencial = T.Sequencial_Item " +
                "WHERE P.Codigo = @Processo GROUP BY T.Adicao, I.NCM, P.ID";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                    cbbAdicoes.DataSource = null;
                    cbbAdicoes.DataSource = table;
                    cbbAdicoes.DisplayMember = "Adicao";
                    cbbAdicoes.ValueMember = "Adicao";
                    cbbAdicoes.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private DataTable getExibirItens()
        {
            string query = "Select I.NCM,I.Descricao_Produto,I.Sequencial,I.Valor_Unitario, I.Rateio_frete_fatura " +
                           "From Faturas F " +
                           "INNER JOIN ItensFaturas I ON  I.Fatura_Id = F.Fatura_Id " +
                           "INNER JOIN Tributacao_Item_Fatura T on T.Fatura_Id = I.Fatura_Id and I.Sequencial = T.Sequencial_Item " +
                           "Where F.processo = @Processo and T.Adicao = @Adicao ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Adicao", cbbAdicoes.SelectedValue.ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }
        private Licenca_Importacao getLI()
        {
            string query = "Select P.Codigo,C.Pais_Procedencia,C.URF_Despacho,C.URF_chegada,P.TX_INFO_COMPL,IFA.NCM, " +
                           "FP.Razao_Social as 'fabRazao_Social',FP.Pais as 'fabPais', FP.Endereco as 'fabEndereco', FP.Numero as 'fabNumero',FP.Complemento as 'fabComplemento',FP.Cidade as 'fabCidade',FP.Estado as 'fabEstado'," +
                           "E.Razao_Social as 'expRazao_Social',E.Pais as 'expPais', E.Endereco as 'expEndereco', E.Numero as 'expNumero',E.Complemento as 'expComplemento',E.Cidade as 'expCidade',E.Estado as 'expEstado'," +
                           "IFA.NALADI,IFA.Quantidade,C.Peso_Liquido,F.Moeda,F.Incoterm,IFA.Valor_Unitario, IFA.Valor_Total AS 'Valor_Total',IFA.Destaque_NCM, " +
                           "T.Regime_Tributacao_II,T.Fundamento_Legal_II,F.Cobertura_Cambial, " +
                           "F.Modalidade_de_Pagamento,F.Codigo,IFA.Sequencial,IFA.Descricao_Produto,I.Tipo_Importador, " +
                           "I.CNPJ_CPF_COMPLETO,IFA.Peso_Total,IFA.Unidade_Medida_Estat,TM.DESCRICAO as 'Unidade_Comercializada', F.Peso_Libra, (IFA.Valor_Unitario+IFA.Rateio_frete_fatura+IFA.Rateio_seguro_fatura) as 'Valor_Unitario_Item',F.Instituicao_Financiadora, F.Motivo_Sem_Cobertura " +
                           ",T.IN_BEM_ENCOMENDA,T.IN_MATERIAL_USADO, IFA.Peso_Unitario " +
                           "From " +
                           "Processos P " +
                           "Inner join Faturas F on P.Codigo = F. Processo " +
                           "Inner join ItensFaturas IFA on F.Fatura_Id = IFA.Fatura_Id " +
                           "Inner join Importadores I on P.Importador = I.Codigo " +
                           "Inner join Conhecimento_Processo C on C.Processo = P.Codigo " +
                           "Left join Fabricantes_Produtores FP on  IFA.Fabricante =  FP.Codigo " +
                           "Left join Exportadores E ON F.Exportador = E.Codigo " +
                           "Inner join Tributacao_Item_Fatura T on T.Fatura_Id =  F.Fatura_Id and T.Sequencial_Item = IFA.Sequencial " +
                           "inner join TAB_UNID_MEDIDA  TM on IFA.Unidade =  TM.CODIGO " +
                           "Where P.Codigo = @Processo and T.Adicao = @Adicao " +
                           "Group by P.Codigo,C.Pais_Procedencia,C.URF_Despacho,C.URF_chegada,P.TX_INFO_COMPL,IFA.NCM," +
                           "FP.Razao_Social,FP.Pais, FP.Endereco, FP.Numero,FP.Complemento,FP.Cidade,FP.Estado," +
                           "IFA.NALADI,IFA.Quantidade,C.Peso_Liquido,F.Moeda,F.Incoterm,IFA.Valor_Unitario,IFA.Valor_Total,IFA.Rateio_frete_fatura,IFA.Destaque_NCM," +
                           "T.Regime_Tributacao_II,T.Fundamento_Legal_II,F.Cobertura_Cambial," +
                           "F.Modalidade_de_Pagamento,F.Codigo,IFA.Sequencial,IFA.Descricao_Produto,I.Tipo_Importador," +
                           "I.CNPJ_CPF_COMPLETO,IFA.Peso_Total,IFA.Unidade_Medida_Estat,TM.DESCRICAO, F.Peso_Libra,F.Instituicao_Financiadora, F.Motivo_Sem_Cobertura," +
                           "E.Razao_Social,E.Pais,E.Endereco,E.Numero,E.Complemento,E.Cidade,E.Estado,T.IN_BEM_ENCOMENDA,T.IN_MATERIAL_USADO,IFA.Peso_Unitario,IFA.Rateio_seguro_fatura " +
                           "order by F.Codigo,Cast(IFA.Sequencial as numeric) ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                Licenca_Importacao li = new Licenca_Importacao();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Adicao", cbbAdicoes.SelectedValue.ToString());
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {

                        while (reader.Read())
                        {
                            li.Basicas.IdentificacaoDaSolicitacao = txtProcesso.Text;
                            li.Basicas.TipoDoImportador.Tipo = Convert.ToInt32(reader["Tipo_Importador"].ToString());
                            li.Basicas.TipoDoImportador.CNPJ = reader["CNPJ_CPF_COMPLETO"].ToString();
                            li.Basicas.txInfoComplementar = reader["TX_INFO_COMPL"].ToString();
                            li.Basicas.DadosAuxiliares.PaisDeProcedencia = reader["Pais_Procedencia"].ToString();
                            li.Basicas.DadosAuxiliares.URF_De_Despacho = reader["URF_Despacho"].ToString();
                            li.Basicas.DadosAuxiliares.URF_De_Entrada = reader["URF_chegada"].ToString();

                            //Fornecedor
                            li.Fornecedor.Fabricante.Nome = reader["fabRazao_Social"].ToString();
                            li.Fornecedor.Fabricante.PaisDeOrigem = reader["fabPais"].ToString();
                            li.Fornecedor.Fabricante.Endereco.Logradouro = reader["fabEndereco"].ToString();
                            li.Fornecedor.Fabricante.Endereco.Numero = reader["fabNumero"].ToString();
                            li.Fornecedor.Fabricante.Endereco.Complemento = reader["fabComplemento"].ToString();
                            li.Fornecedor.Fabricante.Endereco.Cidade = reader["fabCidade"].ToString();
                            li.Fornecedor.Fabricante.Endereco.Estado = reader["fabEstado"].ToString();

                            li.Fornecedor.Exportador.Nome = reader["expRazao_Social"].ToString();
                            li.Fornecedor.Exportador.PaisDeAquisicao = reader["expPais"].ToString();
                            li.Fornecedor.Exportador.Endereco.Logradouro = reader["expEndereco"].ToString();
                            li.Fornecedor.Exportador.Endereco.Numero = reader["expNumero"].ToString();
                            li.Fornecedor.Exportador.Endereco.Complemento = reader["expComplemento"].ToString();
                            li.Fornecedor.Exportador.Endereco.Cidade = reader["expCidade"].ToString();
                            li.Fornecedor.Exportador.Endereco.Estado = reader["expEstado"].ToString();

                            //regra fabricante/exportador
                            if (li.Fornecedor.Exportador.Nome == li.Fornecedor.Fabricante.Nome)
                            {
                                li.Fornecedor.Tipo = 1;
                            }
                            else
                            {
                                li.Fornecedor.Tipo = 2;
                                if (!string.IsNullOrEmpty(li.Fornecedor.Fabricante.Nome) && li.Fornecedor.Fabricante.Nome.ToLower() == "DESCONHECIDO")
                                {
                                    li.Fornecedor.Tipo = 3;
                                }
                            }

                            li.Mercadorias.NCM = reader["NCM"].ToString();
                            li.Mercadorias.NALADI_SH = reader["NALADI"].ToString();
                            li.Mercadorias.MoedaNegociada = reader["Moeda"].ToString();
                            li.Mercadorias.INCOTERM = reader["Incoterm"].ToString();

                            li.Mercadorias.CondicaoMercadoria = "N";
                            if (Convert.ToInt16(reader["IN_BEM_ENCOMENDA"]) == 1 && Convert.ToInt16(reader["IN_MATERIAL_USADO"]) == 0)
                            {
                                li.Mercadorias.CondicaoMercadoria = "N";
                            }
                            else
                                if (Convert.ToInt16(reader["IN_BEM_ENCOMENDA"]) == 0 && Convert.ToInt16(reader["IN_MATERIAL_USADO"]) == 1)
                                {
                                    li.Mercadorias.CondicaoMercadoria = "S";
                                }

                            //Destaque NCM
                            if (!string.IsNullOrEmpty(reader["Destaque_NCM"].ToString()))
                            {
                                li.Mercadorias.ListaDeNCM.Add(reader["Destaque_NCM"].ToString());
                            }
                            li.Mercadorias.MercadoriasDetalhada.Add(new MercadoriaDetalhada
                            {
                                UnidComercializada = reader["Unidade_Comercializada"].ToString(),
                                QtdeUnidComercializada = Convert.ToDouble(reader["Quantidade"]),
                                //NumeroPesoLiquidoMerc = Convert.ToDouble(reader["Peso_Unitario"]),
                                NumeroPesoLiquidoMerc = Convert.ToDouble(reader["Peso_Total"]),
                                EspecificacaoMercadoria = reader["Descricao_Produto"].ToString(),
                                ValorUnitCondicaoVenda = Convert.ToDouble(reader["Valor_Unitario_Item"]),                                
                                //ValorMercLocalEmbarque = Convert.ToDouble(reader["Valor_Unitario"]),
                                ValorMercLocalEmbarque = Convert.ToDouble(reader["Valor_Total"]),

                                PesoEmLibra = Convert.ToInt16(reader["Peso_Libra"]),
                                UnidadeMedidaEstatistica = reader["Unidade_Medida_Estat"].ToString()
                            });

                            //Negociação
                            li.Negociacao.RegimeDeTributacao.Codigo = Convert.ToInt16(reader["Regime_Tributacao_II"]);
                            li.Negociacao.RegimeDeTributacao.FundamentoLegal = reader["Fundamento_Legal_II"].ToString();
                            try
                            {
                                li.Negociacao.CoberturaCambial.Tipo = Convert.ToInt16(reader["Cobertura_Cambial"]);
                            }
                            catch
                            {
                                throw new Exception("Favor lançar a cobertura cambial do processo!");
                            }
                            //Cobertura Cambial
                            if (Convert.ToInt16(reader["Cobertura_Cambial"]) == 1)
                            {
                                //li.Negociacao.Ate180dias.Tipo = 1;
                                li.Negociacao.Ate180dias.ModalidadeDePagamento = reader["Modalidade_de_Pagamento"].ToString();
                                li.Negociacao.Ate180dias.QuantidadeDiaLimitePgto = 1;
                            }
                            else if (Convert.ToInt16(reader["Cobertura_Cambial"]) == 2)
                            {
                                //li.Negociacao.De180Ate360dias.Tipo = 2;
                                li.Negociacao.De180Ate360dias.ModalidadeDePagamento = reader["Modalidade_de_Pagamento"].ToString();
                            }
                            else if (Convert.ToInt16(reader["Cobertura_Cambial"]) == 3)
                            {
                                //li.Negociacao.AcimaDe360dias.Tipo = 3;
                                li.Negociacao.AcimaDe360dias.InstituicaoFinanceira = reader["Instituicao_Financiadora"].ToString();
                            }
                            else
                            {
                                //li.Negociacao.SemCobertura.Tipo = 4;
                                li.Negociacao.SemCobertura.Motivo = reader["Motivo_Sem_Cobertura"].ToString();
                            }
                        }
                        return li;
                    }
                }
            }
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        getAdicoes();
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            panelControl.Enabled = (statusFechado == "0");
                        }
                    }
                }
            }
            else
            {
                cbbAdicoes.DataSource = null;
                grvItens.DataSource = null;
                panelControl.Enabled = false;
            }
        }

        List<string> Sequencia = new List<string>();

        private Licenca_Importacao Testando_LI()
        {
            Licenca_Importacao li = new Licenca_Importacao();

            li.Basicas.IdentificacaoDaSolicitacao = "MS12345";
            li.Basicas.TipoDoImportador.Tipo = 1;
            li.Basicas.TipoDoImportador.CNPJ = "42.101.311/0001-97";
            li.Basicas.DadosAuxiliares.PaisDeProcedencia = "105";
            li.Basicas.DadosAuxiliares.URF_De_Despacho = "0717700";
            li.Basicas.DadosAuxiliares.URF_De_Entrada = "0717700";
            li.Basicas.txInfoComplementar = "txInfoComplementartxInfoComplementartxInfoComplementartxInfoComplementartxInfoComplementar";

            li.Mercadorias.NCM = "8501.10.30";
            li.Mercadorias.NALADI_SH = "";
            //li.Mercadorias.QuantidadeUnidadeEstatistica = "10";
            //li.Mercadorias.NumeroPesoLiquidoMerc = 980;
            li.Mercadorias.MoedaNegociada = "220";
            li.Mercadorias.INCOTERM = "FOB";
            //li.Mercadorias.MercadoriasDetalhada.ValorMercLocalEmbarque = 5100;
            li.Mercadorias.CondicaoMercadoria = "S";
            //Destaque NCM
            li.Mercadorias.ListaDeNCM.Add("999");
            li.Mercadorias.ListaDeNCM.Add("899");
            //Processo Anuente
            li.Mercadorias.ProcessoAnuente.Add(new ProcessoAnuente { Numero = "123123", SiglaOrgaoAnuente = "ANVISA" });
            li.Mercadorias.ProcessoAnuente.Add(new ProcessoAnuente { Numero = "456456", SiglaOrgaoAnuente = "ANEEL" });

            li.Mercadorias.ModalidadeDrawback = 4;
            ///Descrição Detalhada da Mercadoria
            li.Mercadorias.MercadoriasDetalhada.Add(new MercadoriaDetalhada { UnidComercializada = "PEÇA", QtdeUnidComercializada = 10, ValorUnitCondicaoVenda = 10, EspecificacaoMercadoria = "item 01", ValorMercLocalEmbarque = 11 });
            li.Mercadorias.MercadoriasDetalhada.Add(new MercadoriaDetalhada { UnidComercializada = "PEÇA", QtdeUnidComercializada = 20, ValorUnitCondicaoVenda = 20, EspecificacaoMercadoria = "item 02", ValorMercLocalEmbarque = 11 });
            return li;
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            Licenca_Importacao li = new Licenca_Importacao();
            //li = Testando_LI();

            try
            {
                li = getLI();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            //WatiN.Core.Settings.MakeNewIeInstanceVisible = false;
            //WatiN.Core.Settings.MakeNewIe8InstanceNoMerge = false;
            //WatiN.Core.Settings.HighLightElement = false;
            //IE browser = null;
            try
            {
                if (rdbChorme.Checked)
                {
                    IWebDriver driver = new ChromeDriver();
                    IJavaScriptExecutor javascript = (IJavaScriptExecutor)driver;

                    driver.Manage().Window.Maximize();
                    driver.Navigate().GoToUrl("https://www1c.siscomex.receita.fazenda.gov.br/siscomexImpweb-7/private_siscomeximpweb_inicio.do");
                    driver.Navigate().GoToUrl("https://www1c.siscomex.receita.fazenda.gov.br/li_web-7/liweb_menu_novo_li.do");


                    //Para uso do importador
                    driver.FindElement(By.Id("numeroIdentUsuario")).Click();
                    driver.FindElement(By.Id("numeroIdentUsuario")).SendKeys(li.Basicas.IdentificacaoDaSolicitacao.Replace("/", ""));

                    //Tipo do importador
                    driver.FindElement(By.Id("tipoImportador")).FindElement(By.CssSelector("option[value='" + li.Basicas.TipoDoImportador.Tipo.ToString() + "']")).Click();
                    // driver.FindElement(By.Id("tipoImportador")).SendKeys(OpenQA.Selenium.Keys.Tab);

                   /// driver.FindElement(By.Id("cnpjImportador")).Click();
                  //   driver.FindElement(By.Id("cnpjImportador")).SendKeys(OpenQA.Selenium.Keys.Home);

                  //  driver.FindElement(By.Id("cnpjImportador")).SendKeys(OpenQA.Selenium.Keys.Control + "a");
                   // driver.FindElement(By.Id("cnpjImportador")).SendKeys(OpenQA.Selenium.Keys.Control + "c");
                   // driver.FindElement(By.Id("cnpjImportador")).SendKeys(OpenQA.Selenium.Keys.Control + "v");
                    //Thread.Sleep(1000);
             //       IJavaScriptExecutor javascript = (IJavaScriptExecutor)driver;

                    String retirarMascara = "$('#cnpjImportador').unmask()";
                    javascript.ExecuteScript(retirarMascara);

                    driver.FindElement(By.Id("cnpjImportador")).SendKeys(li.Basicas.TipoDoImportador.CNPJ);
                    driver.FindElement(By.Id("cnpjImportador")).Click();
                  
                    //Dados Auxiliares
                    driver.FindElement(By.Id("cdPaisProcMerc")).FindElement(By.CssSelector("option[value='" + li.Basicas.DadosAuxiliares.PaisDeProcedencia + "']")).Click();
                    driver.FindElement(By.Id("cdUrfDespacho")).SendKeys(li.Basicas.DadosAuxiliares.URF_De_Despacho);
                    driver.FindElement(By.Id("cdUrfEntrada")).SendKeys(li.Basicas.DadosAuxiliares.URF_De_Entrada);

                    //Selecionar aba de fornecedor
                    driver.FindElement(By.Id("tab-page-2_header")).Click();
                    driver.FindElement(By.Id("tipoFornecedor")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Tipo.ToString() + "']")).Click();

                    if (li.Fornecedor.Tipo == 1)
                    {
                        driver.FindElement(By.Id("nomeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Nome);
                        driver.FindElement(By.Id("cdPaisAquisMerc")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Exportador.PaisDeAquisicao + "']")).Click();
                        driver.FindElement(By.Id("edLogrFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Logradouro);
                        driver.FindElement(By.Id("edNumeroFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Numero);
                        driver.FindElement(By.Id("edComplFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Complemento);
                        driver.FindElement(By.Id("edCidadeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Cidade);
                        driver.FindElement(By.Id("edEstFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Estado);
                    }
                    else
                        if (li.Fornecedor.Tipo == 2)
                        {
                            //Exportador 
                            driver.FindElement(By.Id("nomeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Nome);
                            driver.FindElement(By.Id("cdPaisAquisMerc")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Exportador.PaisDeAquisicao + "']")).Click();
                            driver.FindElement(By.Id("edLogrFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Logradouro);
                            driver.FindElement(By.Id("edNumeroFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Numero);
                            driver.FindElement(By.Id("edComplFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Complemento);
                            driver.FindElement(By.Id("edCidadeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Cidade);
                            driver.FindElement(By.Id("edEstFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Estado);
                            //fabricante                      
                            driver.FindElement(By.Id("nomeFabricMerc")).SendKeys(li.Fornecedor.Fabricante.Nome);
                            driver.FindElement(By.Id("cdPaisOrigMerc")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Fabricante.PaisDeOrigem + "']")).Click();
                            driver.FindElement(By.Id("edLogrFabric")).SendKeys(li.Fornecedor.Fabricante.Endereco.Logradouro);
                            driver.FindElement(By.Id("edNumeroFabric")).SendKeys(li.Fornecedor.Fabricante.Endereco.Numero);
                            driver.FindElement(By.Id("edComplFabric")).SendKeys(li.Fornecedor.Fabricante.Endereco.Complemento);
                            driver.FindElement(By.Id("edCidadeFabric")).SendKeys(li.Fornecedor.Fabricante.Endereco.Cidade);
                            driver.FindElement(By.Id("edEstadoFabric")).SendKeys(li.Fornecedor.Fabricante.Endereco.Estado);
                        }
                        else
                        {
                            //Exportador 
                            driver.FindElement(By.Id("nomeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Nome);
                            driver.FindElement(By.Id("cdPaisAquisMerc")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Exportador.PaisDeAquisicao + "']")).Click();
                            driver.FindElement(By.Id("edLogrFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Logradouro);
                            driver.FindElement(By.Id("edNumeroFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Numero);
                            driver.FindElement(By.Id("edComplFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Complemento);
                            driver.FindElement(By.Id("edCidadeFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Cidade);
                            driver.FindElement(By.Id("edEstFornecEstr")).SendKeys(li.Fornecedor.Exportador.Endereco.Estado);
                            //País de Origem 
                            driver.FindElement(By.Id("cdPaisOrigProdDesconhecido")).FindElement(By.CssSelector("option[value='" + li.Fornecedor.Fabricante.PaisDeOrigem + "']")).Click();
                        }

                    //Selecionar aba de mercadoria
                    driver.FindElement(By.Id("tab-page-3_header")).Click();

                  //  driver.FindElement(By.Id("cdSubItemNCM")).Click();
                    //driver.FindElement(By.Id("cdSubItemNCM")).SendKeys(OpenQA.Selenium.Keys.Home);
                    //Thread.Sleep(1000);
                    String retirarMascaraNCM = "$('#cdSubItemNCM').unmask()";
                    javascript.ExecuteScript(retirarMascaraNCM);
                    driver.FindElement(By.Id("cdSubItemNCM")).SendKeys(li.Mercadorias.NCM);
                    String ColocarMascaraNCM = "$('#cdSubItemNCM').mask('9999.99.99')";
                    javascript.ExecuteScript(ColocarMascaraNCM);
                    driver.FindElement(By.Id("cdSubItemNCM")).Click();
                    driver.FindElement(By.Id("cdNaladiSh")).SendKeys(li.Mercadorias.NALADI_SH);
                    driver.FindElement(By.Id("cdMoedaNegociada")).SendKeys(li.Mercadorias.MoedaNegociada);
                    driver.FindElement(By.Id("cdIncontermsVenda")).SendKeys(li.Mercadorias.INCOTERM);

                    ///Condição da Mercadoria
                    driver.FindElement(By.Id("condicaoMercadoria")).FindElement(By.CssSelector("option[value='" + li.Mercadorias.CondicaoMercadoria.ToString() + "']")).Click();

                    //Selecionar aba de mercadoria
                    ///Destaque NCM
                    foreach (string ncm in li.Mercadorias.ListaDeNCM.Distinct())
                    {                   

                        String todisable = "document.getElementById('cdDestaqueNCM').onfocus = ''; document.getElementById('cdDestaqueNCM').disabled = false;";
                        javascript.ExecuteScript(todisable);
                        driver.FindElement(By.Id("cdDestaqueNCM")).SendKeys(ncm);
                        driver.FindElement(By.Id("imgDestaqueIncluir")).Click();

                    }

                    ///Processo Anuente
                    foreach (ProcessoAnuente processo_anuente in li.Mercadorias.ProcessoAnuente)
                    {
                        driver.FindElement(By.Id("numProcessoAnuente")).SendKeys(processo_anuente.Numero);
                        driver.FindElement(By.Id("siglaOrgaoAnuente")).SendKeys(processo_anuente.SiglaOrgaoAnuente);
                        driver.FindElement(By.Id("imgProcessoAnuenteIncluir")).Click();
                    }

                    ///Descrição Detalhada da Mercadoria              
                    foreach (MercadoriaDetalhada item in li.Mercadorias.MercadoriasDetalhada)
                    {
                        driver.FindElement(By.Id("unidComercializada")).Click();
                        System.Threading.Thread.Sleep(400);
                        driver.FindElement(By.Id("unidComercializada")).SendKeys(item.UnidComercializada);
                        driver.FindElement(By.Id("numeroPesoLiquidoMerc")).SendKeys(item.NumeroPesoLiquidoMerc.ToString());
                        driver.FindElement(By.Id("qtdeUnidComercializada")).SendKeys(item.QtdeUnidComercializada.ToString());
                        driver.FindElement(By.Id("quantidadeUnidEstatistica")).SendKeys((item.QuantidadeUnidadeEstatistica).ToString());
                        driver.FindElement(By.Id("valorMercLocalEmb")).SendKeys(item.ValorMercLocalEmbarque.ToString());
                        driver.FindElement(By.Id("valorMercCondicaoVenda")).SendKeys(item.ValorUnitCondicaoVenda.ToString());
                        driver.FindElement(By.Id("especificacaoMercadoria3900")).SendKeys(item.EspecificacaoMercadoria);
                        driver.FindElement(By.Id("buttonMercadoriaIncluir")).Click();
                        Application.DoEvents();
                    }

                    //Aba Negociação
                    driver.FindElement(By.Id("tab-page-4_header")).Click();

                    driver.FindElement(By.Id("cdRegimeTrib")).SendKeys(li.Negociacao.RegimeDeTributacao.Codigo.ToString());
                    //  driver.FindElement(By.Id("cdRegimeTrib")).SendKeys(OpenQA.Selenium.Keys.Tab);

                    if (!string.IsNullOrEmpty(li.Negociacao.RegimeDeTributacao.FundamentoLegal))
                    {
                        driver.FindElement(By.Id("cdFundLegal")).SendKeys(li.Negociacao.RegimeDeTributacao.FundamentoLegal);
                    }


                    //Cobertura Cambial
                    driver.FindElement(By.Id("tipoCoberturaCambial")).FindElement(By.CssSelector("option[value='" + li.Negociacao.CoberturaCambial.Tipo.ToString() + "']")).Click();

                    if (li.Negociacao.CoberturaCambial.Tipo == 1)
                    {
                        driver.FindElement(By.Id("cdModalidade")).SendKeys(li.Negociacao.Ate180dias.ModalidadeDePagamento);
                        driver.FindElement(By.Id("quantidadeDiaLimitePgto")).SendKeys(li.Negociacao.Ate180dias.QuantidadeDiaLimitePgto.ToString());
                    }
                    else if (li.Negociacao.CoberturaCambial.Tipo == 2)
                    {
                        driver.FindElement(By.Id("cdModalidade")).SendKeys(li.Negociacao.De180Ate360dias.ModalidadeDePagamento);
                    }
                    else if (li.Negociacao.CoberturaCambial.Tipo == 3)
                    {
                        driver.FindElement(By.Id("cdOrgaoFimInter")).SendKeys(li.Negociacao.AcimaDe360dias.InstituicaoFinanceira);
                    }
                    else
                    {
                        driver.FindElement(By.Id("cdMotivoSemCob")).SendKeys(li.Negociacao.SemCobertura.Motivo);
                    }
                }
                else
                {
                    WatiN.Core.Settings.WaitUntilExistsTimeOut = 9000;
                    WatiN.Core.Settings.WaitForCompleteTimeOut = 9000;
                    WatiN.Core.Settings.SleepTime = 0;
                    WatiN.Core.Settings.AttachToBrowserTimeOut = 0;
                    WatiN.Core.Settings.AutoMoveMousePointerToTopLeft = false;
                    WatiN.Core.Settings.AutoStartDialogWatcher = false;

                    using (IE browser = new IE() { AutoClose = false })
                    {
                        //browser = new IE() { AutoClose = false };
                        browser.ShowWindow(NativeMethods.WindowShowStyle.Maximize);
                        browser.GoTo("https://www1c.siscomex.receita.fazenda.gov.br/siscomexImpweb-7/inicio.html");
                        browser.GoTo("https://www1c.siscomex.receita.fazenda.gov.br/siscomexImpweb-7/private_siscomeximpweb_inicio.do");
                        browser.GoTo("https://www1c.siscomex.receita.fazenda.gov.br/li_web-7/liweb_menu_novo_li.do");

                        if (browser.NativeDocument.Title.Contains("403"))
                        {
                            throw new Exception("Você não tem permissão para acessar este site, verifique o seu certificado digital.");
                        }

                        //Para uso do importador
                        browser.TextField(Find.ByName("numeroIdentUsuario")).TypeTextFaster(li.Basicas.IdentificacaoDaSolicitacao);
                        //Tipo do importador
                        browser.SelectList(Find.ById("tipoImportador")).SelectByValue(li.Basicas.TipoDoImportador.Tipo.ToString());
                        browser.TextField(Find.ById("cnpjImportador")).TypeTextFaster(li.Basicas.TipoDoImportador.CNPJ);
                        browser.TextField(Find.ById("cnpjImportador")).Blur();
                        //Dados Auxiliares
                        browser.SelectList(Find.ById("cdPaisProcMerc")).SelectByValue(li.Basicas.DadosAuxiliares.PaisDeProcedencia);
                        browser.TextField(Find.ById("cdUrfDespacho")).TypeTextFaster(li.Basicas.DadosAuxiliares.URF_De_Despacho);
                        browser.TextField(Find.ById("cdUrfDespacho")).Blur();
                        browser.TextField(Find.ById("cdUrfEntrada")).TypeTextFaster(li.Basicas.DadosAuxiliares.URF_De_Entrada);
                        browser.TextField(Find.ById("cdUrfEntrada")).Blur();
                        //Informações complementares
                        //browser.TextField(Find.ById("txInfoComplementar")).TypeTextFaster(li.Basicas.txInfoComplementar);
                        //Selecionar aba de fornecedores
                        //browser.Link(Find.ByUrl("javascript:selecionaAba(1);")).ClickNoWait();
                        //browser.Link(link => link.Text == "Fornecedor").ClickNoWait();

                        //Does Work
                        browser.Link(Find.By("innertext", "Fornecedor")).Click();
                        //browser.Link(Find.By("id", "Fornecedor")).Click

                        browser.SelectList(Find.ById("tipoFornecedor")).SelectByValue(li.Fornecedor.Tipo.ToString());

                        if (li.Fornecedor.Tipo == 1)
                        {
                            browser.TextField(Find.ById("nomeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Nome);
                            browser.SelectList(Find.ById("cdPaisAquisMerc")).SelectByValue(li.Fornecedor.Exportador.PaisDeAquisicao);
                            browser.TextField(Find.ById("edLogrFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Logradouro);
                            browser.TextField(Find.ById("edNumeroFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Numero);
                            browser.TextField(Find.ById("edComplFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Complemento);
                            browser.TextField(Find.ById("edCidadeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Cidade);
                            browser.TextField(Find.ById("edEstFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Estado);
                        }
                        else
                            if (li.Fornecedor.Tipo == 2)
                            {
                                //Exportador 
                                browser.TextField(Find.ById("nomeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Nome);
                                browser.SelectList(Find.ById("cdPaisAquisMerc")).SelectByValue(li.Fornecedor.Exportador.PaisDeAquisicao);
                                browser.TextField(Find.ById("edLogrFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Logradouro);
                                browser.TextField(Find.ById("edNumeroFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Numero);
                                browser.TextField(Find.ById("edComplFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Complemento);
                                browser.TextField(Find.ById("edCidadeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Cidade);
                                browser.TextField(Find.ById("edEstFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Estado);
                                //fabricante
                                browser.TextField(Find.ById("nomeFabricMerc")).TypeTextFaster(li.Fornecedor.Fabricante.Nome);
                                browser.SelectList(Find.ById("cdPaisOrigMerc")).SelectByValue(li.Fornecedor.Fabricante.PaisDeOrigem);
                                browser.TextField(Find.ById("edLogrFabric")).TypeTextFaster(li.Fornecedor.Fabricante.Endereco.Logradouro);
                                browser.TextField(Find.ById("edNumeroFabric")).TypeTextFaster(li.Fornecedor.Fabricante.Endereco.Numero);
                                browser.TextField(Find.ById("edComplFabric")).TypeTextFaster(li.Fornecedor.Fabricante.Endereco.Complemento);
                                browser.TextField(Find.ById("edCidadeFabric")).TypeTextFaster(li.Fornecedor.Fabricante.Endereco.Cidade);
                                browser.TextField(Find.ById("edEstadoFabric")).TypeTextFaster(li.Fornecedor.Fabricante.Endereco.Estado);

                            }
                            else
                            {
                                //Exportador 
                                browser.TextField(Find.ById("nomeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Nome);
                                browser.SelectList(Find.ById("cdPaisAquisMerc")).SelectByValue(li.Fornecedor.Exportador.PaisDeAquisicao);
                                browser.TextField(Find.ById("edLogrFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Logradouro);
                                browser.TextField(Find.ById("edNumeroFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Numero);
                                browser.TextField(Find.ById("edComplFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Complemento);
                                browser.TextField(Find.ById("edCidadeFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Cidade);
                                browser.TextField(Find.ById("edEstFornecEstr")).TypeTextFaster(li.Fornecedor.Exportador.Endereco.Estado);
                                //País de Origem 
                                browser.SelectList(Find.ById("cdPaisOrigProdDesconhecido")).SelectByValue(li.Fornecedor.Fabricante.PaisDeOrigem);
                            }


                        //Selecionar aba de mercadoria
                        //browser.Link(Find.ByUrl("javascript:selecionaAba(2);")).Click();
                        //browser.Link(link => link.Text == "Mercadoria").ClickNoWait();
                        browser.Link(Find.By("innertext", "Mercadoria")).Click();
                        browser.TextField(Find.ById("cdSubItemNCM")).TypeTextFaster(Convert.ToUInt64(li.Mercadorias.NCM).ToString(@"0000\.00\.00"));
                        browser.TextField(Find.ById("cdSubItemNCM")).Blur();

                        browser.TextField(Find.ById("cdNaladiSh")).TypeTextFaster(li.Mercadorias.NALADI_SH);
                        browser.TextField(Find.ById("cdNaladiSh")).Blur();
                        // browser.TextField(Find.ById("quantidadeUnidEstatistica")).TypeTextFaster(li.Mercadorias.QuantidadeUnidadeEstatistica.ToString());
                        // browser.TextField(Find.ById("quantidadeUnidEstatistica")).Blur();
                        //browser.TextField(Find.ById("numeroPesoLiquidoMerc")).TypeTextFaster(li.Mercadorias.NumeroPesoLiquidoMerc.ToString());
                        //browser.TextField(Find.ById("numeroPesoLiquidoMerc")).Blur();
                        browser.TextField(Find.ById("cdMoedaNegociada")).TypeTextFaster(li.Mercadorias.MoedaNegociada);
                        browser.TextField(Find.ById("cdMoedaNegociada")).Blur();
                        browser.TextField(Find.ById("cdIncontermsVenda")).TypeTextFaster(li.Mercadorias.INCOTERM);
                        browser.TextField(Find.ById("cdIncontermsVenda")).Blur();
                        //browser.TextField(Find.ById("valorMercLocalEmb")).TypeTextFaster(li.Mercadorias.ValorMercLocalEmbarque.ToString());
                        //browser.TextField(Find.ById("valorMercLocalEmb")).Blur();

                        //Selecionar aba de mercadoria
                        ///Condição da Mercadoria
                        browser.SelectList(Find.ById("condicaoMercadoria")).SelectByValue(li.Mercadorias.CondicaoMercadoria.ToString());

                        //Selecionar aba de mercadoria
                        ///Destaque NCM
                        foreach (string ncm in li.Mercadorias.ListaDeNCM.Distinct())
                        {
                            //Receita alterou - Eduardo Souza - 08/12/2015.
                            //browser.TextField(Find.ById("inclusaoNCM")).TypeTextFaster(ncm);    
                            //browser.Element(Find.ById("cdDestaqueNCM")).WaitUntil<Element>(element=> element.Enabled);
                            //browser.TextField(Find.ById("cdDestaqueNCM")).TypeTextFaster(ncm);
                            //browser.Link(Find.ByUrl("javascript:pesquisarListaDestaque('destaqueNCM','LIWebSalvarAlteracaoLIForm.cdDestaqueNCM','dmDestaqueNCM');")).ClickNoWait();

                            //var href = browser.Element(Find.ById("codigo999")).GetAttributeValue("href").ToString();
                            //browser.Link(Find.ByUrl("javascript:enviaDadosHelper('999', 'Sem destaque', 'LIWebSalvarAlteracaoLIForm.cdDestaqueNCM', 'dmDestaqueNCM', 'Destaque NCM', '', 'LIWebSalvarAlteracaoLIForm')")).Click();
                            //browser.Link(Find.By("innertext", "999")).Click();                        
                            //browser.Link(Find.ById("codigo999")).Click();
                            //browser.Link(Find.ByText("999")).Click();
                            //browser.Image(Find.ById("imgDestaqueIncluir")).Click();
                            //browser.Eval("adicionarItem('tblDestaqueNCM', ['9'], 'div_destaqueNCM', ['numeroDestaqueNCM']);");
                            //browser.TextField(Find.ById("cdDestaqueNCM")).WaitUntil("onfocus", " ");

                            browser.Eval("document.getElementById('cdDestaqueNCM').onfocus = ''; document.getElementById('cdDestaqueNCM').disabled = false;");
                            browser.TextField(Find.ById("cdDestaqueNCM")).TypeTextFaster(ncm);
                            browser.Image(Find.ById("imgDestaqueIncluir")).Click();

                        }

                        //Selecionar aba de mercadoria
                        ///Processo Anuente
                        foreach (ProcessoAnuente processo_anuente in li.Mercadorias.ProcessoAnuente)
                        {
                            browser.TextField(Find.ById("numProcessoAnuente")).TypeTextFaster(processo_anuente.Numero);
                            browser.TextField(Find.ById("siglaOrgaoAnuente")).TypeTextFaster(processo_anuente.SiglaOrgaoAnuente);
                            browser.Image(Find.ById("imgProcessoAnuenteIncluir")).Click();
                        }
                        //Selecionar aba de mercadoria
                        //Drawback 
                        //browser.SelectList(Find.ById("temSistemaDrawback")).SelectByValue(li.Mercadorias.ModalidadeDrawback.ToString());
                        //Selecionar aba de mercadoria
                        ///Descrição Detalhada da Mercadoria              
                        foreach (MercadoriaDetalhada item in li.Mercadorias.MercadoriasDetalhada)
                        {
                            browser.TextField(Find.ById("unidComercializada")).TypeTextFaster(item.UnidComercializada);
                            browser.TextField(Find.ById("unidComercializada")).Blur();
                            System.Threading.Thread.Sleep(400);
                            //novo
                            browser.TextField(Find.ById("numeroPesoLiquidoMerc")).TypeTextFaster(item.NumeroPesoLiquidoMerc.ToString());
                            browser.TextField(Find.ById("qtdeUnidComercializada")).TypeTextFaster(item.QtdeUnidComercializada.ToString());
                            //novo
                            //  browser.TextField(Find.ById("quantidadeUnidEstatistica")).TypeTextFaster((item.QuantidadeUnidadeEstatistica * item.QtdeUnidComercializada).ToString());
                            browser.TextField(Find.ById("quantidadeUnidEstatistica")).TypeTextFaster((item.QuantidadeUnidadeEstatistica).ToString());
                            //novo
                            browser.TextField(Find.ById("valorMercLocalEmb")).TypeTextFaster(item.ValorMercLocalEmbarque.ToString());
                            //browser.TextField(Find.ById("valorUnitCondicaoVenda")).TypeTextFaster(item.ValorUnitCondicaoVenda.ToString());
                            browser.TextField(Find.ById("valorMercCondicaoVenda")).TypeTextFaster(item.ValorUnitCondicaoVenda.ToString());
                            //Receita alterou - Eduardo Souza - 08/12/2015.
                            //browser.TextField(Find.ById("especificacaoMercadoria")).TypeTextFaster(item.EspecificacaoMercadoria);
                            browser.TextField(Find.ById("especificacaoMercadoria3900")).TypeTextFaster(item.EspecificacaoMercadoria);
                            browser.Button(Find.ById("buttonMercadoriaIncluir")).Click();
                            Application.DoEvents();
                        }

                        //Aba Negociação
                        //Selecionar aba de mercadoria
                        ///Regime de Tributação
                        //browser.Link(Find.ByUrl("javascript:selecionaAba(3);")).Click();
                        //browser.Link(link => link.Text == "Negociação").ClickNoWait();
                        browser.Link(Find.By("innertext", "Negociação")).Click();
                        browser.TextField(Find.ById("cdRegimeTrib")).TypeTextFaster(li.Negociacao.RegimeDeTributacao.Codigo.ToString());
                        browser.TextField(Find.ById("cdRegimeTrib")).Blur();
                        if (!string.IsNullOrEmpty(li.Negociacao.RegimeDeTributacao.FundamentoLegal))
                        {
                            browser.TextField(Find.ById("cdFundLegal")).TypeTextFaster(li.Negociacao.RegimeDeTributacao.FundamentoLegal);
                            browser.TextField(Find.ById("cdFundLegal")).Blur();
                        }

                        //Aba Negociação
                        //Cobertura Cambial
                        browser.SelectList(Find.ById("tipoCoberturaCambial")).SelectByValue(li.Negociacao.CoberturaCambial.Tipo.ToString());
                        if (li.Negociacao.CoberturaCambial.Tipo == 1)
                        {
                            browser.TextField(Find.ById("cdModalidade")).TypeTextFaster(li.Negociacao.Ate180dias.ModalidadeDePagamento);
                            browser.TextField(Find.ById("cdModalidade")).Blur();
                            browser.TextField(Find.ById("quantidadeDiaLimitePgto")).TypeTextFaster(li.Negociacao.Ate180dias.QuantidadeDiaLimitePgto.ToString());

                        }
                        else if (li.Negociacao.CoberturaCambial.Tipo == 2)
                        {
                            browser.TextField(Find.ById("cdModalidade")).TypeTextFaster(li.Negociacao.De180Ate360dias.ModalidadeDePagamento);
                            browser.TextField(Find.ById("cdModalidade")).Blur();
                        }
                        else if (li.Negociacao.CoberturaCambial.Tipo == 3)
                        {
                            browser.TextField(Find.ById("cdOrgaoFimInter")).TypeTextFaster(li.Negociacao.AcimaDe360dias.InstituicaoFinanceira);
                            browser.TextField(Find.ById("cdOrgaoFimInter")).Blur();
                        }
                        else
                        {
                            browser.TextField(Find.ById("cdMotivoSemCob")).TypeTextFaster(li.Negociacao.SemCobertura.Motivo);
                            browser.TextField(Find.ById("cdMotivoSemCob")).Blur();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void cbbAdicoes_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(cbbAdicoes.Text))
            {
                grvItens.AutoGenerateColumns = false;
                grvItens.DataSource = getExibirItens();
            }

        }

        private void FrmRegistroLI_Load(object sender, EventArgs e)
        {
            panelControl.Enabled = false;
            this.ActiveControl = txtProcesso;
        }
        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }
        private bool VerificaProcesso()
        {
            bool GoOn = true;

            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo esta fechado, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && false;
            }
            if (statusFechado == "0")
            {
                GoOn = GoOn && true;
            }
            return GoOn;
        }


    }

    public static class WatinExtensions
    {
        public static void TypeTextFaster(this TextField textfield, string value)
        {
            textfield.Value = value;
            textfield.Change();
        }
    }
}

