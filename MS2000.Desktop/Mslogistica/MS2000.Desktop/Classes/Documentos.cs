using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class Documentos
    {
        public Documentos()
        {
        }

        public Documentos(SqlDataReader reader)
        {
            Processo = reader["Processo"].ToString();
            Tipo_Doc = reader["Tipo_Doc"].ToString();
            Sub_Tipo_Doc = reader["Sub_Tipo_Doc"].ToString();
            Arquivo = reader["Arquivo"].ToString();
            Pagina = reader["Pagina"].ToString();
            PDF = (int)reader["PDF"];
            Codigo = reader["Codigo"].ToString();
            CNPJ_CPF_COMPLETO = reader["CNPJ_CPF_COMPLETO"].ToString();
            Descricao = reader["Descricao"].ToString();
        }

        #region Properts
        public string Importador { get; set; }
        public string Processo { get; set; }
        public string Tipo_Doc { get; set; }
        public string Sub_Tipo_Doc { get; set; }
        public string Numero_Doc { get; set; }
        public string Pagina { get; set; }
        public string Codigo { get; set; }
        public string Arquivo { get; set; }
        public int? ftp { get; set; }
        public DateTime? Vigencia_inicial { get; set; }
        public DateTime? Vigencia_final { get; set; }
        public string Observacoes { get; set; }
        public string Contrato { get; set; }
        public string Local { get; set; }
        public DateTime? Data_inclusao { get; set; }
        public DateTime? Data_baixa { get; set; }
        public DateTime? Data_renovacao { get; set; }
        public string Status { get; set; }
        public DateTime? Data_envio { get; set; }
        public string usuario_dig { get; set; }
        public int? PDF { get; set; }
        public int? Conta_Corrente { get; set; }
        public int? Reg_Numerario { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Razao_Social { get; set; }
        public string Descricao { get; set; }
        public DateTime? DtDesembaraco { get; set; }
        public string DI { get; set; }     
        #endregion
        public List<Documentos> getDocumentos()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT Importador, Processo, Tipo_Doc, Sub_Tipo_Doc, Numero_Doc, Arquivo "+
                           " FROM Documentos ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Documentos> lista_documentos = new List<Documentos>();

                    while (reader.Read())
                    {
                        lista_documentos.Add(new Documentos(reader));
                    }

                    return lista_documentos;
                }
            }
        }

        public List<Documentos> BuscarPorDocumento(string processo, string tipo, string subtipo)
        {
            string query = "select D.Processo, D.Tipo_Doc,D.Sub_Tipo_Doc, D.Arquivo,D.Codigo,D.Pagina, D.PDF from Documentos D " +
                           "where Processo = @Processo and D.Tipo_Doc = @Tipo_Doc and D.Sub_Tipo_Doc = @Sub_Tipo_Doc ";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@processo", processo);
                    objCommand.Parameters.AddWithValue("@Tipo_Doc", tipo);
                    objCommand.Parameters.AddWithValue("@Sub_Tipo_Doc", subtipo);
               

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Documentos> lista = new List<Documentos>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                lista.Add(new Documentos
                                {
                                    Processo = objDr["Processo"].ToString(),
                                    Tipo_Doc = objDr["Tipo_Doc"].ToString(),
                                    Sub_Tipo_Doc = objDr["Sub_Tipo_Doc"].ToString(),
                                    Arquivo = objDr["Arquivo"].ToString(),
                                    Pagina = objDr["Pagina"].ToString(),
                                    PDF = (int)objDr["PDF"],
                                    Codigo = objDr["Codigo"].ToString(),                                    
                                }
                                    );
                            }
                        }
                        return lista;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<Documentos> DocumentosFianca(string processo, string tipo, string subtipo, string arquivo)
        {
            string query = "select D.Processo, D.Tipo_Doc,D.Sub_Tipo_Doc, D.Arquivo,D.Codigo,D.Pagina, D.PDF from Processos P inner join Documentos D " +
                           "on P.Fk_Fiador = D.Importador " +
                           "where  P.Codigo = @Processo and D.Tipo_Doc = @Tipo_Doc  and D.Sub_Tipo_Doc = @Sub_Tipo_Doc and Arquivo = @Arquivo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@processo", processo);
                    objCommand.Parameters.AddWithValue("@Tipo_Doc", tipo);
                    objCommand.Parameters.AddWithValue("@Sub_Tipo_Doc", subtipo);
                    objCommand.Parameters.AddWithValue("@Arquivo", arquivo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Documentos> lista = new List<Documentos>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                lista.Add(new Documentos
                                {
                                    Processo = objDr["Processo"].ToString(),
                                    Tipo_Doc = objDr["Tipo_Doc"].ToString(),
                                    Sub_Tipo_Doc = objDr["Sub_Tipo_Doc"].ToString(),
                                    Arquivo = objDr["Arquivo"].ToString(),
                                    Pagina = objDr["Pagina"].ToString(),
                                    PDF = (int)objDr["PDF"],
                                    Codigo = objDr["Codigo"].ToString(),
                                }
                                    );
                            }
                        }
                        return lista;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public static bool ExisteDocumento(string processo, string tipo, string subtipo)
        {
            string query = "select Processo from Documentos where Processo = @Processo and Tipo_Doc = @Tipo_Doc and Sub_Tipo_Doc = @Sub_Tipo_Doc ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    cmd.Parameters.AddWithValue("@Tipo_Doc", tipo);
                    cmd.Parameters.AddWithValue("@Sub_Tipo_Doc", subtipo);
                    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();
                        
                        return reader.HasRows;                                                                             
                    }                    
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static void ApagaVigenciaLI(string processo)
        {
            string query = " UPDATE Documentos SET Vigencia_inicial = NULL, Vigencia_final = NULL, Data_baixa = NULL, Status = 0       " +
                           "  WHERE TIPO_DOC = 'PROC' AND Sub_Tipo_Doc = '15' AND Vigencia_inicial IS NOT NULL AND Processo =@Processo "; 

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);                    
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static bool VerificaSeDespachoDecisorioTemVencimento(string processo)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = " SELECT Numero_Doc FROM Documentos WHERE Tipo_Doc = 'PROC' AND Sub_Tipo_Doc IN ('80') and Vigencia_inicial <> '' and Vigencia_final <> '' AND Processo = @Codigo ";

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<Documentos> BuscarPorDocumentodeExtracao(string processo, DateTime? dtDesembaraco, string contrato, string local)
        {
            string query = "Select D.Processo,I.Razao_Social, I.CNPJ_CPF_COMPLETO,d.Arquivo,d.Codigo,d.Pagina,STD.Descricao,D.Numero_Doc,D.PDF,i.Razao_Social,D.Tipo_Doc,D.Sub_Tipo_Doc,NR_DECLARACAO_IMP,l.Descricao as Local " +
                           "from Documentos D " +
                           "inner join Processos P on D.Processo = P.Codigo " +
                           "inner join Locais_Inventario L on L.Importador = P.Importador and L.Contrato = P.Contrato and L.Local = P.Local_Inventario " +
                           "inner join Sub_Tipo_Documentos STD on D.Tipo_Doc = STD.Tipo_doc and D.Sub_Tipo_Doc = STD.codigo " +
                           "inner join Importadores I on D.Importador = I.Codigo where D.Processo = @Processo ";
                           //"  AND D.Tipo_doc = 'PROC' and D.Sub_Tipo_Doc in ('69','70','46') ";                            
            
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@processo", processo);                    
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Documentos> lista = new List<Documentos>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                lista.Add(new Documentos
                                {
                                    Processo = objDr["Processo"].ToString(),
                                    Razao_Social = objDr["Razao_Social"].ToString(),
                                    Tipo_Doc = objDr["Tipo_Doc"].ToString(),
                                    Sub_Tipo_Doc = objDr["Sub_Tipo_Doc"].ToString(),
                                    Arquivo = objDr["Arquivo"].ToString(),
                                    Pagina = objDr["Pagina"].ToString(),
                                    PDF = (int)objDr["PDF"],
                                    Codigo = objDr["Codigo"].ToString(),
                                    CNPJ_CPF_COMPLETO = objDr["CNPJ_CPF_COMPLETO"].ToString(),
                                    Descricao = objDr["Descricao"].ToString(),
                                    DI = objDr["NR_DECLARACAO_IMP"].ToString(),
                                    DtDesembaraco = dtDesembaraco,
                                    Contrato =  contrato,
                                    Local = objDr["Local"].ToString(),
                                    Numero_Doc = objDr["Numero_Doc"].ToString(),
                                   // Local = local,
                                    
                                });
                            }
                        }
                        return lista;
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
