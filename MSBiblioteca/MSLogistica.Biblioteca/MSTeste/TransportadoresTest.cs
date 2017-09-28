using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    
    
    /// <summary>
    ///Esta é uma classe de teste para TransportadoresTest e pretende
    ///conter todos os Testes de Unidade de TransportadoresTest
    ///</summary>
    [TestClass()]
    public class TransportadoresTest
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
            Transportador target = new Transportador(); 
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
            Transportador target = new Transportador(); 
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
            Transportador target = new Transportador(); 
            string RazaoSocial = string.Empty; 
            bool SomenteRegistrosAtivos = true; 
            DataTable actual;
            RazaoSocial = "LATIN AIR";
            actual = target.BuscarRazaoSocial(RazaoSocial, SomenteRegistrosAtivos);
            Assert.IsTrue(actual.Rows.Count > 0);
        }

        /// <summary>
        ///Um teste para Alterar
        ///</summary>
        [TestMethod()]
        public void AlterarTest()
        {
            Transportador target = new Transportador();
            Transportador transportadoresDTO = new Transportador();
            bool expected = true; 
            bool actual;
            transportadoresDTO.Codigo = "10";
            transportadoresDTO.RazaoSocial = "teste update sandro";
            transportadoresDTO.Pais = "tes";
            transportadoresDTO.CgcCpf = "teste";
            transportadoresDTO.Endereco = "teste";
            transportadoresDTO.Numero = "teste";
            transportadoresDTO.Complemento = "teste";
            transportadoresDTO.Bairro = "teste";
            transportadoresDTO.Cidade = "teste";
            transportadoresDTO.CEP = "teste";
            transportadoresDTO.UF = "te";
            transportadoresDTO.Estado = "teste";
            transportadoresDTO.InscricaoEstadual = "teste";
            actual = target.Alterar(transportadoresDTO);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Excluir
        ///</summary>
        [TestMethod()]
        public void ExcluirTest()
        {
            Transportador target = new Transportador(); 
            string Codigo = string.Empty; 
            bool expected = true; 
            bool actual;
            Codigo = "10";
            actual = target.Excluir(Codigo);
            Assert.AreEqual(expected, actual);
        }

        /// <summary>
        ///Um teste para Incluir
        ///</summary>
        [TestMethod()]
        public void IncluirTest()
        {
            Transportador target = new Transportador();
            Transportador transportadoresDTO = new Transportador();
            string expected = string.Empty; 
            string actual;
            expected = "618";

            transportadoresDTO.RazaoSocial = "Teste inclusão2";
            transportadoresDTO.Pais = "Tes";
            transportadoresDTO.CgcCpf = "Teste";
            transportadoresDTO.Endereco = "Teste";
            transportadoresDTO.Numero = "Teste";
            transportadoresDTO.Complemento = "Teste";
            transportadoresDTO.Bairro = "Teste";
            transportadoresDTO.Cidade = "Teste";
            transportadoresDTO.CEP = "Teste";
            transportadoresDTO.UF = "Te";
            transportadoresDTO.Estado = "Teste";
            transportadoresDTO.InscricaoEstadual = "Teste";

            actual = target.Incluir(transportadoresDTO);
            Assert.AreEqual(expected, actual);
        }
    }
}
