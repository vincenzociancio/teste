using System;
using System.Data.SqlClient;
using System.Net;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class LogUsuarioDiferente
    {
        public int ID { get; set; }
        public string IP_Local { get; set; }
        public string Usuario_Maquina { get; set; }
        public int fk_usuario { get; set; }
        public DateTime? Data { get; set; }

        public static void AddLogUsuarioDiferente(int fk_usuario, string Usuario_Maquina, string Sistema)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO LogUsuarioDiferente (IP_Local,HostName, Usuario_Maquina,fk_usuario,Data,Sistema) values(@IP_Local,@HostName,@Usuario_Maquina,@fk_usuario,@Data,@Sistema)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    string nome = Dns.GetHostName();
                    //IPAddress[] ip = Dns.GetHostAddresses(nome);    
                    string ip = GetLocalIP();//Dns.GetHostEntry(nome).AddressList[1].ToString();

                    cmd.Parameters.AddWithValue("@IP_Local", ip);
                    cmd.Parameters.AddWithValue("@HostName", nome);
                    cmd.Parameters.AddWithValue("@Usuario_Maquina", Usuario_Maquina);
                    cmd.Parameters.AddWithValue("@fk_usuario", fk_usuario);
                    cmd.Parameters.AddWithValue("@Data", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Sistema", Sistema);
                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public static string GetLocalIP()
        {
            string _IP = null;

            IPHostEntry _IPHostEntry = Dns.GetHostEntry(System.Net.Dns.GetHostName());

            foreach (IPAddress _IPAddress in _IPHostEntry.AddressList)
            {
                if (_IPAddress.AddressFamily.ToString() == "InterNetwork")
                {
                    _IP = _IPAddress.ToString();
                }
            }
            return _IP;
        }

    }
}
