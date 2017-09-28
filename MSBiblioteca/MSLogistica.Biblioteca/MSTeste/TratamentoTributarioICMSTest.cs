using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para TratamentoTributarioICMSTest e pretende
    ///conter todos os Testes de Unidade de TratamentoTributarioICMSTest
    ///</summary>
    [TestClass()]
    public class TratamentoTributarioICMSTest
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
            TratamentoTributarioICMS target = new TratamentoTributarioICMS(); 
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarCodigo
        ///</summary>
        [TestMethod()]
        public void BuscarCodigoTest()
        {
            TratamentoTributarioICMS target = new TratamentoTributarioICMS(); 
            string codigo = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            codigo = "1";
            actual = target.BuscarCodigo(codigo, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarDescricao
        ///</summary>
        [TestMethod()]
        public void BuscarDescricaoTest()
        {
            TratamentoTributarioICMS target = new TratamentoTributarioICMS(); 
            string descricao = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            bool IdiomaPT = true;  
            DataTable actual;
            descricao = "Regime Especial";
            actual = target.BuscarDescricao(descricao, SomenteRegistrosAtivos, IdiomaPT);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            TratamentoTributarioICMS target = new TratamentoTributarioICMS(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "1";
            actual = target.Excluir(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            TratamentoTributarioICMS target = new TratamentoTributarioICMS();
            TratamentoTributarioICMS objDTO = new TratamentoTributarioICMS(); 
            bool expected = true; 
            bool actual;
            objDTO.Codigo = "7";
            objDTO.Descricao = "Teste Sandro";
            objDTO.DescricaoING = "Test";
            actual = target.Incluir(objDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            TratamentoTributarioICMS target = new TratamentoTributarioICMS();
            TratamentoTributarioICMS objDTO = new TratamentoTributarioICMS();
            bool expected = true; 
            bool actual;
            objDTO.Codigo = "7";
            objDTO.Descricao = "Teste Sandro Update";
            objDTO.DescricaoING = "Test Update";
            actual = target.Alterar(objDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
