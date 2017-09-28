using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class SiscomexAtualizacaoTabelas
    {
        public string Tabela { get; set; }
        public string Descricao { get; set; }
        public int? Atualiza_WEB { get; set; }
        public string Usuario { get; set; }
        public DateTime? Data_Atualizacao { get; set; }

        public SiscomexAtualizacaoTabelas()
        {

        }

        public SiscomexAtualizacaoTabelas(SqlDataReader reader)
        {
            Tabela = reader["Tabela"].ToString();
            Descricao = reader["Descricao"].ToString();
            Atualiza_WEB = (reader["Atualiza_WEB"] == DBNull.Value) ? (int?)null : (Convert.ToInt16(reader["Atualiza_WEB"]));
            Usuario = reader["Usuario"].ToString();
            Data_Atualizacao = (reader["Data_Atualizacao"] == DBNull.Value) ? (DateTime?)null : (Convert.ToDateTime(reader["Data_Atualizacao"]));
        }

        public List<SiscomexAtualizacaoTabelas> getAllTabela()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Tabela, Descricao, Atualiza_WEB, Usuario, Data_Atualizacao FROM Siscomex_Atualizacao_Tabelas ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<SiscomexAtualizacaoTabelas> retorno = new List<SiscomexAtualizacaoTabelas>();

                    while (reader.Read())
                    {
                        retorno.Add(new SiscomexAtualizacaoTabelas(reader));
                    }
                    return retorno;
                }
            }
        }

        public void updateData(DateTime data)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "UPDATE Siscomex_Atualizacao_Tabelas SET Data_Atualizacao = @data , Usuario = @usuario";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@data", data);
                cmd.Parameters.AddWithValue("@usuario", FrmPrincipal.UsuarioLogado);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
