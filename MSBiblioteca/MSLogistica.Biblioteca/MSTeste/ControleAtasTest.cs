using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;
using System.Data;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para ControleAtasTest e pretende
    ///conter todos os Testes de Unidade de ControleAtasTest
    ///</summary>
    [TestClass()]
    public class ControleAtasTest
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
            ControleAta target = new ControleAta();
            ControleAta objDTO = new ControleAta();
            int actual;
            objDTO.Tema = "teste22";
            objDTO.Tipo = 0;
            objDTO.FKUsuario = "2";
            objDTO.FKImportador = "150";
            objDTO.Data = DateTime.Now;
            actual = target.Incluir(objDTO);
            Assert.IsTrue(actual > 0);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            ControleAta target = new ControleAta(); 
            ControleAta objDTO = new ControleAta();
            bool expected = true; 
            bool actual;

            objDTO.PKAtas = 3;
            objDTO.Tema = "teste update";
            objDTO.Tipo = 1;
            objDTO.FKUsuario = "4";
            //objDTO.FKImportador = "1";
            objDTO.Data = DateTime.Now;
            actual = target.Alterar(objDTO);
            Assert.AreEqual(expected, actual);
            
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            ControleAta target = new ControleAta(); 
            int PKAta = 1; 
            bool expected = true; 
            bool actual;
            actual = target.Excluir(PKAta);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Buscar
        ///</summary>
        [TestMethod()]
        public void BuscarTest()
        {
            ControleAta target = new ControleAta(); 
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
            ControleAta target = new ControleAta(); 
            int PKAta = 1; 
            bool SomenteRegistrosAtivos = false;
 
            DataTable actual;
            actual = target.BuscarPK(PKAta, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarTema
        ///</summary>
        [TestMethod()]
        public void BuscarTemaTest()
        {
            ControleAta target = new ControleAta(); 
            string Tema = "TESTE"; 
            int Tipo = 1; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            actual = target.BuscarTema(Tema, Tipo, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

    }
}
