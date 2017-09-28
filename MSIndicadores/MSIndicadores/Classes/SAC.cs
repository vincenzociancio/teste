using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace MSIndicadores
{
    public class SAC
    {
        public string Assunto { get; set; }
        public int Quantidade { get; set; }

        public SAC()
        {

        }

        public SAC(string assunto, int quantidade)
        {
            Assunto = assunto;
            Quantidade = quantidade;
        }

        public static List<SAC> getSAC()
        {            
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);          
            string strcon = sr.ReadLine();
            List<SAC> list = new List<SAC>();
            using(SqlConnection con = new SqlConnection(strcon))
            {                
                string query = "SELECT Assunto, COUNT(Assunto) AS 'QTD' FROM SAC " +
                    "WHERE YEAR(Data_Sac) = YEAR(GETDATE()) " +
                    "GROUP BY Assunto ORDER BY Assunto";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                
                while(dr.Read())
                {
                    list.Add( new SAC(dr[0].ToString(), Convert.ToInt16(dr[1].ToString())));
                }
                dr.Close();
                dr.Dispose();
            }

            return list;
        }
    }
}