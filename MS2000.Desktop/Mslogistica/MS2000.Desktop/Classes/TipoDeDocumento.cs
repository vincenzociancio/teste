using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class TipoDeDocumento
    {

        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public TipoDeDocumento()
        {
        }

        public TipoDeDocumento(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Descricao = reader["Descricao"].ToString();  
        }


        public List<TipoDeDocumento> GetTipoDocumento()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao FROM Tipo_Documentos ORDER BY Descricao");            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        List<TipoDeDocumento> listaDeclaracao = new List<TipoDeDocumento>();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                listaDeclaracao.Add(new TipoDeDocumento(dr));
                            }
                        }
                        return listaDeclaracao;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
