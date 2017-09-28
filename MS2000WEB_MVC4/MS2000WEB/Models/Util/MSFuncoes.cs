using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace MSBiblioteca.MSUtil
{
    public class MSFuncoes
    {
        /// <summary>
        /// Retorna o nome da página
        /// </summary>
        /// <returns>Nome da página</returns>
        public static string ObterNomePagina(Page page)
        {
            string sPath = page.Request.Url.AbsolutePath;
            string[] strarry = sPath.Split('/');
            int lengh = strarry.Length;
            string sRet = strarry[lengh - 1];
            return sRet;
        }

        public static bool ValidaEmail(string email)
        {
            Regex regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
            Match match = regex.Match(email.Trim());

            if (match.Success)
                return true;
            else
                return false;
        }

        public static int MonthDiff(DateTime d1, DateTime d2)
        {

            return (d2.Month - d1.Month) + (12 * (d2.Year - d1.Year));
        }
    }

    public static class Datas
    {
        /// <summary>
        /// Converte uma string de data(ddmmyyyy) para DataTime
        /// </summary>
        /// <param name="valor">String(ex: ddmmyyyy)</param>
        /// <returns>Datetime</returns>
        public static DateTime strToDate(this string valor)
        {
            var aux = new DateTime(Convert.ToInt16(valor.Substring(4, 4)), Convert.ToInt16(valor.Substring(2, 2)), Convert.ToInt16(valor.Substring(0, 2)));
            return aux;
        }
    }

    public static class Calc
    {
        public static string CasasDecimais(this decimal valor, int casas)
        {
            return Math.Round(valor, casas).ToString("F" + casas).Replace(',', '.');

            //string x = string.Empty;
            //string y = string.Empty;
            //var formato = string.Format(",{0}.{1}", x.PadLeft(casas, '#'), y.PadLeft(casas, '0'));
            //return valor.ToString(formato).Replace(',', '.');
        }

        public static string CasasDecimais(this double valor, int casas)
        {
            return Math.Round(valor, casas).ToString("F" + casas).Replace(',', '.');
        }

        public static decimal ItemConverteValorUnitario(this decimal valorUnitario, decimal acrescimo, decimal taxaConversao)
        {
            return ((valorUnitario + acrescimo) * taxaConversao);
        }

        public static decimal ItemConverteValorTotal(this decimal valorTotal, decimal acrescimo, decimal taxaConversao)
        {
            return ((valorTotal + acrescimo) * taxaConversao);
        }

        public static decimal ItemConverteRateioFretePrepaid(this decimal valor, decimal quantidadeItem, decimal taxaConversao)
        {
            return ((valor * quantidadeItem) * taxaConversao);
        }

        public static decimal ItemConverteValorII(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

        public static decimal ItemConverteValorIPI(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

        public static decimal ItemConverteBaseIPI(this decimal valor, decimal valorII, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return valor + ((valorII / valorfob) * (valorVMLE * taxaConversao));
        }

        public static decimal ItemConverteBasePIS(this decimal valor, object obj)
        {
            var type = obj.GetType();
            var list = type.GetProperties(BindingFlags.Instance | BindingFlags.Public);

            var aliquotaIcms = (decimal)type.GetProperty("aliq_icms").GetValue(obj, null);
            var aliquotaIcmsExtra = (decimal)type.GetProperty("aliq_icms_extra").GetValue(obj, null);
            var aliquotaIpi = (decimal)type.GetProperty("Aliq_NCM_IPI").GetValue(obj, null);
            var aliquotaIi = (decimal)type.GetProperty("Aliq_NCM_II").GetValue(obj, null);
            var aliquotaPis = (decimal)type.GetProperty("aliq_pis_pasep").GetValue(obj, null);
            var aliquotaCofins = (decimal)type.GetProperty("aliq_cofins").GetValue(obj, null);

            //transformando em porcentagem
            aliquotaIcms = (aliquotaIcms + aliquotaIcmsExtra) / 100;
            aliquotaIpi = aliquotaIpi / 100;
            aliquotaIi = aliquotaIi / 100;
            aliquotaPis = aliquotaPis / 100;
            aliquotaCofins = aliquotaCofins / 100;

            var aux1 = (1 + (aliquotaIcms) * (aliquotaIi + aliquotaIpi * (1 + aliquotaIi)));
            var aux2 = (1 - aliquotaPis - aliquotaCofins) * (1 - aliquotaIcms);
            var aux3 = (aux1 / aux2);

            return valor * aux3;
        }

        public static decimal ItemConverteValorPIS(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

        public static decimal ItemConverteValorCofins(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

        public static decimal ItemConverteValorFecp(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

    }

    public enum Meses
    {
        Janeiro = 1,
        Fevereiro = 2,
        Março = 3,
        Abril = 4,
        Maio = 5,
        Junho = 6,
        Julho = 7,
        Agosto = 8,
        Setembro = 9,
        Outubro = 10,
        Novembro = 11,
        Dezembro = 12,
        [DescriptionAttribute("Décimo Terceiro")]
        DecimoTerceiro = 13,
    }

    public enum Tributos
    {
        DARF = 1,
        DARJ = 2,
        DARM = 3,
        GCSU = 4,
        GFIP = 5,
        GPS = 6,
        GRF = 7,
        GRRF = 8,
        ICMS = 9,
    }

    public enum Periodicidade
    {
        Diário = 1,
        Semanal = 2,
        Quinzenal = 3,
        Mensal = 4,
        Bimestral = 5,
        Trimestral = 6,
        Semestral = 7,
        Anual = 8,
    }

    public static class ExchangeUtil
    {
        const string CidPattern = "cid:";
        public static HashSet<int> BuildCidIndex(string html)
        {
            var index = new HashSet<int>();
            var pos = html.IndexOf(CidPattern, 0);
            while (pos > 0)
            {
                var start = pos + CidPattern.Length;
                index.Add(start);
                pos = html.IndexOf(CidPattern, start);
            }
            return index;
        }

        public static void AdjustIndex(HashSet<int> index, int oldPos, int byHowMuch)
        {
            var oldIndex = new List<int>(index);
            index.Clear();
            foreach (var pos in oldIndex)
            {
                if (pos < oldPos)
                    index.Add(pos);
                else
                    index.Add(pos + byHowMuch);
            }
        }

        public static bool ReplaceCid(HashSet<int> index, ref string html, string cid, string path)
        {
            var posToRemove = -1;
            foreach (var pos in index)
            {
                if (pos + cid.Length < html.Length && html.Substring(pos, cid.Length) == cid)
                {
                    var sb = new StringBuilder();
                    sb.Append(html.Substring(0, pos - CidPattern.Length));
                    sb.Append(path);
                    sb.Append(html.Substring(pos + cid.Length));
                    html = sb.ToString();

                    posToRemove = pos;
                    break;
                }
            }

            if (posToRemove < 0)
                return false;

            index.Remove(posToRemove);
            AdjustIndex(index, posToRemove, path.Length - (CidPattern.Length + cid.Length));

            return true;
        }
    }
}
