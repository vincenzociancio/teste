using System;
using System.Data.SqlClient;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class ControleDePasta
    {
        public int FK_Processo { get; set; }
        public string Processo { get; set; }
        public int FK_Usuario { get; set; }
        public string Usuario { get; set; }
        public int Aceite { get; set; }
        public DateTime Data { get; set; }


        public bool Incluir(ControleDePasta obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Controle_Pastas (FK_Processo, Processo, FK_Usuario, Usuario, Aceite, Data) ");
            strSql.Append("VALUES (@FK_Processo, @Processo, @FK_Usuario, @Usuario, @Aceite, @Data ) ");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", obj.FK_Processo);
                    cmd.Parameters.AddWithValue("@Processo", obj.Processo);
                    cmd.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
                    cmd.Parameters.AddWithValue("@Usuario", obj.Usuario);
                    cmd.Parameters.AddWithValue("@Aceite", obj.Aceite);
                    cmd.Parameters.AddWithValue("@Data", obj.Data);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }           
        }
    }
}
