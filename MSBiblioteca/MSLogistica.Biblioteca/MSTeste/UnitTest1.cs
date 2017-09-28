using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MSBiblioteca.BLL;
using System.Collections.Generic;
using MSBiblioteca.BLL.SeadrillExportacao;

namespace MSTeste
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod()]
        public void AlterarTest()
        {
            //Cabecalho exp = new Cabecalho();

            //IList<Cabecalho> exp2 = new List<Cabecalho>();

            //exp2 = exp.ObterCabecalho("00119/10", 3);
            
            //Linha l = new Linha();

            //List<Linha> lin = new List<Linha>();

            //lin = l.ObterLinhas("00119/10");

            //var ex = new ExportacaoSeadrill("10547/12");//("00152/12");//
            //string[] rt = ex.ToString().Split(';');
            //string x = "a";
           // Assert.AreEqual(exp2 != null, exp2);

            //var proc = new Processo();

            //var lista = proc.BuscarPorDataDesembaraco("01/2012", "11", "01", "D");

            //var con = lista[0].Conhecimento.Data_Chegada_URF_Cheg;

            Cabecalho exp = new Cabecalho();

            //IList<Cabecalho> exp2 = new List<Cabecalho>();

            //exp2 = exp.ObterCabecalho("15414/12");

            //Linha l = new Linha();

            //List<Linha> lin = new List<Linha>();

            //lin = l.ObterLinhas("15414/12");


            EnscoGrafico teste = new EnscoGrafico();

            teste.BuscarDados("07/2013");
           
                

         
        }

    }
}
