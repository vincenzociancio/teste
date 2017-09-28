using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class AutorizacaoEspecificaUsuarios
    {
        public int ID { get; set; }
        public int FK_AutorizacaoEspecifica { get; set; }
        public int FK_Usuario { get; set; }
        public bool Acessa { get; set; }
        
        static public bool GetAutorizacaoEspecificaUsuario(AutorizacaoEspecificaUsuarios obj)
        {
            bool _ok = false;
            try
            {
                var query = "SELECT Acessa FROM AutorizacaoEspecificaUsuarios WHERE FK_AutorizacaoEspecifica = @FK_AutorizacaoEspecifica AND FK_Usuario = @FK_Usuario";
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_AutorizacaoEspecifica", obj.FK_AutorizacaoEspecifica);
                    cmd.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                _ok = Convert.ToBoolean(reader["Acessa"].ToString());                               
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
