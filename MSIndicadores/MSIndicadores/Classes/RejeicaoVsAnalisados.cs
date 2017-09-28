using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace MSIndicadores
{
    public class RejeicaoVsAnalisados
    {
        //private Meses _mes;
        private string _mes;
        private double _percentual;

        public string Mes
        {
            get { return _mes; }
            set { _mes = value; }
        }

        public double Percentual
        {
            get { return _percentual; }
            set { _percentual = value; }
        }


        //public List<RejeicaoVsAnalisados> GetPercentualChegados()
        //{
        //    List<RejeicaoVsAnalisados> lista = new List<RejeicaoVsAnalisados>();

        //    DataTable chegados = selectFollowUpChecadosAnoAtual();

        //    DataTable rejeitados = selectProcessosRejeitadosAnoAtual();

        //    foreach (DataRow row in chegados.Rows)
        //    {
        //        double Universo = 0;
        //        double Feitos = 0;
        //        double percentual = 0;
        //        DataRow[] dr;

        //        dr = rejeitados.Select("MES = '" + row["MES"] + "'");

        //        if (dr.Count() > 0)
        //        {
        //            Feitos = Convert.ToInt16(dr[0][2]);

        //            Universo = Convert.ToInt16(row["QTD"].ToString());

        //            percentual = Math.Round(Feitos / (Universo / 100.00), 2);
        //        }

        //        lista.Add(new RejeicaoVsAnalisados {
        //            Mes = row["MES"].ToString(),
        //            Percentual  = percentual});
        //    }
        //    return lista;
        //}

        //protected DataTable selectProcessosRejeitadosAnoAtual()
        //{
        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
        //    {
        //        con.Open();
        //        string Query = "SELECT " +
        //                       "YEAR(Data) AS 'ANO', " +
        //                       "MES =  " +
        //                        "CASE MONTH(Data) " +
        //                        "WHEN '1' THEN 'Janeiro'  " +
        //                        "WHEN '2' THEN 'Fevereiro' " +
        //                        "WHEN '3' THEN 'Março' " +
        //                        "WHEN '4' THEN 'Abril' " +
        //                        "WHEN '5' THEN 'Maio' " +
        //                        "WHEN '6' THEN 'Junho' " +
        //                        "WHEN '7' THEN 'Julho' " +
        //                        "WHEN '8' THEN 'Agosto' " +
        //                        "WHEN '9' THEN 'Setembro' " +
        //                        "WHEN '10' THEN 'Outubro' " +
        //                        "WHEN '11' THEN 'Novembro' " +
        //                        "WHEN '12' THEN 'Dezembro' " +
        //                        "END, " +
        //                       "COUNT(Data) AS 'QTD' " +
        //                       "FROM " +
        //                       "FollowUp_Check " +
        //                       "WHERE " +
        //                       "YEAR(Data) = YEAR(GETDATE()) AND Aceite = '1' " +
        //                       "GROUP BY " +
        //                       "YEAR(Data), MONTH(Data) " +
        //                       "ORDER BY " +
        //                       "YEAR(Data), " +
        //                       "MONTH(Data)";

        //        DataTable dt = new DataTable();
        //        using (SqlCommand cmd = new SqlCommand(Query, con))
        //        {
        //            using (SqlDataReader dr = cmd.ExecuteReader())
        //            {
        //                if (dr.HasRows)
        //                {                            
        //                    dt.Load(dr);                         
        //                }
        //            }
        //        }
        //        return dt;
        //    }
        //}


        //protected DataTable selectFollowUpChecadosAnoAtual()
        //{
        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
        //    {
        //        con.Open();
        //        string Query = "SELECT " +
        //                       "YEAR(Data) AS 'ANO', " +
        //                       "MES =  " +
        //                        "CASE MONTH(Data) " +
        //                        "WHEN '1' THEN 'Janeiro'  " +
        //                        "WHEN '2' THEN 'Fevereiro' " +
        //                        "WHEN '3' THEN 'Março' " +
        //                        "WHEN '4' THEN 'Abril' " +
        //                        "WHEN '5' THEN 'Maio' " +
        //                        "WHEN '6' THEN 'Junho' " +
        //                        "WHEN '7' THEN 'Julho' " +
        //                        "WHEN '8' THEN 'Agosto' " +
        //                        "WHEN '9' THEN 'Setembro' " +
        //                        "WHEN '10' THEN 'Outubro' " +
        //                        "WHEN '11' THEN 'Novembro' " +
        //                        "WHEN '12' THEN 'Dezembro' " +
        //                        "END, " +
        //                       "COUNT(Data) AS 'QTD' " +
        //                       "FROM " +
        //                       "FollowUp_Check " +
        //                       "WHERE " +
        //                       "YEAR(Data) = YEAR(GETDATE()) " +
        //                       "GROUP BY " +
        //                       "YEAR(Data), MONTH(Data) " +
        //                       "ORDER BY " +
        //                       "YEAR(Data), " +
        //                       "MONTH(Data)";

        //        DataTable dt = new DataTable();
        //        using (SqlCommand cmd = new SqlCommand(Query, con))
        //        {
        //            using (SqlDataReader dr = cmd.ExecuteReader())
        //            {
        //                if (dr.HasRows)
        //                {                            
        //                    dt.Load(dr);                           
        //                }
        //            }
        //        }
        //        return dt;
        //    }
        //}


        public DataTable getDadosGraficoRejeicao()
        {
            
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);
            using (SqlConnection con = new SqlConnection(sr.ReadLine()))
            {
                con.Open();
                string Query = "SELECT ANO, MES, ABERTOS, ACEITE, REJEITADO "+
                                ",PERCENTE_REJEITADO_ANALISADO,PERCENTE_REJEITADO_ABERTOS "+
                                "FROM vIndicadorRejeicao ORDER BY NMES";  

                DataTable dt = new DataTable();
                using (SqlCommand cmd = new SqlCommand(Query, con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dt.Load(dr);
                        }
                    }
                }
                return dt;
            }
        }

    }
}