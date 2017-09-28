using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MSTeste
{
    [TestClass]
    public class Menu
    {
        [TestMethod]
        public void TestMethod1()
        {
            MSBiblioteca.BLL.Menu target = new MSBiblioteca.BLL.Menu();
            string form;
            form = target.BuscarWebForm("frmCAE.aspx");
            Assert.IsTrue(!string.IsNullOrEmpty(form));
        }
    }
}
