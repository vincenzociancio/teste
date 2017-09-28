using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para ExportadoresTest e pretende
    ///conter todos os Testes de Unidade de ExportadoresTest
    ///</summary>
    [TestClass()]
    public class ExportadoresTest
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
            Exportador target = new Exportador(); 
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
            Exportador target = new Exportador(); 
            string Codigo = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            Codigo = "10";
            actual = target.BuscarCodigo(Codigo, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para BuscarRazaoSocial
        ///</summary>
        [TestMethod()]
        public void BuscarRazaoSocialTest()
        {
            Exportador target = new Exportador(); 
            string RazaoSocial = string.Empty; 
            bool SomenteRegistrosAtivos = true;
            RazaoSocial = "PGS";
            DataTable actual;
            actual = target.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            Exportador target = new Exportador();
            Exportador exportadoresDTO = new Exportador(); 
            bool expected = true; 
            bool actual;
            exportadoresDTO.Codigo = "1";
            exportadoresDTO.RazaoSocial = "teste";
            exportadoresDTO.Pais = "tes";
            exportadoresDTO.CgcCpf = "teste";
            exportadoresDTO.Endereco = "teste";
            exportadoresDTO.Numero = "teste";
            exportadoresDTO.Complemento = "teste";
            exportadoresDTO.Bairro = "teste";
            exportadoresDTO.Cidade = "teste";
            exportadoresDTO.CEP = "teste";
            exportadoresDTO.UF = "te";
            exportadoresDTO.Estado = "teste";
            exportadoresDTO.InscricaoEstadual = "teste";
            actual = target.Alterar(exportadoresDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            Exportador target = new Exportador(); 
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
            Exportador target = new Exportador();
            Exportador exportadoresDTO = new Exportador(); 
            string expected = ""; 
            string actual;
            exportadoresDTO.RazaoSocial = "Teste inclusão2";
            exportadoresDTO.Pais = "Tes";
            exportadoresDTO.CgcCpf = "Teste";
            exportadoresDTO.Endereco = "Teste";
            exportadoresDTO.Numero = "Teste";
            exportadoresDTO.Complemento = "Teste";
            exportadoresDTO.Bairro = "Teste";
            exportadoresDTO.Cidade = "Teste";
            exportadoresDTO.CEP = "Teste";
            exportadoresDTO.UF = "Te";
            exportadoresDTO.Estado = "Teste";
            exportadoresDTO.InscricaoEstadual = "Teste";
            actual = target.Incluir(exportadoresDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
