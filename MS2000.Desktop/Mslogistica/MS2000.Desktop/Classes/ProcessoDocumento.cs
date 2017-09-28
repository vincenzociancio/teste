using System;
using MS2000.Desktop.Classes;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    class ProcessoDocumentoInstrucao
    {
        public string Processo                 { get; set; }
        public string NumeroDocumentoInstrucao { get; set; }
        public string CodigoTipoDocInstrucao   { get; set; }
        public string NMDocumentoInstrucao     { get; set; }

        public ProcessoDocumentoInstrucao(SqlDataReader reader)
        {
            Processo                 = reader["PROCESSO"].ToString();
            NumeroDocumentoInstrucao = reader["NR_DCTO_INSTRUCAO"].ToString();
            CodigoTipoDocInstrucao   = reader["CD_TIPO_DCTO_INSTR"].ToString();
            NMDocumentoInstrucao     = reader["NM_DCTO_INSTRUCAO"].ToString();
        }

        public ProcessoDocumentoInstrucao()
        {

        }
        
        public DataTable tabelaProcessoDocumentoInstrucao(string processo)
        {           
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query =  "SELECT PDI.Processo,                                               "
                          + "       PDI.REG,                                                    "
                          + "       TDI.DESCRICAO,                                              "
                          + "       PDI.CD_TIPO_DCTO_INSTR,                                     "
                          + "       PDI.NR_DCTO_INSTRUCAO ,                                     "
                          + "       PDI.NM_DCTO_INSTRUCAO                                       "
                          + "  FROM Processos_Docs_Instrucao PDI                                "
                          + "       LEFT JOIN TAB_DOC_INSTRUCAO_DESPACHO TDI ON PDI.CD_TIPO_DCTO_INSTR = TDI.CODIGO "
                          + " WHERE PDI.Processo= @processo												            "
                          + " ORDER BY TDI.DESCRICAO;       												        ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        public List<ProcessoDocumentoInstrucao> buscaPorCodigo(string processo)
        {
            StringBuilder  sb  = new StringBuilder();
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            List<ProcessoDocumentoInstrucao> lst = new List<ProcessoDocumentoInstrucao>();
           
            sb.Append("SELECT PDI.Processo,                                                            ");
            sb.Append("       PDI.REG,                                                                 ");
            sb.Append("       TDI.DESCRICAO,                                                           ");
            sb.Append("       PDI.CD_TIPO_DCTO_INSTR,                                                  ");
            sb.Append("       PDI.NR_DCTO_INSTRUCAO ,                                                  ");
            sb.Append("       PDI.NM_DCTO_INSTRUCAO                                                    ");
            sb.Append("FROM Processos_Docs_Instrucao PDI                                               ");
            sb.Append("LEFT JOIN TAB_DOC_INSTRUCAO_DESPACHO TDI ON PDI.CD_TIPO_DCTO_INSTR = TDI.CODIGO ");
            sb.Append("WHERE  PDI.Processo= @processo												   ");
            sb.Append("ORDER BY TDI.DESCRICAO;       												   ");

            try
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                lst.Add(new ProcessoDocumentoInstrucao(reader));
                            }                            
                        }                        
                    }
                }
            }
            catch (SqlException sqlex)
            {
                throw;
            }

            return lst;

        }

        public void inserir(string processo,string numeroDocumentoInstrucao,string codigoTipoDoc,string nmDocumentoInstrucao)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "INSERT INTO processos_docs_instrucao    "
            + "            (processo,                  "
            + "             nr_dcto_instrucao,         "
            + "             cd_tipo_dcto_instr,        "
            + "             nm_dcto_instrucao)         "
            + "VALUES      (@processo,                 "
            + "             @numeroDocumentoInstrucao, "
            + "             @codTipoDocInstrucao,      "
            + "             @nmDocInstrucao )          ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                    
                    cmd.Parameters.AddWithValue("@processo", processo);
                    cmd.Parameters.AddWithValue("@numeroDocumentoInstrucao", numeroDocumentoInstrucao);
                    cmd.Parameters.AddWithValue("@codTipoDocInstrucao", codigoTipoDoc);
                    cmd.Parameters.AddWithValue("@nmDocInstrucao", nmDocumentoInstrucao);
                    cmd.ExecuteNonQuery();
                }               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public void alterar(string numeroDocumento, string codigoTipoDoc, string tipoDocumento, int registro)
        {                                               
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "UPDATE PROCESSOS_DOCS_INSTRUCAO SET NR_DCTO_INSTRUCAO = @numeroDocumento, cd_tipo_dcto_instr = @codTipoDocInstrucao, NM_DCTO_INSTRUCAO = @tipoDocumento WHERE REG = @reg";            

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@numeroDocumento", numeroDocumento);
                    cmd.Parameters.AddWithValue("@codTipoDocInstrucao", codigoTipoDoc);
                    cmd.Parameters.AddWithValue("@tipoDocumento", tipoDocumento);
                    cmd.Parameters.AddWithValue("@reg", registro);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public void excluir(int registro)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string SQL = "DELETE FROM PROCESSOS_DOCS_INSTRUCAO WHERE REG = @reg";

            try
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@reg", registro);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
