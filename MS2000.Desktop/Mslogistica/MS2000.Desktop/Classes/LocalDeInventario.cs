using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class LocalDeInventario
    {
        public LocalDeInventario()
        {
        }

        public LocalDeInventario(SqlDataReader reader)
        {
            Local = reader["Local"].ToString();
            Descricao = reader["Descricao"].ToString();
            Contrato = reader["Contrato"].ToString();
            Tipo_local = reader["Tipo_local"].ToString();
            Importador = reader["Importador"].ToString();
            Processo_Adm = reader["Processo_Adm"].ToString();
            Ativo = (reader["Ativo"] == DBNull.Value ? (int?)null : (int?)reader["Ativo"]);
            Setor = (reader["Setor"] == null ? null : reader["Setor"].ToString());
        }

        public string Local { get; set; }
        public string Descricao { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Tipo_local { get; set; }
        public string Processo_Adm { get; set; }
        public string CNPJ { get; set; }
        public string Unidade_Jur { get; set; }
        public string Fiel_nome { get; set; }
        public string Fiel_cpf { get; set; }
        public string Sigla { get; set; }
        public int? Ativo { get; set; }
        public string Centro_Custo { get; set; }
        public string Codigo_Contabil { get; set; }
        public int? Acesso_RF_Angra { get; set; }
        public string Setor { get; set; }

        public List<LocalDeInventario> BuscarListaPorImportadorEContrato(string importador, string contrato)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" SELECT Local, Descricao, Contrato, Importador, Ativo, Setor, Tipo_local, Processo_Adm FROM Locais_Inventario ");
            strSql.Append("WHERE Importador = @Importador AND Contrato = @Contrato ");
            strSql.Append("ORDER BY Descricao");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", importador);
                    objCommand.Parameters.AddWithValue("@Contrato", contrato);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<LocalDeInventario> listaLocal = new List<LocalDeInventario>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaLocal.Add(new LocalDeInventario(objDr));
                            }
                        }
                        return listaLocal;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<LocalDeInventario> BuscarListaPorImportador(string importador)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(" SELECT Local, Descricao, Contrato, Importador, Tipo_Local FROM Locais_Inventario ");
            strSql.Append("WHERE Importador = @Importador ");
            strSql.Append("ORDER BY Descricao");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", importador);                    
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<LocalDeInventario> listaLocal = new List<LocalDeInventario>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaLocal.Add(new LocalDeInventario(objDr));
                            }
                        }
                        return listaLocal;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public LocalDeInventario BuscarLocalPorImportadorEContrato(string pk_importador, string contrato)
        {
            string query = " SELECT Local, Descricao, Contrato, Importador, Ativo, Setor, Tipo_Local, Processo_Adm FROM Locais_Inventario " +
                           "  WHERE Importador = @Importador AND Contrato = @Contrato ";                                                              

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", pk_importador);
                    cmd.Parameters.AddWithValue("@contrato", contrato);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        LocalDeInventario LocalDeInventario = null;

                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                LocalDeInventario = new LocalDeInventario(dr);
                            }
                        }

                        return LocalDeInventario;
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
