using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MSIndicadores
{
    public class Turnover
    {
        private int _ano;
        private Meses _mes;
        private int _contratado;
        private int _dispensado;        

        public int Ano 
        {
            get { return _ano; }
            set { _ano = value; }
        }

        public Meses Mes
        {
            get { return _mes; }
            set { _mes = value; }
        }

        public int Contratado
        {
            get { return _contratado; }
            set { _contratado = value; }
        }

        public int Dispensado
        {
            get { return _dispensado; }
            set { _dispensado = value; }
        }

        public Turnover()
        { }

        public Turnover(int ano, Meses mes, int contratado, int dispensado)
        {
            _ano = ano;
            _mes = mes;
            _contratado = contratado;
            _dispensado = dispensado;
        }

        public static List<Turnover> getTurnover()
        {
            List<Turnover> lh = new List<Turnover>();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                string sql = "SELECT ANO, MES, Contratado, Dispensado FROM Rotatividade_Funcionario WHERE ANO = YEAR(GETDATE()) ORDER BY MES";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();                

                while (dr.Read())
                {
                    lh.Add(new Turnover(Convert.ToInt16(dr[0].ToString()), 
                                        (Meses)dr[1],
                                        Convert.ToInt16(dr[2].ToString()),
                                        Convert.ToInt16(dr[3].ToString())));
                }
                dr.Close();
                dr.Dispose();
            }
            
            return lh;
        }

    }
}