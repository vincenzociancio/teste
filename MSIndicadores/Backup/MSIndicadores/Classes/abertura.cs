using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MSIndicadores
{
    public class abertura
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
        public abertura()
        {
            
        }

        public DataSet selectAnoAtual()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();
                string Query = "SELECT " +
                               "YEAR(Data) AS 'ANO', " +                               
                               "MES =  " +
                                "CASE MONTH(Data) " +
	                            "WHEN '1' THEN 'Janeiro'  " +
	                            "WHEN '2' THEN 'Fevereiro' " +
	                            "WHEN '3' THEN 'Março' " +
	                            "WHEN '4' THEN 'Abril' " +
	                            "WHEN '5' THEN 'Maio' " +
	                            "WHEN '6' THEN 'Junho' " +
	                            "WHEN '7' THEN 'Julho' " +
	                            "WHEN '8' THEN 'Agosto' " +
	                            "WHEN '9' THEN 'Setembro' " +
	                            "WHEN '10' THEN 'Outubro' " +
	                            "WHEN '11' THEN 'Novembro' " +
	                            "WHEN '12' THEN 'Dezembro' " +
                                "END, " +
                               "COUNT(Data) AS 'QTD' " +
                               "FROM " +
                               "Processos " +
                               "WHERE " +
                               "YEAR(Data) = YEAR(GETDATE()) AND [STATUS] <> '4' " +
                               "GROUP BY " +
                               "YEAR(Data), MONTH(Data) " +
                               "ORDER BY " +
                               "YEAR(Data), " +
                               "MONTH(Data)";                
                
                DataSet ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter(Query, con);                
                ad.Fill(ds);
                return ds;
                
            }
        }

        public DataSet selectAnoAnterior()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();
                string Query = "SELECT " +
                               "YEAR(Data) AS 'ANO', " +
                               "MES =  " +
                                "CASE MONTH(Data) " +
                                "WHEN '1' THEN 'Janeiro'  " +
                                "WHEN '2' THEN 'Fevereiro' " +
                                "WHEN '3' THEN 'Março' " +
                                "WHEN '4' THEN 'Abril' " +
                                "WHEN '5' THEN 'Maio' " +
                                "WHEN '6' THEN 'Junho' " +
                                "WHEN '7' THEN 'Julho' " +
                                "WHEN '8' THEN 'Agosto' " +
                                "WHEN '9' THEN 'Setembro' " +
                                "WHEN '10' THEN 'Outubro' " +
                                "WHEN '11' THEN 'Novembro' " +
                                "WHEN '12' THEN 'Dezembro' " +
                                "END, " +
                               "COUNT(Data) AS 'QTD' " +
                               "FROM " +
                               "Processos " +
                               "WHERE " +
                               "YEAR(Data) = YEAR(GETDATE())-1 AND [STATUS] <> '4' " +
                               "GROUP BY " +
                               "YEAR(Data), MONTH(Data) " +
                               "ORDER BY " +
                               "YEAR(Data), " +
                               "MONTH(Data)";

                DataSet ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter(Query, con);
                ad.Fill(ds);
                return ds;

            }
        }

    }
}