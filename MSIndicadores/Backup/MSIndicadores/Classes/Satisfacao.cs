using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;

namespace MSIndicadores
{
    public class Satisfacao
    {
        private int _nota;
        private int _quantidade;

        public int Nota
        {
            get { return _nota; }
            set { _nota = value; }
        }

        public int Quantidade
        {
            get { return _quantidade; }
            set { _quantidade = value; }
        }



        /// <summary>
        /// Construtor
        /// </summary>
        public Satisfacao()
        {

        }

        public Satisfacao(int nota, int quantidade)
        {
            this._nota = nota;
            this._quantidade = quantidade;
        }

        public void selectNotas(ref int[] arg)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                con.Open();
                string Query = "SELECT " +
                               "CAST(Alternativa AS INT) AS 'NOTAS', " +
                               "COUNT(Alternativa) AS 'QTD' " +
                               "FROM " +
                               " Satisfacao_Respostas " +
                               "GROUP BY " +
                               " Alternativa " +
                               "ORDER BY " +
                               "CAST(Alternativa AS INT)";

                SqlCommand cmd = new SqlCommand(Query, con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                int nota_1_3 = 0;
                int nota_4_6 = 0;
                int nota_m7 = 0;


                while (dr.Read())
                {
                    switch (Convert.ToInt16(dr[0].ToString()))
                    {
                        case 1:
                        case 2:
                        case 3:
                            {
                                nota_1_3 += Convert.ToInt16(dr[1].ToString());
                                break;
                            }
                        case 4:
                        case 5:
                        case 6:
                            {
                                nota_4_6 += Convert.ToInt16(dr[1].ToString());
                                break;
                            }
                        default:
                            nota_m7 += Convert.ToInt16(dr[1].ToString());
                            break;
                    }
                }

                arg[0] = nota_1_3;
                arg[1] = nota_4_6;
                arg[2] = nota_m7;

                dr.Close();
                dr.Dispose();

                //ArrayList li = new ArrayList();
                //li.Add(new
                //{
                //    Codigo = "01",
                //    Name = "Eduardo"
                //});
                //li.Add(new
                //{
                //    Codigo = "02",
                //    Name = "Maria"
                //});
                //li.Add(new
                //{
                //    Codigo = "03",
                //    Name = "João"
                //});
            }
        }
    }
}