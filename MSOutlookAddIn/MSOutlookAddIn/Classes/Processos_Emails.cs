using System;
using MsConexao;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using MSOutlookAddIn.Classes;

namespace MSOutlookAddIn
{
    class Processos_Emails
    {
        #region Campos
        int _PK_ID;
        string _FK_Processo;
        string _Email_ID;
        string _Email_De;
        string _Email_Para;
        string _Email_CC;
        string _Email_CCO;
        string _Email_Assunto;
        string _Email_BodyHTML;
        string _Email_BodyHTMLOriginal;
        string _Email_BodyTXT;
        Importancia _Email_Importancia;
        string _FK_Usuario;
        DateTime _DT_Email;
        DateTime _DT_Cadastro;
        #endregion

        #region Propriedades
        public int PK_ID
        {
            get { return _PK_ID; }
            set { _PK_ID = value; }
        }

        public string FK_Processo
        {
            get { return _FK_Processo; }
            set { _FK_Processo = value; }
        }

        public string Email_ID
        {
            get { return _Email_ID; }
            set { _Email_ID = value; }
        }

        public string Email_De
        {
            get { return _Email_De; }
            set { _Email_De = value; }
        }

        public string Email_Para
        {
            get { return _Email_Para; }
            set { _Email_Para = value; }
        }

        public string Email_CC
        {
            get { return _Email_CC; }
            set { _Email_CC = value; }
        }

        public string Email_CCO
        {
            get { return _Email_CCO; }
            set { _Email_CCO = value; }
        }

        public string Email_Assunto
        {
            get { return _Email_Assunto; }
            set { _Email_Assunto = value; }
        }

        public string Email_BodyHTML
        {
            get { return _Email_BodyHTML; }
            set { _Email_BodyHTML = value; }
        }

        public string Email_BodyHTMLOriginal
        {
            get { return _Email_BodyHTMLOriginal; }
            set { _Email_BodyHTMLOriginal = value; }
        }

        public string Email_BodyTXT
        {
            get { return _Email_BodyTXT; }
            set { _Email_BodyTXT = value; }
        }

        public Importancia Email_Importancia
        {
            get { return _Email_Importancia; }
            set { _Email_Importancia = value; }
        }

        public string FK_Usuario
        {
            get { return _FK_Usuario; }
            set { _FK_Usuario = value; }
        }

        public DateTime DT_Email
        {
            get { return _DT_Email; }
            set { _DT_Email = value; }
        }

        public DateTime DT_Cadastro
        {
            get { return _DT_Cadastro; }
            set { _DT_Cadastro = value; }
        }
        #endregion

        #region Métodos

        DBProducao db = null;

        /// <summary>
        /// Método para gravar registro
        /// </summary>
        /// <returns>boolean</returns>
        public bool InsertProcessos_Emails()
        {
            db = new DBProducao();
            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comselect = new SqlCommand("select FK_Processo, Email_ID, Email_Assunto from Processos_Emails where FK_Processo='" + FK_Processo + "' and Email_ID='" + Email_ID + "' and Email_Assunto='" + Email_Assunto + "'", db.conexao);
                SqlDataReader dr = comselect.ExecuteReader();

                if (!dr.HasRows)
                {
                    dr.Close();


                    SqlCommand comm = new SqlCommand("insert into Processos_Emails (FK_Processo, Email_ID, Email_De, Email_Para, Email_CC, Email_CCO, Email_Assunto, Email_BodyHTML, Email_BodyHTMLOriginal, Email_BodyTXT, Email_Importancia, DT_Email, DT_Cadastro, FK_Usuario) " +
                                                     "values(@FK_Processo, @Email_ID, @Email_De, @Email_Para, @Email_CC, @Email_CCO, @Email_Assunto, @Email_BodyHTML, @Email_BodyHTMLOriginal, @Email_BodyTXT, @Email_Importancia, @DT_Email, @DT_Cadastro, @FK_Usuario)", db.conexao);

                    comm.Parameters.Add("@FK_Processo", SqlDbType.VarChar).Value = FK_Processo;
                    comm.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = Email_ID;
                    comm.Parameters.Add("@Email_De", SqlDbType.VarChar).Value = Email_De;
                    comm.Parameters.Add("@Email_Para", SqlDbType.VarChar).Value = Email_Para;
                    comm.Parameters.Add("@Email_CC", SqlDbType.VarChar).Value = Email_CC;
                    comm.Parameters.Add("@Email_CCo", SqlDbType.VarChar).Value = Email_CCO;
                    comm.Parameters.Add("@Email_Assunto", SqlDbType.VarChar).Value = Email_Assunto;
                    comm.Parameters.Add("@Email_BodyHTML", SqlDbType.VarChar).Value = Email_BodyHTML;
                    comm.Parameters.Add("@Email_BodyHTMLOriginal", SqlDbType.VarChar).Value = Email_BodyHTMLOriginal;
                    comm.Parameters.Add("@Email_BodyTXT", SqlDbType.VarChar).Value = Email_BodyTXT;
                    comm.Parameters.Add("@Email_Importancia", SqlDbType.VarChar).Value = Email_Importancia;
                    comm.Parameters.Add("@DT_Email", SqlDbType.DateTime).Value = DT_Email;
                    comm.Parameters.Add("@DT_Cadastro", SqlDbType.DateTime).Value = DT_Cadastro;
                    comm.Parameters.Add("@FK_Usuario", SqlDbType.VarChar).Value = FK_Usuario;
                    comm.ExecuteNonQuery();
                    return true;
                }
                else
                {
                    MessageBox.Show("Este e-mail já foi vinculado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    return false;
                }
            }
            catch (Exception ex)
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            finally
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
            }
        }

        /// <summary>
        /// Seleciona emails 
        /// </summary>
        /// <param name="Processo"></param>
        /// <returns></returns>
        public DataTable SelectViculados(string Processo)
        {
            try
            {
                DataTable dt = new DataTable();

                db = new DBProducao();
                if (db.conexao.State != ConnectionState.Open)
                {
                    db.AbrirConexao();
                }
               
                var sql = "select top 10 Email_De as 'De', Email_Para as 'Para', Email_Assunto as 'Assunto', FK_Usuario as 'Usuário', DT_Cadastro as 'Vinculação' from Processos_Emails where FK_Processo ='" + Processo + "' order by PK_ID desc ";

                using (SqlCommand cmd = new SqlCommand(sql, db.conexao))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dt.Load(dr);
                        }
                    }
                }

                return dt;
            }
            finally
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        SqlDataReader nwReader = null;
        public int GetIDProcessosEmails(string Usuario)
        {
            db = new DBProducao();
            int ret = 0;

            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("select Max(PK_ID) as ID from processos_emails where FK_Usuario ='" + Usuario + "'", db.conexao);
                nwReader = comm.ExecuteReader();

                if (nwReader.HasRows)
                {
                    while (nwReader.Read())
                    {
                        ret = (int)nwReader["ID"]; //Convert.ToInt16(nwReader.GetString(0));
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

        public void UpdateBody()
        {
            db = new DBProducao();
            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("update Processos_Emails set Email_BodyHTML = @Email_BodyHTML " +
                                                 "where PK_ID= @PK_ID", db.conexao);

                comm.Parameters.Add("@PK_ID", SqlDbType.Int).Value = PK_ID;
                comm.Parameters.Add("@Email_BodyHTML", SqlDbType.VarChar).Value = Email_BodyHTML;
                comm.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
                MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
            finally
            {
                if (db.conexao.State == ConnectionState.Open)
                {
                    db.FecharConexao();
                }
            }
        }
        #endregion
    }
}
