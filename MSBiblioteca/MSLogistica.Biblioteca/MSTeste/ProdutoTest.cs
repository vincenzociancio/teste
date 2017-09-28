using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using MSBiblioteca.DTO;

namespace MSTeste
{
    [TestClass]
    //será faltou declarar como publico
    public class ProdutoTest
    {
        [TestMethod]
        public void BuscarTests()
        {
            Produto target = new Produto();
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }
    }
}
