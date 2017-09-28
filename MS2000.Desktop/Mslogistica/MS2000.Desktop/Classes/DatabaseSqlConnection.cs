using System;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public sealed class DatabaseSqlConnection
    {
        /// <summary>
        /// Guarda a instância da classe.
        /// </summary>
        private static DatabaseSqlConnection instance;
        private bool disposed = false;
        /// <summary>
        /// Guarda a conexão com o banco.
        /// </summary>
        private SqlConnection conexao;

        /// <summary>
        /// Esta variável está aqui apenas por questões de teste, o correto é que a mesma fique armazenada em algum local
        /// onde seja possível alterar a mesma sem precisar alerar a aplicação.
        /// </summary>
        //private string strConexao = @"Data Source=mssql00;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;Connect Timeout=1000;MultipleActiveResultSets=True;Application Name=MS2000Singleton";
        //private string strConexao = @"Data Source=msserver01;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;Connect Timeout=1000;MultipleActiveResultSets=True;Application Name=MS2000Singleton";
        //private string strConexao = @"Data Source=msserver01;Initial Catalog=MS2000;Persist Security Info=True;User ID=msproj;Password=lasbrug30@;Connect Timeout=1000;MultipleActiveResultSets=True;Application Name=MS2000Singleton";
        private string strConexao;

        private void ConexaoTXT()
        {
            try
            {
#if DEBUG
                strConexao = @"Data Source=mssql00;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;Connect Timeout=1000;MultipleActiveResultSets=True;Application Name=MS2000Singleton";                
#else
                    using (StreamReader sr = new StreamReader(@"\\msapp01\Sistemas\ConexaoBD.txt"))
                    {
                        strConexao = sr.ReadLine();
                    }
#endif
            }
            catch
            {
                MessageBox.Show("Ocorreu erro na conexão com o Banco de Dados !", "O Servidor SQL Falhou!");
            }
        }

        /// <summary>
        /// O consrutor da classe é privado, não posso deixar que seja feito um new desta classe, a instância deve ser pega
        /// pela propriedade Instance.
        /// </summary>
        private DatabaseSqlConnection()
        {
            ConexaoTXT();
            //Cria o objeto de conexão com a string de conexão mas ainda não abre a conexão.
            this.conexao = new SqlConnection(strConexao);
        }

        /// <summary>
        /// Retorna a instância da classe, caso ainda não tenha sido instanciada, faz na primeira vez que for chamada.
        /// </summary>
        public static DatabaseSqlConnection Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DatabaseSqlConnection();
                }
                return instance;
            }
        }

        /// <summary>
        /// Conexão com o banco de dados.
        /// </summary>
        /// <returns>Retorna a conexão já aberta com o banco de dados.</returns>
        public SqlConnection Conexao
        {
            get
            {
                try
                {
                    //Se o estado da conexão estiver diferente de aberto vou abrí-la.
                    if (this.conexao.State != System.Data.ConnectionState.Open)
                    {
                        //Atualiza a string de conexão
                        this.conexao.ConnectionString = strConexao;
                        //Abre a conexão
                        this.conexao.Open();
                    }
                    return this.conexao;
                }
                catch (Exception ex)
                {
                    //Se a conexão estiver aberta como ocorreu algum erro, fecho a mesma.
                    if (this.conexao.State == ConnectionState.Open)
                    {
                        this.conexao.Close();
                    }
                    throw ex;
                }
            }
        }
    }
}
