using System;
using System.Data;
using System.Data.SqlClient;


namespace MsConexao
{
    public class DBProducao
    {

        public SqlConnection conexao = new SqlConnection();

        public Boolean AbrirConexao()
        {
            try
            {
                conexao.ConnectionString = @"Server=msserver01;Database=MS2000;Uid=sa;Pwd=lasbrug30@;Connect Timeout=30;";
                conexao.Open();
                return true;
            }
            catch //(Exception)
            {
                return false;
            }
        }

        public void FecharConexao()
        {
            if (conexao.State == ConnectionState.Open)
            {
                conexao.Close();
                conexao.Dispose();
            }
        }
        /*

        public static void ExecutarComando(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            int registrosAfetados = comando.ExecuteNonQuery();
        }

        public static SqlDataReader SelecionarRegistros(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            return comando.ExecuteReader();
        }

        public static SqlDataReader SelecionarUmRegistro(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            return (SqlDataReader)comando.ExecuteScalar();
        }
        */
    }


    public class DBDesenvolvimento
    {

        public SqlConnection conexao = new SqlConnection();

        public Boolean AbrirConexao()
        {
            try
            {
                conexao.ConnectionString = @"Server=mssql00\mssql00;Database=MS2000;Uid=desenv;Pwd=desenv;Connect Timeout=30;";
                conexao.Open();
                return true;
            }
            catch //(Exception)
            {
                return false;
            }
        }

        public void FecharConexao()
        {
            if (conexao.State == ConnectionState.Open)
            {
                conexao.Close();
                conexao.Dispose();
            }
        }
        /*

        public static void ExecutarComando(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            int registrosAfetados = comando.ExecuteNonQuery();
        }

        public static SqlDataReader SelecionarRegistros(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            return comando.ExecuteReader();
        }

        public static SqlDataReader SelecionarUmRegistro(string textoComando)
        {
            if (conexao.State != ConnectionState.Open)
            {
                AbrirConexao();
            }
            SqlCommand comando = new SqlCommand();
            comando.CommandText = textoComando;
            comando.Connection = conexao;
            return (SqlDataReader)comando.ExecuteScalar();
        }
        */
    }
}

