using System;
using System.Globalization;

namespace MS2000.Desktop.Classes.NFe
{
    public static class Valor
    {
        public static decimal Arredondar(decimal valor, int casasDecimais)
        {
            var valorNovo = decimal.Round(valor, casasDecimais);
            var valorNovoStr = valorNovo.ToString("F" + casasDecimais, CultureInfo.CurrentCulture);           
            return decimal.Parse(valorNovoStr);
            //return Math.Round(valor, casasDecimais).ToString("F" + casasDecimais).Replace(',', '.');
        }

        public static decimal? Arredondar(decimal? valor, int casasDecimais)
        {
            if (valor == null) return null;
            return Arredondar(valor.Value, casasDecimais);
        }
    }
}
