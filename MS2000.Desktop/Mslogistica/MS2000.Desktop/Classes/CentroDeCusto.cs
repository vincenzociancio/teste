using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class CentroDeCusto
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public CentroDeCusto()
        {
        }

        public CentroDeCusto(SqlDataReader reader)
        {
            Codigo = reader["Codigo"].ToString();
            Descricao = reader["Descricao"].ToString();
        }

        public List<CentroDeCusto> BuscarLista()
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT codigo, UPPER(descricao)as descricao ");
            strSql.Append("FROM Centros_Custos ");
            strSql.Append("ORDER BY descricao");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {                    
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<CentroDeCusto> listaCentroCustos = new List<CentroDeCusto>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaCentroCustos.Add(new CentroDeCusto(objDr));
                            }
                        }
                        return listaCentroCustos;
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
