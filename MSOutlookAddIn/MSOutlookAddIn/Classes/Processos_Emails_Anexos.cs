using System;
using MsConexao;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MSOutlookAddIn
{
    class Pre_Processos_Emails_Anexos
    {
        int _PK_Anexos;
        int _FK_Email;
        string _Descricao;
        string _Caminho;
        int _Tamanho;
        int _Tipo_Anexo;
        string _CID;

        public string CID
        {
            get { return _CID; }
            set { _CID = value; }
        }

        public int PK_Anexos
        {
            get { return _PK_Anexos; }
            set { _PK_Anexos = value; }
        }

        public int FK_Email
        {
            get { return _FK_Email; }
            set { _FK_Email = value; }
        }

        public string Descricao
        {
            get { return _Descricao; }
            set { _Descricao = value; }
        }        

        public string Caminho
        {
            get { return _Caminho; }
            set { _Caminho = value; }
        }        

        public int Tamanho
        {
            get { return _Tamanho; }
            set { _Tamanho = value; }
        }        

        public int Tipo_Anexo
        {
            get { return _Tipo_Anexo; }
            set { _Tipo_Anexo = value; }
        }

        DBProducao db = null;

        public void GravarAnexo()
        {
         db = new DBProducao();
            if (db.conexao.State != ConnectionState.Open)
            {
                db.AbrirConexao();
            }
            try
            {
                SqlCommand comm = new SqlCommand("insert into Pre_Processos_Emails_Anexos (FK_Email, Descricao, Caminho, Tamanho, Tipo_Anexo, CID) " +
                                                 "values(@FK_Email, @Descricao, @Caminho, @Tamanho, @Tipo_Anexo, @CID)", db.conexao);

                comm.Parameters.Add("@FK_Email", SqlDbType.Int).Value = FK_Email;
                comm.Parameters.Add("@Descricao", SqlDbType.VarChar).Value = Descricao;
                comm.Parameters.Add("@Caminho", SqlDbType.VarChar).Value = Caminho;
                comm.Parameters.Add("@Tamanho", SqlDbType.Int).Value = Tamanho;
                comm.Parameters.Add("@Tipo_Anexo", SqlDbType.Int).Value = Tipo_Anexo;
                comm.Parameters.Add("@CID", SqlDbType.VarChar).Value = CID;
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

    }
}
