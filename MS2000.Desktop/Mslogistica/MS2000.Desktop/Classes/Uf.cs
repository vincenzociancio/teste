using System.Collections.Generic;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class Uf
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public List<Uf> getUf()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Codigo, Descricao FROM TAB_UF ORDER BY Descricao ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Uf> lista_uf = new List<Uf>();

                    while (reader.Read())
                    {
                        lista_uf.Add(new Uf(reader));
                    }

                    return lista_uf;
                }
            }
        }
    
        public Uf()
        {

        }

        public Uf(SqlDataReader reader)
        {
            this.Codigo    = reader["Codigo"].ToString();
            this.Descricao = reader["Descricao"].ToString();
        }            
    }      
}
