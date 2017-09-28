using MSBiblioteca.BLL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using MSBiblioteca.DTO;
using System.Data;

namespace MSTeste
{
    [TestClass]
    public class SiscomexUnidadeMedidaTest1
    {
        [TestMethod]
        public void BuscarTest()
        {
            SiscomexUnidadeMedida target = new SiscomexUnidadeMedida();
            DataTable actual;
            actual = target.Buscar();
            Assert.IsTrue(actual.Rows.Count > 0);
        }
    }
}
