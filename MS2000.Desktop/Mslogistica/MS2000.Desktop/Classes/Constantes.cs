using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MS2000.Desktop.Classes
{
    public class Constantes
    {
        public static string Empresa
        {
            get { return "1"; }
        }

        public static string Filial
        {
            get { return "RJO"; }
        }

        public static string VerificarFaixa(string a)
        {
            string v, d;
            int n, f;

            v = a.Substring(3, 8);
            n = Convert.ToInt32(v);
            f = n / 10000;

            if ((n % 10000) != 0)
            {
                f = ++f;
            }       


            if (f >= 1 && f <= 9)
            {
                d = "000" + f.ToString() + "0000";
            }
            else if (f >= 10 && f <= 99)
            {
                d = "00" + f.ToString() + "0000";
            }
            else if (f >= 100 && f <= 999)
            {
                d = "0" + f.ToString() + "0000";
            }
            else
            {
                d = "" + f.ToString() + "0000";
            }          
            // string  DIR_IMG = PathContratodeProposta;

            //if (!Directory.Exists(PathContratodeProposta + d))
            //{
            // //   Directory.CreateDirectory(PathContratodeProposta + d);
            //}

            return d;
        }
    }
}
