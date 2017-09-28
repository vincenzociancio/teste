using System;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class TabMoeda
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }

        public bool Incluir(TabMoeda obj)
        {          
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO TAB_MOEDA (Codigo, Descricao) ");
            strSql.Append("VALUES (@Codigo, @Descricao) ");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", obj.Codigo);
                    cmd.Parameters.AddWithValue("@Descricao", obj.Descricao);                                    
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        public bool DeleteAll()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "delete from TAB_MOEDA";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

    }
}
