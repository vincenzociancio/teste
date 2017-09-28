﻿using System;
using MsConexao;
using System.Data;
using System.Data.SqlClient;

namespace MSOutlookAddIn
{
    class Processos
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
        public void ProcessoExiste(string Processo, out string  Codigo_Importador, out Boolean Existe)
        {
            db = new DBProducao();
            Codigo_Importador = "";
            Existe = false;

            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("select Importador from processos where codigo ='" + Processo + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {
                    Existe = true;
                    if(nwReader.Read())
                    {
                        Codigo_Importador = nwReader.GetString(0);
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
