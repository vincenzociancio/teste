using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class TipoDeDeclaracao
    {
        public TipoDeDeclaracao()
        {
        }

        public TipoDeDeclaracao(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Descricao = reader["Descricao"].ToString();
            Sigla = reader["Sigla"].ToString();     
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Sigla { get; set; }

        public List<TipoDeDeclaracao> BuscarLista()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT Codigo, Descricao, SIGLA FROM TAB_TIPO_DECLARACAO ORDER BY Descricao");            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        List<TipoDeDeclaracao> listaDeclaracao = new List<TipoDeDeclaracao>();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                listaDeclaracao.Add(new TipoDeDeclaracao(dr));
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
