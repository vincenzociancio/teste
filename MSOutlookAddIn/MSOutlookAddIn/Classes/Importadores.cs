using System;
using System.Data;
using System.Data.SqlClient;
using MsConexao;

namespace MSOutlookAddIn
{
    class Importadores
    {
        #region Campos
        private string _Razao_Social;
        private string _CNPJ;
        #endregion

        #region Propriedades        
        public string Razao_Social
        {
            get { return _Razao_Social; }
            set { _Razao_Social = value;}
        }

        public string CNPJ
        {
            get { return Convert.ToDouble(_CNPJ).ToString(@"000\.000\.000\/0000\-00"); }
            set { _CNPJ = value; }
        }
        #endregion
        
        #region Métodos

        DBProducao db = null;
        SqlDataReader nwReader = null; 
        public void SelectImportador(String Codigo)
        {
            db = new DBProducao();

            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("select Razao_Social, CNPJ_CPF_COMPLETO from Importadores where codigo ='" + Codigo + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {                    
                    if (nwReader.Read())
                    {
                        Razao_Social = nwReader.GetString(0);
                        CNPJ = nwReader.GetString(1);  
                    }
                }                

            }
            catch
            {                
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                nwReader.Close();

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
        #endregion

    }
}
