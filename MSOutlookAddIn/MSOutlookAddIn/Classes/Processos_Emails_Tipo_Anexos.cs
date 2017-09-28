using System;
using MsConexao;
using System.Data;
using System.Data.SqlClient;

namespace MSOutlookAddIn
{
    class Processos_Emails_Tipo_Anexos
    {
        int _PK_Tipo_Anexo;
        string _Descricao;
        string _Icone;
        string _Extensa;

        public int PK_Tipo_Anexo
        {
            get { return _PK_Tipo_Anexo; }
            set { _PK_Tipo_Anexo = value; }
        }

        public string Descricao
        {
            get { return _Descricao; }
            set { _Descricao = value; }
        }

        public string Icone
        {
            get { return _Icone; }
            set { _Icone = value; }
        }

        public string Extensa
        {
            get { return _Extensa; }
            set { _Extensa = value; }
        }

        DBProducao db = null;
        SqlDataReader nwReader = null; 
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Extensao"></param>
        /// <returns></returns>
        public int GetPKTipoAnexo(string Extensao)
        {
            db = new DBProducao();
            int ret = 0;
            char P = '.';

            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("select PK_Tipo_Anexo from Processos_Emails_Tipo_Anexos where extensao ='" + Extensao.TrimStart(P) + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {
                    if (nwReader.Read())
                    {
                        ret = Convert.ToInt16(nwReader["PK_Tipo_Anexo"].ToString());
                    }
                }
                return ret;
            }
            catch
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                nwReader.Close();
                return ret;
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
