using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class LogSistemas
    {
        public int ID { get; set; }
        public string Chave { get; set; }
        public int FK_Usuario { get; set; }
        public int Acao { get; set; }
        public int Formulario { get; set; }
        public DateTime? Data { get; set; }
        public string Descricao { get; set; }

        public static void AddLogSistema(int fk_usuario, StatusCadastro acao, int formulario, string descricao)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO LogSistema (FK_Usuario,Acao,Formulario,Data,Descricao) values(@FK_Usuario,@Acao,@Formulario,@Data,@Descricao)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Usuario", fk_usuario);
                    cmd.Parameters.AddWithValue("@Acao", (int)acao);
                    cmd.Parameters.AddWithValue("@Formulario", formulario);
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Descricao", descricao);
                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public static void AddLogSistema(string chave, int fk_usuario, StatusCadastro acao, int formulario, string descricao)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO LogSistema (Chave,FK_Usuario,Acao,Formulario,Data,Descricao) values(@Chave, @FK_Usuario,@Acao,@Formulario,@Data,@Descricao)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Chave", chave);
                    cmd.Parameters.AddWithValue("@FK_Usuario", fk_usuario);
                    cmd.Parameters.AddWithValue("@Acao", (int)acao);
                    cmd.Parameters.AddWithValue("@Formulario", formulario);
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Descricao", descricao);
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