using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MSIndicadores
{
    public class HoraExtra
    {
        private int _ano;
        private Meses _mes;
        private double _horas;

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

        public double Horas
        {
            get { return _horas; }
            set { _horas = value; }
        }

        public HoraExtra()
        { }

        public HoraExtra(int ano, Meses mes, double hora)
        {
            _ano = ano;
            _mes = mes;
            _horas = hora;
        }

        public static List<HoraExtra> getHoraExtra()
        {
            List<HoraExtra> lh = new List<HoraExtra>();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                string sql = "SELECT ANO, MES, TOTAL_HORAS FROM HORA_EXTRA WHERE ANO = YEAR(GETDATE()) ORDER BY MES";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();                

                while (dr.Read())
                {
                    lh.Add(new HoraExtra(Convert.ToInt16(dr[0].ToString()), (Meses)dr[1], Convert.ToDouble(dr[2].ToString())));
                }
                dr.Close();
                dr.Dispose();
            }
            
            return lh;
        }

    }
}