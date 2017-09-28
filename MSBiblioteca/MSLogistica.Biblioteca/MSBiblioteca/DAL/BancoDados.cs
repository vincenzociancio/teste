using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MSBiblioteca.DAL
{
    public abstract class BancoDados
    {
        /// <summary>
        /// Representa a conexão com SQL Server.
        /// </summary>
        static protected SqlConnection Conexao = new SqlConnection();
        static private bool ConexaoOK = false;
        static private string connectionString;

        protected BancoDados()
        {
            try
            {
                connectionString = @"Data Source=msserver01;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;";
               // connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            }
            catch (Exception)
            {
                connectionString = @"Data Source=mssql2000;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;";
                //connectionString = @"Data Source=mssql00;Initial Catalog=MS2000;Persist Security Info=True;User ID=sa;Password=lasbrug30@;";
            }           

        }

        /// <summary>
        /// Abre um conexão com banco de dados SQL Server.
        /// </summary>
        /// <returns></returns>
        protected static bool AbrirConexao()
        {
            try
            {
                if (Conexao.State != ConnectionState.Open)
                {
                    Conexao.ConnectionString = connectionString;               
                    Conexao.Open();
                }
                ConexaoOK = true;
                return ConexaoOK;
            }
            catch (SqlException ex)
            {
                ConexaoOK = false;
                return ConexaoOK;
                throw new Exception(ex.Message);
            }
            catch (Exception ex)
            {
                ConexaoOK = false;
                return ConexaoOK;
                throw new Exception(ex.Message);
            }
            finally
            {
                if (ConexaoOK == false)
                {
                    if (Conexao != null)
                    {
                        Conexao.Close();
                        Conexao.Dispose();
                    }
                }
            }

        }

        /// <summary>
        /// Fecha a conexão com banco de dados SQL Server.
        /// </summary>
        protected static void FecharConexao()
        {
            if (Conexao.State == ConnectionState.Open)
            {
                Conexao.Close();
                Conexao.Dispose();
            }
        }
    }
}
