using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{ 
    
    
    /// <summary>
    ///Esta é uma classe de teste para ArmazemTest e pretende
    ///conter todos os Testes de Unidade de ArmazemTest
    ///</summary>
    [TestClass()]
    public class ArmazemTest
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
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            Armazem target = new Armazem();
            Armazem armazemDTO = new Armazem();
            bool expected = true; 
            bool actual;
            armazemDTO.Codigo = "05";
            armazemDTO.Descricao = "TRA Teste";
            actual = target.Alterar(armazemDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            Armazem target = new Armazem(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "00";
            actual = target.Excluir(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            Armazem target = new Armazem();
            Armazem armazemDTO = new Armazem();
            bool expected = true; 
            bool actual;
            armazemDTO.Codigo = "99";
            armazemDTO.Descricao = "Teste de inclusão";
            actual = target.Incluir(armazemDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
