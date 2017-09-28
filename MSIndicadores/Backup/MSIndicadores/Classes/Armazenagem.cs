using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MSIndicadores
{
    public class Armazenagem
    {
        public static List<Mes> SimPrimeiraArmazenagem = new List<Mes>();
        public static List<Mes> NaoPrimeiraArmazenagem = new List<Mes>();

        string Codigo_Despacho { get; set; }
        DateTime Data_Chegada { get; set; }
        DateTime Data_Liberacao { get; set; }
        string TipoManifesto { get; set; }

        public Armazenagem()
        {
        }

        public Armazenagem(string codigo_despacho, DateTime data_chegada, DateTime data_liberacao, string tipo_manifesto)
        {
            Codigo_Despacho = codigo_despacho;
            Data_Chegada = data_chegada;
            Data_Liberacao = data_liberacao;
            TipoManifesto = tipo_manifesto;
        }

        public static List<Armazenagem> SelectAllProcessos()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();

                string strquery = "SELECT c.URF_Despacho, c.Data_Chegada_URF_Cheg, p.Data_Liberacao, c.Tipomanifesto " +
                                "FROM Conhecimento_Processo c " +
                                "inner join Processos p on  p.Codigo = c.Processo " +
                                "WHERE p.Data_Liberacao like '%'+CAST(YEAR(GETDATE()) AS VARCHAR(4))+'%' AND " +
                                "c.URF_Despacho IS NOT NULL AND c.Data_Chegada_URF_Cheg IS NOT NULL";

                SqlCommand cmd = new SqlCommand(strquery, con);

                SqlDataReader dr = cmd.ExecuteReader();
                cmd.Dispose();

                List<Armazenagem> lArmazenagem = new List<Armazenagem>();

                while (dr.Read())
                {
                    lArmazenagem.Add(new Armazenagem(dr[0].ToString(),
                                                     (DateTime)dr[1],
                                                     (DateTime)dr[2],
                                                     dr[3].ToString()));
                }

                dr.Close();
                dr.Dispose();

                return lArmazenagem;
            }
        }

        public static void CalcularArmazenagem()
        {
            List<Armazenagem> list = new List<Armazenagem>(SelectAllProcessos());
            SimPrimeiraArmazenagem.Clear();
            NaoPrimeiraArmazenagem.Clear();

            foreach (Armazenagem lc in list)
            {
                switch (lc.Codigo_Despacho)
                {
                    // Aeroporto int. Rio de Janeiro
                    // 5 dias úteis
                    case "0717700":
                        {
                            if (util.GetDiffDaysUseful(lc.Data_Chegada, lc.Data_Liberacao) <= 5)
                            {
                                // sim
                                SimPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                            else
                            {
                                // Não
                                NaoPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                        }
                        break;
                    // Niterói
                    // 10 dias corridos
                    case "0710200":
                        {
                            if (util.GetDiffDays(lc.Data_Chegada, lc.Data_Liberacao) <= 10)
                            {
                                // sim
                                SimPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                            else
                            {
                                // Não
                                NaoPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                        }
                        break;
                    // Porto do Rio de Janeiro
                    // DI = 10 dias corridos
                    // DTA = 7 dias corridos
                    case "0717600":
                        {
                            if (lc.TipoManifesto == "3")
                            {
                                if (util.GetDiffDays(lc.Data_Chegada, lc.Data_Liberacao) <= 7)
                                {
                                    // sim
                                    SimPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                                }
                                else
                                {
                                    // Não
                                    NaoPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                                }
                            }
                            else
                            {
                                if (util.GetDiffDays(lc.Data_Chegada, lc.Data_Liberacao) <= 10)
                                {
                                    // sim
                                    SimPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                                }
                                else
                                {
                                    // Não
                                    NaoPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                                }
                            }
                        }
                        break;
                    default:
                        {
                            if (util.GetDiffDays(lc.Data_Chegada, lc.Data_Liberacao) <= 10)
                            {
                                // sim
                                SimPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                            else
                            {
                                // Não
                                NaoPrimeiraArmazenagem.Add(new Mes((Meses)lc.Data_Liberacao.Month));
                            }
                        }
                        break;

                }
            }
        }

        //public static int SimPrimeiraArmazenagem;
        //public static int NaoPrimeiraArmazenagem;

        public class Mes
        {
            public Meses descricao { get; set; }
            //public int total { get; set; }

            public Mes(Meses desc)
            {
                descricao = desc;
                //total = tot;
            }
        }

    }
}