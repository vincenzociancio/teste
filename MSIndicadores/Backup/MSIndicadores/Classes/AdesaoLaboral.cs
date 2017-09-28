using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MSIndicadores
{
    public class AdesaoLaboral
    {
        public int Ano { get; set; }
        public Meses Mes { get; set; }
        public double Percentual { get; set; }

        public AdesaoLaboral()
        { 
        }

        public AdesaoLaboral(int ano, Meses mes, double percent)
        {
            Ano = ano;
            Mes = mes;
            Percentual = percent;
        }

        public static List<AdesaoLaboral> getPercentual()
        {
            List<AdesaoLaboral> lAdesao = new List<AdesaoLaboral>();
            string strQuery = "SELECT ANO, MES, TOTAL_PERCENTUAL FROM ADESAO_LABORAL WHERE ANO = YEAR(GETDATE()) ORDER BY MES";

            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(strQuery, cn);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                while(dr.Read())
                {
                    lAdesao.Add(new AdesaoLaboral((int)dr[0],
                                                  (Meses)dr[1],
                                                  (double)dr[2]));
                }
                dr.Close();
                dr.Dispose();
            }
            return lAdesao;
        }

    }
}