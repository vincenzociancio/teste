using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    class Importadores_Parametros
    {
        public Importadores_Parametros()
        {
        }

        public Importadores_Parametros(SqlDataReader reader)
        {
            this.id = (int)reader["id"];
            this.fk_importador = reader["fk_importador"].ToString();
            this.cobra_pagamento_armazenagem = (bool)reader["cobra_pagamento_armazenagem"];
            this.medicao_para_faturamento = (bool)reader["medicao_para_faturamento"];
            this.numerario_eta = (bool)reader["numerario_eta"];
            this.numerario_fatura = (bool)reader["numerario_fatura"];
            this.icms_documento_numerario = (bool)reader["icms_documento_numerario"];
            this.armazenagem_documento_numerario = (bool)reader["armazenagem_documento_numerario"];
            this.desconsolidacao_documento_numerario = (bool)reader["desconsolidacao_documento_numerario"];
            this.fk_coordenador = (reader["fk_coordenador"] == DBNull.Value) ? (int?)null : ((int)reader["fk_coordenador"]);
            this.fk_supervisor = (reader["fk_supervisor"] == DBNull.Value) ? (int?)null : ((int)reader["fk_supervisor"]);
            //    this.fk_analista_documental = (reader["fk_analista_documental"] == DBNull.Value) ? (int?)null : ((int)reader["fk_analista_documental"]);

        }

        #region Properts
        public int? id { get; set; }
        public string fk_importador { get; set; }
        public bool cobra_pagamento_armazenagem { get; set; }
        public bool medicao_para_faturamento { get; set; }
        public bool numerario_eta { get; set; }
        public bool numerario_fatura { get; set; }
        public bool icms_documento_numerario { get; set; }
        public bool armazenagem_documento_numerario { get; set; }
        public bool desconsolidacao_documento_numerario { get; set; }        
        public int? fk_coordenador { get; set; }
        public int? fk_supervisor { get; set; }
        public int? fk_analista_documental { get; set; }
        #endregion

        public void BuscarPorCodigo(string codigo_importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT " +
                           "       id, fk_importador, cobra_pagamento_armazenagem, medicao_para_faturamento, numerario_eta, numerario_fatura, icms_documento_numerario, armazenagem_documento_numerario, desconsolidacao_documento_numerario, fk_coordenador, fk_supervisor " +
                           "  FROM Importadores_Parametros        " +
                           " WHERE fk_importador = @fk_importador ";
            try
            {

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.Add("@fk_importador", codigo_importador);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                id = (int)reader["id"];
                                fk_importador = reader["fk_importador"].ToString();
                                cobra_pagamento_armazenagem = (bool)reader["cobra_pagamento_armazenagem"];
                                medicao_para_faturamento = (bool)reader["medicao_para_faturamento"];
                                numerario_fatura = (bool)reader["numerario_fatura"];
                                numerario_eta = (bool)reader["numerario_eta"];
                                icms_documento_numerario = (bool)reader["icms_documento_numerario"];
                                armazenagem_documento_numerario = (bool)reader["armazenagem_documento_numerario"];
                                desconsolidacao_documento_numerario = (bool)reader["desconsolidacao_documento_numerario"];
                                fk_coordenador = (reader["fk_coordenador"] == DBNull.Value) ? (int?)null : ((int)reader["fk_coordenador"]);
                                fk_supervisor = (reader["fk_supervisor"] == DBNull.Value) ? (int?)null : ((int)reader["fk_supervisor"]);
                                //  fk_analista_documental = (reader["fk_analista_documental"] == DBNull.Value) ? (int?)null : ((int)reader["fk_analista_documental"]);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public void UpdateParametros_Importador(string codigo_importador)
        {
            string query = "UPDATE Importadores_Parametros                                     " +
                           "   SET cobra_pagamento_armazenagem = @cobra_pagamento_armazenagem, " +
                           "       medicao_para_faturamento = @medicao_para_faturamento,       " +
                           "       numerario_eta = @numerario_eta,                             " +
                           "       numerario_fatura = @numerario_fatura,                                      " +
                           "       icms_documento_numerario = @icms_documento_numerario,                      " +
                           "       armazenagem_documento_numerario = @armazenagem_documento_numerario,        " +
                           "       desconsolidacao_documento_numerario = @desconsolidacao_documento_numerario," +
                           "       fk_coordenador = @fk_coordenador,                           " +
                           "       fk_supervisor = @fk_supervisor                              " +                
                           " WHERE fk_importador = @fk_importador                              ";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@fk_importador", codigo_importador);
                cmd.Parameters.AddWithValue("@cobra_pagamento_armazenagem", cobra_pagamento_armazenagem);
                cmd.Parameters.AddWithValue("@medicao_para_faturamento", medicao_para_faturamento);
                cmd.Parameters.AddWithValue("@numerario_eta", numerario_eta);
                cmd.Parameters.AddWithValue("@numerario_fatura", numerario_fatura);
                cmd.Parameters.AddWithValue("@icms_documento_numerario", icms_documento_numerario);
                cmd.Parameters.AddWithValue("@armazenagem_documento_numerario", armazenagem_documento_numerario);
                cmd.Parameters.AddWithValue("@desconsolidacao_documento_numerario", desconsolidacao_documento_numerario);
                cmd.Parameters.AddWithValue("@fk_coordenador", (fk_coordenador == null) ? (object)DBNull.Value : fk_coordenador);
                cmd.Parameters.AddWithValue("@fk_supervisor", (fk_supervisor == null) ? (object)DBNull.Value : fk_supervisor);
                //   cmd.Parameters.AddWithValue("@fk_analista_documental", (fk_analista_documental == null) ? (object)DBNull.Value : fk_analista_documental);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
