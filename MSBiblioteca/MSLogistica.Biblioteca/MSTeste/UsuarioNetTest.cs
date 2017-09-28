using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para UsuarioNetTest e pretende
    ///conter todos os Testes de Unidade de UsuarioNetTest
    ///</summary>
    [TestClass()]
    public class UsuarioNetTest
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
            UsuarioNet target = new UsuarioNet(); 
            string ImportadorCGCCPF = string.Empty; 
            string Usuario = string.Empty; 
            DataTable actual;
            ImportadorCGCCPF = "00";
            Usuario = "DRF/CPS-01";
            actual = target.Buscar(ImportadorCGCCPF, Usuario);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Buscar
        ///</summary>
        [TestMethod()]
        public void BuscarTest1()
        {
            UsuarioNet target = new UsuarioNet(); 
            string ImportadorCGCCPF = string.Empty; 
            bool ApenasDITEC = true; 
            DataTable actual;
            ImportadorCGCCPF = "00";
            actual = target.Buscar(ImportadorCGCCPF, ApenasDITEC);
            Assert.IsTrue(actual.Rows.Count > 0);
        }
    }
}
