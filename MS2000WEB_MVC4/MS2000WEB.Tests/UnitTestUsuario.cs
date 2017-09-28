using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MS2000WEB.Models.Repository;
using MS2000WEB.Models;
using System.Data.Entity;
using System.Globalization;

namespace MS2000.MVC4.Tests
{
    [TestClass]
    public class UnitTestUsuario
    {

        public static void CallTryParse(string stringToConvert, NumberStyles styles)
        {
            decimal number;
            CultureInfo provider;

            // If currency symbol is allowed, use en-US culture. 
            if ((styles & NumberStyles.AllowCurrencySymbol) > 0)
                provider = new CultureInfo("en-US");
            else
                provider = CultureInfo.InvariantCulture;

            bool result = decimal.TryParse(stringToConvert, styles,
                                         provider, out number);
            if (result)
                Console.WriteLine("Converted '{0}' to {1}.", stringToConvert, number);
            else
                Console.WriteLine("Attempted conversion of '{0}' failed.",
                                  Convert.ToString(stringToConvert));
        }


        public string HexToDoubleStr(string str)
        {
            if (str.Contains("E") && !string.IsNullOrEmpty(str))
            {
                double value;
                double.TryParse(str, out value);
                double valorAcertado = value / Math.Pow(10, 12);
                return string.Format("{0:N2}", valorAcertado);
            }
            return str;
        }

        [TestMethod]
        public void Test_Validar_UsuarioRepository()
        {

            string text = "7,383882E+16";
            float value;
            float.TryParse("7,383882E+16", out value);
            //double retorno = Math.Round(7.383882E+16);

            String valorExcel = "7,83882E+16";
            double valor = Double.Parse(valorExcel);
            //double precisao = 100000000000;
            //double valorAcertado = Math.Truncate(valor) / precisao;


            string valorAcertado = HexToDoubleStr("7,383882E+16");//7.383882E+16 / Math.Pow(10, 12);

            double valorAcertado2 = 2.21592E+16 / Math.Pow(10, 12);

            string retorno = valorAcertado.ToString();
        }
    }
}
