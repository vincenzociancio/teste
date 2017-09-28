using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class ProcessosTipoUrgencia
    {
        public ProcessosTipoUrgencia()
        {
        }

        public ProcessosTipoUrgencia(SqlDataReader reader)
        {            
            Sigla = reader["Sigla"].ToString();            
            Descricao = reader["Descricao"].ToString();
            PK_Tipo_Urgencia = (int)reader["PK_Tipo_Urgencia"];
            Excluido = (bool)reader["Excluido"];
        }

        public int PK_Tipo_Urgencia { get; set; }
        public string Sigla { get; set; }
        public string Descricao { get; set; }
        public bool Excluido { get; set; }

        public List<ProcessosTipoUrgencia> BuscarLista()
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT PK_Tipo_Urgencia, Sigla, Descricao, Excluido ");
            strSql.Append("FROM Processos_Tipo_Urgencia WHERE Excluido = 0 ");
            strSql.Append("ORDER BY PK_Tipo_Urgencia");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {   
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<ProcessosTipoUrgencia> listaUrgencia = new List<ProcessosTipoUrgencia>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaUrgencia.Add(new ProcessosTipoUrgencia(objDr));
                            }
                        }
                        return listaUrgencia;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }        
        }

    }
}
