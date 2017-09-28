using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.IO;

namespace MSIndicadores
{
    enum Nota
    {
        Ruim = 1,
        Bom = 3,
        Excelente = 5
    }

    public class Satisfacao
    {       

        public int Nota { get; set; }
        public decimal Percentual { get; set; }


        public List<Satisfacao> selectNotas()
        {
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);
            using (SqlConnection con = new SqlConnection(sr.ReadLine()))
            {
                con.Open();
                string Query = "select " +
                                "Nota, " +
                                "CAST(COUNT(Nota)*100.00/(select COUNT(*) from [PesquisaSatisfacao.Respostas] where FK_Pesquisa = 4) AS decimal(10,2))AS 'Percentual' " +
                                "from [PesquisaSatisfacao.Respostas] " +
                                "where FK_Pesquisa = 4 " +
                                "group by Nota ";

                //string Query = "select 47.83 as Excelente, 41.85 as Bom , 9.42 as Ruim , 0.91 as nao_respondeu ";

                SqlCommand cmd = new SqlCommand(Query, con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                List<Satisfacao> lista = new List<Satisfacao>();
                while (dr.Read())
                {
                    lista.Add(new Satisfacao { 
                        Nota = Convert.ToInt16(dr["Nota"]),
                        Percentual = Convert.ToDecimal(dr["Percentual"])
                    });
              
                }            
                dr.Close();
                dr.Dispose();
                return lista;
            }
        }

        public decimal getNaoRespondeu()
        {
            StreamReader sr = new StreamReader(MSIndicadores.Properties.Settings.Default.Setting);
            using (SqlConnection con = new SqlConnection(sr.ReadLine()))
            {
                con.Open();
                string Query = "select " +
                "CAST(COUNT(*)*100.00/(select COUNT(*) from [PesquisaSatisfacao.ClientesPesquisas] where FK_Pesquisa = 4) AS decimal(10,2))AS 'Percentual' " +
                "from [PesquisaSatisfacao.ClientesPesquisas] " +
                "where FK_Pesquisa = 4 and Realizado is null " +
                "group by Realizado ";

                SqlCommand cmd = new SqlCommand(Query, con);
                SqlDataReader dr;
                decimal percentual = 0;
                dr = cmd.ExecuteReader();
                List<Satisfacao> lista = new List<Satisfacao>();
                while (dr.Read())
                {
                    percentual = Convert.ToDecimal(dr["Percentual"]);
                }
                dr.Close();
                dr.Dispose();
                return percentual;
            }
        }

    }
}