using System;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class AutorizacaoEspecifica
    {
        public int ID { get; set; }
        [Required]
        [StringLength(200,ErrorMessage = "Error: Tamanho máximo de 200")]
        public string Descricao { get; set; }
        [Required]
        public int Formulario { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "Error: Tamanho máximo de 100")]
        public string Chave_Busca { get; set; }

        static public void Add(AutorizacaoEspecifica obj)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "insert into AutorizacaoEspecifica (Descricao, Formulario, Chave_Busca)values(@descricao, @Formulario, @Chave_Busca)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@descricao", obj.Descricao);
                    cmd.Parameters.AddWithValue("@Formulario", obj.Formulario);
                    cmd.Parameters.AddWithValue("@Chave_Busca", obj.Chave_Busca.ToString().ToLower());
                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        static public bool Existe(AutorizacaoEspecifica obj, out int id)
        {
            id = 0; bool _ok = false;
            try
            {
                var query = "SELECT ID FROM AutorizacaoEspecifica WHERE Formulario = @Formulario AND Chave_Busca = @Chave_Busca";
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Formulario", obj.Formulario);
                    cmd.Parameters.AddWithValue("@Chave_Busca", obj.Chave_Busca);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                id = Convert.ToInt32(reader["ID"].ToString());
                                _ok = true;
                            }
                        }
                        else
                        {
                            _ok = false;
                        }                        
                    }
                }
                return _ok;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }
    }
}
