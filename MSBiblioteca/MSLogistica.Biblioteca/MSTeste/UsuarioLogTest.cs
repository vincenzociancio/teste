using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para UsuarioLogTest e pretende
    ///conter todos os Testes de Unidade de UsuarioLogTest
    ///</summary>
    [TestClass()]
    public class UsuarioLogTest
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
            UsuarioLog target = new UsuarioLog();
            UsuarioLog usuarioLogDTO = new UsuarioLog(); 
            bool expected = true; 
            bool actual;
            usuarioLogDTO.FkUsuario = 14101;
            usuarioLogDTO.Movimentacao = 1;
            usuarioLogDTO.Descricao = "teste";
            usuarioLogDTO.Sistema = 0;
            usuarioLogDTO.FkProcesso = "04010/12";

            actual = target.Incluir(usuarioLogDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
