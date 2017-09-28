using System;
using System.Data.OleDb;
using System.Data;

namespace MS2000.Desktop.Classes
{
    public sealed class DatabaseAccessConnection
    {
        /// <summary>
        /// Guarda a instância da classe.
        /// </summary>
        private static DatabaseAccessConnection instance;

        /// <summary>
        /// Guarda a conexão com o banco.
        /// </summary>
        private OleDbConnection conexao;

        /// <summary>
        /// Esta variável está aqui apenas por questões de teste, o correto é que a mesma fique armazenada em algum local
        /// onde seja possível alterar a mesma sem precisar alerar a aplicação.
        /// </summary>
        private string strConexao = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\SISCOPRD\import.prd\cons_imp.mdb;Persist Security Info=True";
         //private string strConexao = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\SISCOPRD\import.prd\dsicon.mdb;Persist Security Info=True"; 
        /// <summary>
        /// O consrutor da classe é privado, não posso deixar que seja feito um new desta classe, a instância deve ser pega
        /// pela propriedade Instance.
        /// </summary>
        private DatabaseAccessConnection()
        {
            //Cria o objeto de conexão com a string de conexão mas ainda não abre a conexão.
            this.conexao = new OleDbConnection(strConexao);
        }

        /// <summary>
        /// Retorna a instância da classe, caso ainda não tenha sido instanciada, faz na primeira vez que for chamada.
        /// </summary>
        public static DatabaseAccessConnection Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DatabaseAccessConnection();
                }
                return instance;
            }
        }

        /// <summary>
        /// Conexão com o banco de dados.
        /// </summary>
        /// <returns>Retorna a conexão já aberta com o banco de dados.</returns>
        public OleDbConnection Conexao
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


    //public class DatabaseConnection
    //{
    //    private static DatabaseConnection instance;

    //    private DatabaseConnection()
    //    {

    //    }

    //    public static DatabaseConnection GetInstance()
    //    {
    //        if (instance == null)
    //        {
    //            instance = new DatabaseConnection();
    //        }

    //        return instance;
    //    }      
    //}
}
