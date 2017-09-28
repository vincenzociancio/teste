using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class ATAERO
    {
        public string FK_Processo { get; set; }
        public decimal? Valor { get; set; }
        public int? Aliquota { get; set; }
        public decimal? Icms { get; set; }
        public decimal? Fecp { get; set; }

        public ATAERO()
        {

        }

        public ATAERO(SqlDataReader reader)
        {
            FK_Processo = reader["Processo"].ToString();
            Valor = (reader["Valor"] == DBNull.Value) ? (decimal?)null : (Convert.ToDecimal(reader["Valor"]));
            Aliquota = (reader["Aliq"] == DBNull.Value) ? (int?)null : (Convert.ToInt16(reader["Aliq"]));
            Icms = (reader["Icms"] == DBNull.Value) ? (decimal?)null : (Convert.ToDecimal(reader["Icms"]));
            Fecp = (reader["Fecp"] == DBNull.Value) ? (decimal?)null : (Convert.ToDecimal(reader["Fecp"]));
        }

        public ATAERO getATAERO(string processo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Processo, Valor, Aliq, Icms, Fecp from Acresc_ATAereo where processo=@processo";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    ATAERO lista_ATAERO = null;

                    while (reader.Read())
                    {
                        lista_ATAERO = new ATAERO(reader);
                    }
                    return lista_ATAERO;
                }
            }
        }
    }
}
