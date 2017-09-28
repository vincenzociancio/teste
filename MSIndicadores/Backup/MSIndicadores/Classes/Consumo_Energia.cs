using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MSIndicadores
{
    public class Consumo_Energia
    {
        private int _ano;
        private Meses _mes;
        private double _efetivo;        

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

        public double Efetivo
        {
            get { return _efetivo; }
            set { _efetivo = value; }
        }

        public Consumo_Energia()
        { }

        public Consumo_Energia(int ano, Meses mes, double efetivo)
        {
            _ano = ano;
            _mes = mes;
            _efetivo = efetivo;            
        }

        public static List<Consumo_Energia> getConsumo()
        {
            List<Consumo_Energia> lConsumo = new List<Consumo_Energia>();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSConn"].ConnectionString))
            {
                string sql = "SELECT ANO, MES, CAST((Conta_Lus_DG + Conta_Luz_CS)/Efetivo_Mensal AS DECIMAL(10,2)) AS 'Efetivo' FROM Consumo_Energia WHERE ANO = YEAR(GETDATE()) ORDER BY MES";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader dr = cmd.ExecuteReader();                

                while (dr.Read())
                {
                    lConsumo.Add(new Consumo_Energia(Convert.ToInt16(dr[0].ToString()),
                                        (Meses)dr[1],
                                        Convert.ToDouble(dr[2].ToString())));
                }
                dr.Close();
                dr.Dispose();
            }

            return lConsumo;
        }

    }
}