using MsConexao;
using System.Data;
using System.Data.SqlClient;

namespace MSOutlookAddIn
{
    class Usuarios
    {
        string _Usuario;
        string _Senha;

        public string Usuario
        {
            get { return _Usuario; }
            set { _Usuario = value; }
        }        

        public string Senha
        {
            get { return _Senha; }
            set { _Senha = value; }
        }

        DBProducao db = null;
        SqlDataReader nwReader = null; 

        public bool ValidaUsuario()
        {
            db = new DBProducao();
            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            
            try
            {
                SqlCommand comm = new SqlCommand("select Usuario from Usuarios where Usuario ='" + Usuario + "' and Senha ='" + Senha + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {
                    return true;       
                }
                else
                {
                    return false;
                }

            }
            catch
            {                
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                nwReader.Close();
                return false;
            }
            finally
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                nwReader.Close();
            }

        }
    }
}
