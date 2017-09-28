using System;
using System.Net;
using System.Net.Sockets;
using System.Windows.Forms;

namespace MSOutlookAddIn
{
    class SocketServer
    {
        public static void ConectarSocketServer()
        {
            TcpListener server = null;
            try
            {
                Int32 port = 13000;
                IPAddress localAddr = IPAddress.Parse("127.0.0.1");
                server = new TcpListener(localAddr, port);
                server.Start();

                Byte[] bytes = new Byte[256];
                String data = null;

                TcpClient client = null;
                NetworkStream stream = null;
                int i = 0;

                while (true)
                {
                    if (!client.Connected)
                    {
                        client = server.AcceptTcpClient();
                    }
                    stream = client.GetStream();

                    if (client.Connected)
                    {

                        i = stream.Read(bytes, 0, bytes.Length);
                        if (string.IsNullOrEmpty(data))
                        {
                            data = System.Text.Encoding.ASCII.GetString(bytes, 0, 6);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(data))
                            {
                                data = data.ToUpper();
                                byte[] msg = System.Text.Encoding.ASCII.GetBytes(data);
                                stream.Write(msg, 0, msg.Length);
                            }
                        }
                    }

                }
            }
            catch (SocketException e)
            {
                MessageBox.Show("SocketException: " + e);
            }
            finally
            {
                server.Stop();
            }

        }
    }

}
