using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.IO;

namespace MSIndicadores
{
    public class Follow_UP
    {
        public int QtdPendencia { get; set; }
        public DiaSemana Semana { get; set; }
        public int Mes { get; set; }
        public DateTime DataHora { get; set; }
        public int Universo { get; set; }

        public Follow_UP()
        { 

        }

        public Follow_UP(int qtdpendencia, DiaSemana semana, int mes, DateTime datahora, int universo)
        {
            QtdPendencia = qtdpendencia;
            Semana = semana;
            Mes = mes;
            DataHora = datahora;
            Universo = universo;
        }

        public static List<Follow_UP> getPendenciaSemanal()
        {
            // Instancie list
            List<Follow_UP> lfollow = new List<Follow_UP>();

            // Query string
            string query = "SELECT TOP 5 QTD_PENDENCIA, DATEPART(W, DATA_PENDENCIA) AS 'SEMANA', DATEPART(MONTH, DATA_PENDENCIA) AS 'MES', DATA_PENDENCIA, UNIVERSO " +
                           "FROM FollowUp_Indicador_Pendencia " +                           
                           "ORDER BY DATA_PENDENCIA DESC";
                           //"ORDER BY DATEPART(MONTH, DATA_PENDENCIA) DESC, DATEPART(W, DATA_PENDENCIA) ASC";
                           //"WHERE DATEPART(WEEK, DATA_PENDENCIA) = DATEPART(WEEK, GETDATE())";

            // Access dada base
            
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);
            using (SqlConnection cn = new SqlConnection(sr.ReadLine()))
            {
                SqlCommand cmd = new SqlCommand(query, cn);
                cn.Open();
                SqlDataReader dr;                
                dr = cmd.ExecuteReader();

                while(dr.Read())
                {
                    lfollow.Add(new Follow_UP((int)dr[0],
                                              (DiaSemana)dr[1],
                                              (int)dr[2],
                                              (DateTime)dr[3],
                                              (int)dr[4]));
                }
                dr.Close();
                dr.Dispose();
            }

            return lfollow;
        }
    }
}