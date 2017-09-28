using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class ContratoDeAdmissaoTemporaria
    {
        public ContratoDeAdmissaoTemporaria()
        {

        }

        public ContratoDeAdmissaoTemporaria(SqlDataReader reader)
        {            
            Contrato = reader["Contrato"].ToString();
            Descricao = (reader["Descricao"] == null ? null : reader["Descricao"].ToString());
            Importador = reader["Importador"].ToString();
            Vigencia_inicial = (reader["Vigencia_inicial"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["Vigencia_inicial"]);
            Vigencia_final = (reader["Vigencia_final"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["Vigencia_final"]);
            Data_Baixa = (reader["Data_Baixa"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["Data_Baixa"]);
            Data_prorrogacao = (reader["Data_prorrogacao"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["Data_prorrogacao"]);
            Tipo = reader["Tipo"].ToString();
            Repetro = (reader["Repetro"] == DBNull.Value ? (int?)null : (int?)reader["Repetro"]);
            Ativo = (reader["Ativo"] == DBNull.Value ? (int?)null : (int?)reader["Ativo"]);
            INs = (reader["INs"] == null ? null : reader["INs"].ToString());
            Setor = (reader["Setor"] == null ? null : reader["Setor"].ToString());
            Identificacao = (int)reader["Identificacao"];
            Valor_Icms = (reader["Valor_Icms"] == DBNull.Value ? (double?)null : (double?)reader["Valor_Icms"]);
            SemContrato = (bool)reader["SemContrato"];
        }

        public string Contrato { get; set; }
        public string Descricao { get; set; }
        public string Importador { get; set; }
        public DateTime? Vigencia_inicial { get; set; }
        public DateTime? Vigencia_final { get; set; }
        public string Tipo { get; set; }
        public DateTime? Data_Baixa { get; set; }
        public DateTime? Data_prorrogacao { get; set; }
        public int? Repetro { get; set; }
        public int? Ativo { get; set; }
        //public string Cod_Regime_Fundamento { get; set; }
        public string INs { get; set; }
        public string Setor { get; set; }
        public int Identificacao { get; set; }
        public double? Valor_Icms { get; set; }
        public bool SemContrato { get; set; }

        public List<ContratoDeAdmissaoTemporaria> BuscarListaPorImportador(string pk_importador)
        {
            string query = "SELECT Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa," +
                     "Data_prorrogacao, Repetro, Ativo, INs, Setor, Identificacao, Valor_Icms, Importador, SemContrato FROM Contratos " +
                     "Where Importador = @Importador";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", pk_importador);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<ContratoDeAdmissaoTemporaria> listaContrato = new List<ContratoDeAdmissaoTemporaria>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaContrato.Add(new ContratoDeAdmissaoTemporaria(objDr));
                            }
                        }
                        return listaContrato;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<ContratoDeAdmissaoTemporaria> BuscarListaPorImportador(string pk_importador, bool ativos)
        {
            string query = "SELECT Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa," +
                     "Data_prorrogacao, Repetro, Ativo, INs, Setor, Identificacao, Valor_Icms, Importador,SemContrato FROM Contratos " +
                     "Where Importador = @Importador and ativo =@ativo";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", pk_importador);
                    objCommand.Parameters.AddWithValue("@ativo", Convert.ToInt16(ativos));
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<ContratoDeAdmissaoTemporaria> listaContrato = new List<ContratoDeAdmissaoTemporaria>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaContrato.Add(new ContratoDeAdmissaoTemporaria(objDr));
                            }
                        }
                        return listaContrato;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<ContratoDeAdmissaoTemporaria> BuscarListaPorImportadorContrato(string pk_importador, string contrato)
        {
            string query = "SELECT Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa," +
                     "Data_prorrogacao, Repetro, Ativo, INs, Setor, Identificacao, Valor_Icms, Importador,SemContrato FROM Contratos " +
                     "Where Importador = @Importador and contrato =@contrato";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", pk_importador);
                    objCommand.Parameters.AddWithValue("@contrato", contrato);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<ContratoDeAdmissaoTemporaria> listaContrato = new List<ContratoDeAdmissaoTemporaria>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaContrato.Add(new ContratoDeAdmissaoTemporaria(objDr));
                            }
                        }
                        return listaContrato;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public ContratoDeAdmissaoTemporaria BuscarContrato(string pk_importador, string contrato)
        {
            string query = "SELECT Contrato, Descricao, Vigencia_inicial, Vigencia_final,Tipo, Data_Baixa,                          " +
                           "       Data_prorrogacao, Repetro, Ativo, INs, Setor, Identificacao, Valor_Icms, Importador, SemContrato " +
                           "  FROM Contratos                                                                                        " +
                           " WHERE Importador = @Importador and contrato =@contrato ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", pk_importador);
                    cmd.Parameters.AddWithValue("@contrato", contrato);
                    
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        ContratoDeAdmissaoTemporaria contratoDeAdmissaoTemporaria = null;
                        
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                contratoDeAdmissaoTemporaria = new ContratoDeAdmissaoTemporaria(dr);
                            }
                        }

                        return contratoDeAdmissaoTemporaria;
                    }
                }
            }
            
            catch (Exception ex)
            {
                throw;
            }            
        }
       
        //public bool SemVigencia(string pk_importador, string pk_contrato)
        //{
        //    string query = "SELECT TOP 1 Contrato FROM Contratos " +
        //             "Where Importador = @Importador and Contrato = @contrato and Vigencia_inicial is null ";
        //    try
        //    {
        //        bool retorno = false;
        //        if (string.IsNullOrEmpty(pk_importador) || string.IsNullOrEmpty(pk_contrato))
        //            return retorno;
        //        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
        //        using (var cmd = new SqlCommand(query, conn))
        //        {
        //            cmd.Parameters.AddWithValue("@Importador", pk_importador);
        //            cmd.Parameters.AddWithValue("@contrato", pk_contrato);
        //            using (SqlDataReader dr = cmd.ExecuteReader())
        //            {                        
        //                if (dr.HasRows)
        //                {
        //                    while (dr.Read())
        //                    {
        //                        retorno = true;
        //                    }
        //                }                        
        //            }
        //        }
        //        return retorno;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw;
        //    }            
        //}
                
    }
}
