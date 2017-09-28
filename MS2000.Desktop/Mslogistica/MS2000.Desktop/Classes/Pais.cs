using System.Collections.Generic;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class Pais
    {
        public string Codigo    { get; set; }
        public string Descricao { get; set; }

        public List<Pais> getPais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Codigo, Descricao FROM TAB_PAIS ORDER BY Descricao ";                           

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {                    
                    List<Pais> lista_pais = new List<Pais>();

                    while (reader.Read())
                    {
                        lista_pais.Add(new Pais(reader));                        
                    }

                    return lista_pais;
                }
            }
        }

        public Pais()
        {

        }

        public Pais(SqlDataReader reader)
        {
            this.Codigo    = reader["Codigo"].ToString();
            this.Descricao = reader["Descricao"].ToString();            
        }
    }
}
