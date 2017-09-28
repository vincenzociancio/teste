using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MSIndicadores
{
    public class checkin
    {
        private string _ano;
        private Meses _mes;
        private int _quantidade;

        public string Ano
        {
            get { return _ano; }
            set { _ano = value; }
        }

        public Meses Mes
        {
            get { return _mes; }
            set { _mes = value; }
        }

        public int Quantidade
        {
            get { return _quantidade; }
            set { _quantidade = value; }
        }

        /// <summary>
        /// Construtor
        /// </summary>
        public checkin()
        {
            
        }

        public DataSet selectUniverso()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();
                string Query = "SELECT " +
                               "MONTH(Data) AS 'MES', " +
                               "COUNT(DISTINCT(Semana)) AS 'QTD_SEMANA', " +
                               "SUM(Total_Processos)/COUNT(DISTINCT(Semana)) AS 'QTD_PROCESSO' " +
                               "FROM " +
                               " FollowUp_Check_Universo " +
                               "WHERE " +
                               " Ano = YEAR(GETDATE()) " +
                               "GROUP BY " +
                               " MONTH(Data)";                
                DataSet ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter(Query, con);                
                ad.Fill(ds);                
                return ds;                
            }
        }


        public DataSet selectFeitos()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();
                string Query = "SELECT " +
                               "MONTH(Data) AS 'MES', " +
                               "COUNT(*)/COUNT(DISTINCT(Semana)) AS 'QTD_PROCESSO' " +
                               "FROM " +
                               "FollowUp_Check " +
                               "WHERE " +
                               "Ano = YEAR(GETDATE()) " +
                               "GROUP BY " +
                               "MONTH(Data) " +
                               "ORDER BY  MONTH(Data) ";
                DataSet ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter(Query, con);
                ad.Fill(ds);
                return ds;

            }
        }

    }
}