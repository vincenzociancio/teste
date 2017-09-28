using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class SubTipoDeDocumento
    {

        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public SubTipoDeDocumento()
        {
        }

        public SubTipoDeDocumento(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Descricao = reader["Descricao"].ToString();  
        }


        public List<SubTipoDeDocumento> GetSubTipoDocumento(string TipoDeDocumento)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Tipo_doc , codigo, Descricao , Descricao_Ingles ,Orgao FROM Sub_Tipo_Documentos where Tipo_doc = @Tipo_doc ORDER BY Descricao");            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Tipo_doc", TipoDeDocumento);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        List<SubTipoDeDocumento> listaDeclaracao = new List<SubTipoDeDocumento>();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                listaDeclaracao.Add(new SubTipoDeDocumento(dr));
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
