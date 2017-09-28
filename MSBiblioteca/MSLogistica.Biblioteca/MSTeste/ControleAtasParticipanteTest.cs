using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;
using System.Data;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para ControleAtasParticipanteTest e pretende
    ///conter todos os Testes de Unidade de ControleAtasParticipanteTest
    ///</summary>
    [TestClass()]
    public class ControleAtasParticipanteTest
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
            ControleAtaParticipante target = new ControleAtaParticipante();
            ControleAtaParticipante objDTO = new ControleAtaParticipante();
            int actual;
            //objDTO.DataAceite = DateTime.Now;
            objDTO.FKAtas = 2;
            objDTO.FKUsuario = "2";

            actual = target.Incluir(objDTO);
            Assert.IsTrue(actual > 0);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            ControleAtaParticipante target = new ControleAtaParticipante(); 
            int PKAtaParticipante = 1; 
            bool expected = true; 
            bool actual;
            actual = target.Excluir(PKAtaParticipante);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Buscar
        ///</summary>
        [TestMethod()]
        public void BuscarTest()
        {
            ControleAtaParticipante target = new ControleAtaParticipante(); 
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
            ControleAtaParticipante target = new ControleAtaParticipante(); 
            int PKAtaParticipante = 2; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            actual = target.BuscarPKAta(PKAtaParticipante, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Aceitar
        ///</summary>
        [TestMethod()]
        public void AceitarTest()
        {
            ControleAtaParticipante target = new ControleAtaParticipante(); 
            int PKAtaParticipante = 3; 
            bool expected = true; 
            bool actual;
            actual = target.Aceitar(PKAtaParticipante, "");
            Assert.AreEqual(expected, actual);
        }
    }
}
