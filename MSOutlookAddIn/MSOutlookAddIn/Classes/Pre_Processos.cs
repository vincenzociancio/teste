using System;
using MsConexao;
using System.Data;
using System.Data.SqlClient;

namespace MSOutlookAddIn
{
    class Pre_Processos
    {
        #region Campos
        private string _Codigo;
        private string _Importador;       
        #endregion

        #region Propriedades
        public string Codigo
        {
            get { return _Codigo; }
            set { _Codigo = value; }
        }

        public string Importador
        {
            get { return _Importador; }
            set { _Importador = value; }
        } 
        #endregion

        #region Métodos

        // Declarações do método ProcessoExiste 
        DBProducao db = null;
        SqlDataReader nwReader = null; 
        /// <summary>
        /// Método verifica se o processo existe na tabela de processos.
        /// </summary>
        /// <param name="Processo">Processo</param>
        /// <returns></returns>
        public void ProcessoExiste(string Processo, out string  Codigo_Importador, out Boolean Existe, out int Id_Pre_Processo)
        {
            db = new DBProducao();
            Codigo_Importador = "";
            Id_Pre_Processo = 0;
            Existe = false;

            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("select fk_importador, pk_codigo from Pre_Processos where codigo ='" + Processo + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {
                    Existe = true;
                    if(nwReader.Read())
                    {
                        Codigo_Importador = nwReader.GetString(0);
                        Id_Pre_Processo = nwReader.GetInt32(1);
                    }
                }
                else
                {
                    Existe = false;
                }
                
            }
            catch 
            {
                Existe = false;
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
