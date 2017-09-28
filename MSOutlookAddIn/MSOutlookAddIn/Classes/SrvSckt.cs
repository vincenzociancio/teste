using System;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Collections;
using System.IO;

namespace MSOutlookAddIn
{
    public class SrvSckt
    {
        #region Delegates
        public delegate void ConnectionDelegate(Socket soc);
        public delegate void ErrorDelegate(string ErroMessage, Socket soc, int ErroCode);
        public delegate void ListenDelegate();
        #endregion

        #region Eventos
        public event ConnectionDelegate OnConnect;
        public event ConnectionDelegate OnDisconnect;
        public event ConnectionDelegate OnRead;
        public event ConnectionDelegate OnWrite;
        public event ErrorDelegate OnError;
        public event ListenDelegate OnListen;
        public event ConnectionDelegate OnSendFile;
        #endregion

        #region Variaveis
        private ArrayList Clientes = ArrayList.Synchronized(new ArrayList());
        private AsyncCallback WorkerCallBack;
        private Socket mainSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        private IPEndPoint ipLocal;
        private int mPorta = 0;
        private byte[] mBytesRecebidos;
        private string mTextoRecebido = "";
        private string mTextoEnviado = "";
        #endregion

        #region Propriedades
        /// <summary>
        /// Porta na qual os clientes podem se conectar
        /// </summary>
        public int Port
        {
            get
            {
                return (mPorta);
            }
        }

        /// <summary>
        /// Bytes que chegaram ao Socket
        /// </summary>
        public byte[] ReceivedBytes
        {
            get
            {
                byte[] temp = null;
                if (mBytesRecebidos != null)
                {
                    temp = mBytesRecebidos;
                    mBytesRecebidos = null;
                }
                return (temp);
            }
        }

        /// <summary>
        /// Messagem que chegou ao Socket
        /// </summary>
        public string ReceivedText
        {
            get
            {
                string temp = mTextoRecebido;
                mTextoRecebido = "";
                return (temp);
            }
        }

        /// <summary>
        /// Messagem enviada pelo Socket
        /// </summary>
        public string WriteText
        {
            get
            {
                string temp = mTextoEnviado;
                mTextoEnviado = "";
                return (temp);
            }
        }

        /// <summary>
        /// Número de conexões ativas
        /// </summary>
        public int ActiveConnections
        {
            get
            {
                return (Clientes.Count);
            }
        }
        #endregion

        #region Construtor
        /// <summary>
        /// Construtor padrão da classe
        /// </summary>
        /// <param name="port">Porta para conexão
        /// </param>
        public SrvSckt(int port)
        {
            try
            {
                mPorta = port;
                ipLocal = new IPEndPoint(IPAddress.Any, mPorta);
            }
            catch (Exception se)
            {
                if (OnError != null)
                    OnError(se.Message, null, 0);
            }
        }
        #endregion

        #region Classes
        private class SocketPacket
        {
            public SocketPacket(Socket socket)
            {
                m_currentSocket = socket;
            }
            public Socket m_currentSocket;
            public byte[] dataBuffer = new byte[1024];
        }
        #endregion

        #region Funcoes e Eventos
        /// <summary>
        /// Ativa o ServerSocket que fica escutando na porta pré-definida na construção da Classe
        /// </summary>
        public bool Active()
        {
            try
            {
                mainSocket.Bind(ipLocal);
                mainSocket.Listen(0);
                mainSocket.BeginAccept(new AsyncCallback(OnClientConnect), null);
                if (OnListen != null)
                    OnListen();
                return true;
            }
            catch (SocketException se)
            {
                if (OnError != null)
                    OnError(se.Message, mainSocket, se.ErrorCode);
                return false;
            }
        }

        private void OnClientConnect(IAsyncResult asyn)
        {
            try
            {
                Socket workSocket = mainSocket.EndAccept(asyn);
                try
                {
                    WaitForData(workSocket);
                    if (OnConnect != null)
                        OnConnect(workSocket);
                    lock (this)
                    {
                        Clientes.Add(workSocket);
                    }
                    mainSocket.BeginAccept(new AsyncCallback(OnClientConnect), null);
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, workSocket, se.ErrorCode);
                }
            }
            catch (ObjectDisposedException se)
            {
                if (OnError != null)
                    OnError(se.Message, null, 0);
            }
        }

        private void WaitForData(Socket soc)
        {
            try
            {
                if (WorkerCallBack == null)
                    WorkerCallBack = new AsyncCallback(OnDataReceived);
                SocketPacket theSocPkt = new SocketPacket(soc);
                soc.BeginReceive(theSocPkt.dataBuffer, 0,
                    theSocPkt.dataBuffer.Length,
                    SocketFlags.None,
                    WorkerCallBack,
                    theSocPkt);
            }
            catch (SocketException se)
            {
                if (OnError != null)
                    OnError(se.Message, soc, se.ErrorCode);
            }
        }

        private void OnDataReceived(IAsyncResult asyn)
        {
            SocketPacket socketData = (SocketPacket)asyn.AsyncState;
            try
            {
                int iRx = socketData.m_currentSocket.EndReceive(asyn);
                if (iRx < 1)
                {
                    socketData.m_currentSocket.Close();
                    if (!socketData.m_currentSocket.Connected)
                    {
                        if (OnDisconnect != null)
                            OnDisconnect(socketData.m_currentSocket);
                        Clientes.Remove(socketData.m_currentSocket);
                        socketData.m_currentSocket = null;
                    }
                }
                else
                {

                    mBytesRecebidos = socketData.dataBuffer;
                    char[] chars = new char[iRx + 1];
                    Decoder d = Encoding.UTF8.GetDecoder();
                    d.GetChars(socketData.dataBuffer, 0, iRx, chars, 0);
                    mTextoRecebido = new String(chars);
                    if (OnRead != null)
                        OnRead(socketData.m_currentSocket);
                    WaitForData(socketData.m_currentSocket);
                }
            }
            catch (InvalidOperationException se)
            {
                if (socketData.m_currentSocket.Connected)
                    socketData.m_currentSocket.Close();
                if (!socketData.m_currentSocket.Connected)
                {
                    if (OnDisconnect != null)
                        OnDisconnect(socketData.m_currentSocket);
                    Clientes.Remove(socketData.m_currentSocket);
                    socketData.m_currentSocket = null;
                }
                if (OnError != null)
                    OnError(se.Message, null, 0);
            }
            catch (SocketException se)
            {
                if (OnError != null)
                    OnError(se.Message, socketData.m_currentSocket, se.ErrorCode);
                if (!socketData.m_currentSocket.Connected)
                {
                    if (OnDisconnect != null)
                        OnDisconnect(socketData.m_currentSocket);
                    Clientes.Remove(socketData.m_currentSocket);
                    socketData.m_currentSocket = null;
                }
            }
        }

        /// <summary>
        /// Envia uma mensagem de texto pela conexão selecionada no índice
        /// </summary>
        /// <param name="mens">Mensagem para ser enviada</param>
        /// <param name="SocketIndex">Índice da conexão</param>
        public bool SendText(string mens, int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket workerSocket = (Socket)Clientes[SocketIndex];
                try
                {
                    byte[] byData = System.Text.Encoding.ASCII.GetBytes(mens);
                    int NumBytes = workerSocket.Send(byData);
                    if (NumBytes == byData.Length)
                    {
                        if (OnWrite != null)
                        {
                            mTextoEnviado = mens;
                            //OnWrite(workerSocket);
                        }
                        return true;
                    }
                    else
                        return false;
                }
                catch (ArgumentException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (ObjectDisposedException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
            }
            else
            {
                if (OnError != null)
                    OnError("Índice fora do 'Range'.", null, 0);
                return false;
            }
        }

        /// <summary>
        /// Envia arquivo para a conexão selecionada no índice
        /// </summary>
        /// <param name="FileName">Arquivo a ser enviado</param>
        /// <param name="SocketIndex">Índice da conexão</param>
        public bool SendFile(string FileName, int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket workerSocket = (Socket)Clientes[SocketIndex];
                try
                {
                    workerSocket.BeginSendFile(FileName, new AsyncCallback(FileSendCallback), workerSocket);
                    return true;
                }
                catch (FileNotFoundException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (ObjectDisposedException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, workerSocket, se.ErrorCode);
                    return false;
                }
            }
            else
            {
                if (OnError != null)
                    OnError("Índice fora do 'Range'.", null, 0);
                return false;
            }
        }

        /// <summary>
        /// Envia arquivo para a conexão selecionada no índice
        /// </summary>
        /// <param name="FileName">Arquivo a ser enviado</param>
        /// <param name="PreString">String enviada antes do arquivo</param>
        /// <param name="PosString">String enviada logo depois do arquivo</param>
        /// <param name="SocketIndex">Índice da conexão</param>
        public bool SendFile(string FileName, string PreString, string PosString, int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket workerSocket = (Socket)Clientes[SocketIndex];
                try
                {
                    byte[] preBuf = Encoding.ASCII.GetBytes(PreString);
                    byte[] postBuf = Encoding.ASCII.GetBytes(PosString);
                    workerSocket.BeginSendFile(FileName, preBuf, postBuf, 0, new AsyncCallback(FileSendCallback), workerSocket);
                    return true;
                }
                catch (ArgumentException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (ObjectDisposedException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return false;
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, workerSocket, se.ErrorCode);
                    return false;
                }
            }
            else
            {
                if (OnError != null)
                    OnError("Índice fora do 'Range'.", null, 0);
                return false;
            }
        }

        private void FileSendCallback(IAsyncResult ar)
        {
            Socket workerSocket = (Socket)ar.AsyncState;
            workerSocket.EndSendFile(ar);
            if (OnSendFile != null)
                OnSendFile(workerSocket);
        }

        /// <summary>
        /// Desativa o ServerSocket perdendo todas as conexões
        /// </summary>
        public bool Deactive()
        {
            bool err = true;
            if (mainSocket != null)
                mainSocket.Close();
            int total = Clientes.Count;
            for (int i = 0; i < total; i++)
            {
                Socket workerSocket = (Socket)Clientes[i];
                if (workerSocket != null)
                {
                    if (OnDisconnect != null)
                        OnDisconnect(workerSocket);
                    workerSocket.Close();
                    err = err && workerSocket.Connected;
                }
            }
            return err;
        }

        /// <summary>
        /// Termina uma conexão específica de acordo com o Índice da conexão
        /// </summary>
        /// <param name="SocketIndex">Índice da conexão</param>
        public bool CloseConnection(int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket workerSocket = (Socket)Clientes[SocketIndex];
                if (workerSocket != null)
                    workerSocket.Close();
                if (!workerSocket.Connected)
                    return true;
                else
                    return false;
            }
            else
            {
                if (OnError != null)
                    OnError("Índice fora do 'Range'.", null, 0);
                return false;
            }
        }

        /// <summary>
        /// Verifica o status da conexão
        /// </summary>
        public bool Connected(int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket soc = (Socket)Clientes[SocketIndex];
                return soc.Connected;
            }
            else
                return false;
        }

        /// <summary>
        /// Retorna o IP remoto de acordo com o índice informado
        /// </summary>
        public string RemoteAddress(int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket soc = (Socket)Clientes[SocketIndex];
                try
                {

                    string temp = soc.RemoteEndPoint.ToString();
                    return temp.Substring(0, temp.IndexOf(":"));
                }
                catch (ArgumentException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return "";
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return "";
                }
            }
            else
                return "";
        }

        /// <summary>
        /// Retorna o Host remoto de acordo com o índice informado
        /// </summary>
        public string RemoteHost(int SocketIndex)
        {
            if ((Clientes.Count - 1) >= SocketIndex)
            {
                Socket soc = (Socket)Clientes[SocketIndex];
                try
                {
                    string temp = soc.RemoteEndPoint.ToString();
                    temp = temp.Substring(0, temp.IndexOf(":"));
                    IPHostEntry retorno = Dns.GetHostEntry(temp);
                    return retorno.HostName;
                }
                catch (ArgumentException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return "";
                }
                catch (SocketException se)
                {
                    if (OnError != null)
                        OnError(se.Message, null, 0);
                    return "";
                }
            }
            else
                return "";
        }
        #endregion
    }

}
