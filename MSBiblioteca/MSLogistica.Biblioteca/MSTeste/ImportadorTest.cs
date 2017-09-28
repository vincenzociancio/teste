using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para ImportadorTest e pretende
    ///conter todos os Testes de Unidade de ImportadorTest
    ///</summary>
    [TestClass()]
    public class ImportadorTest
    {

        private TestContext testContextInstance;

        /// <summary>
        ///Obtém ou define o contexto de teste o qual fornece
        ///informações sobre e funcionalidade para a execução de teste atual.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Atributos de teste adicionais
        // 
        //Podem ser usados os seguintes atributos adicionais enquanto escreve os testes:
        //
        //Use ClassInitialize para executar código antes de executar o primeiro teste na classe
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup para executar código depois que todos os testes já forem executados
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize para executar código antes de executar cada teste
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup para executar código depois da execução de cada teste
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion

        /// <summary>
        ///Um teste para Buscar
        ///</summary>
        [TestMethod()]
        public void BuscarTest()
        {
            Importador target = new Importador();
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarRazaoSocial
        ///</summary>
        [TestMethod()]
        public void BuscarRazaoSocialTest()
        {
            Importador target = new Importador(); 
            string RazaoSocial = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            RazaoSocial = "tRANS";
            actual = target.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            Importador target = new Importador();
            Importador importadorDTO = new Importador(); 
            bool expected = true; 
            bool actual;
            importadorDTO.Codigo = "9999";
            importadorDTO.RazaoSocial = "Teste Sandro 2";
            importadorDTO.Pais = "190";
            importadorDTO.CnpjCpfCompleto = "";
            importadorDTO.CgcCpf = "";
            importadorDTO.TipoImportador = "";
            importadorDTO.Endereco = "";
            importadorDTO.Numero = "";
            importadorDTO.Complemento = "";
            importadorDTO.Bairro = "";
            importadorDTO.Cidade = "";
            importadorDTO.Cep = "";
            importadorDTO.Uf = "";
            importadorDTO.Estado = "";
            importadorDTO.InscricaoEstadual = "";
            importadorDTO.Banco = "";
            importadorDTO.Agencia = "";
            importadorDTO.ContaCorrente = "";
            importadorDTO.ContaCorrenteRegistro = 0;
            importadorDTO.ContaCorrenteDeposito = 0;
            importadorDTO.Link = "";
            importadorDTO.Cae = "";
            importadorDTO.Telefone = "";
            importadorDTO.Ativo = 1;
            importadorDTO.AcessoWebMSLogistica = 1;
            importadorDTO.AcessoWebCliente = 1;
            importadorDTO.AcessoWebReceita = 1;
            importadorDTO.BaseIcms = 1;
            importadorDTO.MovimentacaoRepetro = 1;
            importadorDTO.InscricaoMunicipal = "";
            importadorDTO.Email = "";
            importadorDTO.FaturaIss = 1;
            importadorDTO.EmailMonitoracao = "";
            importadorDTO.ApencLiberado = 0;
            importadorDTO.ExportaParaSiscomex = 0;

            actual = target.Alterar(importadorDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            Importador target = new Importador(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "9999";
            actual = target.Excluir(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            Importador target = new Importador();
            Importador importadorDTO = new Importador(); 
            string expected = ""; 
            string actual;
            importadorDTO.RazaoSocial = "Teste unitario";
            importadorDTO.CnpjCpfCompleto = "1245";
            importadorDTO.CgcCpf = "1245";
            importadorDTO.Pais = "1";
            importadorDTO.TipoImportador = "1";
            importadorDTO.Endereco = "teste";
            importadorDTO.Numero = "123";
            importadorDTO.Complemento = "tes";
            importadorDTO.Bairro = "teste";
            importadorDTO.Cidade = "teste";
            importadorDTO.Cep = "123";
            importadorDTO.Uf = "xx";
            importadorDTO.Estado = "teste";
            importadorDTO.InscricaoEstadual = "teste";
            importadorDTO.Banco = "12";
            importadorDTO.Agencia = "1";
            importadorDTO.ContaCorrente = "123";
            importadorDTO.ContaCorrenteRegistro = 1;
            importadorDTO.ContaCorrenteDeposito = 1;
            importadorDTO.Link = "test";
            importadorDTO.Cae = "tes";
            importadorDTO.Telefone = "123456";
            importadorDTO.Ativo = 1;
            importadorDTO.AcessoWebMSLogistica = 1;
            importadorDTO.AcessoWebCliente = 1;
            importadorDTO.AcessoWebReceita = 1;
            importadorDTO.BaseIcms = 1;
            importadorDTO.MovimentacaoRepetro = 1;
            importadorDTO.InscricaoMunicipal = "123";
            importadorDTO.Email = "teste";
            importadorDTO.FaturaIss = 1;
            importadorDTO.EmailMonitoracao = "teste";
            importadorDTO.ApencLiberado = 0;
            importadorDTO.Lixo = 0;
            importadorDTO.ExportaParaSiscomex = 1;
            actual = target.Incluir(importadorDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Imprimir
        ///</summary>
        [TestMethod()]
        public void ImprimirTest()
        {
            Importador target = new Importador(); 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            actual = target.Imprimir(SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Desativar
        ///</summary>
        [TestMethod()]
        public void DesativarTest()
        {
            Importador target = new Importador(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "2";
            actual = target.Desativar(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Ativar
        ///</summary>
        [TestMethod()]
        public void AtivarTest()
        {
            Importador target = new Importador(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "2";
            actual = target.Ativar(Codigo);
            Assert.AreEqual(expected, actual);
        }
    }
}
