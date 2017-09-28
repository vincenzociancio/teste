using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para TiposDeCargasTest e pretende
    ///conter todos os Testes de Unidade de TiposDeCargasTest
    ///</summary>
    [TestClass()]
    public class TiposDeCargasTest
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
            TipoDeCarga target = new TipoDeCarga(); 
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            TipoDeCarga target = new TipoDeCarga();
            TipoDeCarga tiposDeCargasDTO = new TipoDeCarga(); 
            bool expected = true; 
            bool actual;
            tiposDeCargasDTO.Codigo = "1";
            tiposDeCargasDTO.DescricaoIngles = "Teste upadte";
            tiposDeCargasDTO.Descricao = "Container 20''";

            actual = target.Alterar(tiposDeCargasDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para BuscarCodigo
        ///</summary>
        [TestMethod()]
        public void BuscarCodigoTest()
        {
            TipoDeCarga target = new TipoDeCarga(); 
            string Codigo = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            Codigo = "11";
            actual = target.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarDescricao
        ///</summary>
        [TestMethod()]
        public void BuscarDescricaoTest()
        {
            TipoDeCarga target = new TipoDeCarga(); 
            string Descricao = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            bool IdiomaPT = true; 
            DataTable actual;
            Descricao = "CAIXAS";
            actual = target.BuscarDescricao(Descricao, SomenteRegistrosAtivos, IdiomaPT);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            TipoDeCarga target = new TipoDeCarga(); 
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
            TipoDeCarga target = new TipoDeCarga();
            TipoDeCarga tiposDeCargasDTO = new TipoDeCarga();
            bool expected = true; 
            bool actual;
            tiposDeCargasDTO.Codigo = "22";
            tiposDeCargasDTO.Descricao = "teste inclusão";
            tiposDeCargasDTO.DescricaoIngles = "test";
            actual = target.Incluir(tiposDeCargasDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
