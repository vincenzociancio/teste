using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;
using System.Data;

namespace MSTeste
{


    /// <summary>
    ///Esta é uma classe de teste para ControleAtasArquivosTest e pretende
    ///conter todos os Testes de Unidade de ControleAtasArquivosTest
    ///</summary>
    [TestClass()]
    public class ControleAtasArquivosTest
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
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            ControleAtaArquivo target = new ControleAtaArquivo();
            ControleAtaArquivo objDTO = new ControleAtaArquivo();
            int actual; 
            objDTO.FKAtas = 1;
            objDTO.Caminho = "teste";
            objDTO.TipoArquivo = "tes";
            objDTO.Data = DateTime.Now;
            objDTO.DescricaoArquivo = "teste";
            actual = target.Incluir(objDTO);
            Assert.IsTrue(actual > 0);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            ControleAtaArquivo target = new ControleAtaArquivo(); 
            int PKAtaArquivos = 1; 
            bool expected = true; 
            bool actual;

            actual = target.Excluir(PKAtaArquivos);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Buscar
        ///</summary>
        [TestMethod()]
        public void BuscarTest()
        {
            ControleAtaArquivo target = new ControleAtaArquivo(); 
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarPK
        ///</summary>
        [TestMethod()]
        public void BuscarPKTest()
        {
            ControleAtaArquivo target = new ControleAtaArquivo(); 
            int PKAtaArquivos = 2; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            actual = target.BuscarPKAta(PKAtaArquivos, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }
    }
}
