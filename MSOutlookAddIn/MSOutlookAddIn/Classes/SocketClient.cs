using System;
using System.Net.Sockets;

namespace MSOutlookAddIn
{
    class SocketClient
    {
        private static string _Usuario;

        public static string Usuario
        {
            get { return SocketClient._Usuario; }
            private set { SocketClient._Usuario = value; }
        }
        

        public static void ConectarSocketClient(String server, String message)
        {
            try
            {
                while (true)
                {
                    Int32 port = 13000;
                    TcpClient client = new TcpClient(server, port);
                    Byte[] data = System.Text.Encoding.ASCII.GetBytes(message);
                    NetworkStream stream = client.GetStream();
                    stream.Write(data, 0, data.Length);
                    data = new Byte[256];
                    String responseData = String.Empty;
                    Int32 bytes = stream.Read(data, 0, data.Length);
                    responseData = System.Text.Encoding.ASCII.GetString(data, 0, bytes);
                    Usuario = responseData;
                    stream.Close();
                    //client.Close();
                }
            }
            catch (ArgumentNullException e)
            {                
               // MessageBox.Show("ArgumentNullException: " + e);
            }
            catch (SocketException e)
            {
               // MessageBox.Show("SocketException: " + e);
            }
        }
    }
}
