using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace MSIndicadores
{
    public class ApenC
    {
        public Meses Mes { get; set; }
        public Int32 Universo { get; set; }
        public Int32 OK { get; set; }
        public Int32 Erros { get; set; }

        /// <summary>
        /// Constructor Default
        /// </summary>
        public ApenC()
        {

        }

        /// <summary>
        /// Custom Builder
        /// </summary>
        /// <param name="mes">Mes do ano</param>
        /// <param name="universo">Total processado</param>
        /// <param name="ok">Total de processos ok</param>
        /// <param name="erros">Total de processos erros</param>
        public ApenC( Meses mes, Int32 universo, Int32 ok, Int32 erros)
        {
            Mes = mes;
            Universo = universo;
            OK = ok;
            Erros = erros;
        }

        public static List<ApenC> getApenC()
        {
            List<ApenC> lapc = new List<ApenC>();
            StringBuilder strQB = new StringBuilder();

            strQB.Append("SELECT ");
            strQB.Append("DATEPART(MONTH, DATA) AS 'MES', ");
            strQB.Append("SUM(TotProcGeral) AS 'UNIVERSO', ");            
            strQB.Append("SUM(TotOkGeral) AS 'OK', ");
            strQB.Append("SUM(TotErroGeral) AS 'ERROS' ");
            strQB.Append("FROM APEN_TEMP ");
            strQB.Append("WHERE YEAR(Data) = YEAR(GETDATE()) ");
            strQB.Append("GROUP BY DATEPART(MONTH, DATA) ");
            strQB.Append("ORDER BY DATEPART(MONTH, DATA)");
            
            using(SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(strQB.ToString(), cn);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    lapc.Add(new ApenC((Meses)dr[0],
                                       (Int32)dr[1],
                                       (Int32)dr[2],
                                       (Int32)dr[3]));
                }

                dr.Close();
                dr.Dispose();
            }

            return lapc;
        }
    }
}