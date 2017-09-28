using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;
using System.Data;
using System.Collections.Generic;

namespace MSTeste
{
    /// <summary>
    ///Esta é uma classe de teste para CaeTest e pretende
    ///conter todos os Testes de Unidade de CaeTest
    ///</summary>
    [TestClass()]
    public class CaeTest
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
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            Cae target = new Cae(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "9.8";
            actual = target.Excluir(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            Cae target = new Cae(); 
            CaeDTO caeDTO = new Cae(); 
            bool expected = true; 
            bool actual;
            caeDTO.PKCodigo = "9.8";
            caeDTO.Descricao = "Teste Sandro Update";
            caeDTO.DescricaoING = "Test Update";
            actual = target.Alterar(caeDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para BuscarCodigo
        ///</summary>
        [TestMethod()]
        public void BuscarCodigoTest()
        {            
            Cae target = new Cae(); 
            string codigo = string.Empty; 
            codigo = "9.8";
            target = target.BuscarCodigo(codigo);
            Assert.IsTrue(target.PKCodigo != "");
        }

        /// <summary>
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            Cae target = new Cae(); 
            CaeDTO caeDTO = new Cae(); 
            bool actual;
            caeDTO.PKCodigo = "9.8";
            caeDTO.Descricao = "Teste Sandro";
            caeDTO.DescricaoING = "Test";
            actual = target.Incluir(caeDTO);
            Assert.IsTrue(actual = true);
        }
    }
}
