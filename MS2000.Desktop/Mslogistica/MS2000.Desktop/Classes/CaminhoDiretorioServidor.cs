using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class CaminhoDiretorioServidor
    {
        public int ID { get; set; }
        public string Descricao { get; set; }
        public string Caminho { get; set; }

        public CaminhoDiretorioServidor GetCaminhoById(int id)
        {
            try 
	        {	        
                var sql = "select top 1 id, descricao, caminho from CaminhoDiretorioServidor where id=@id";
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;                  
                using (var cmd = new SqlCommand(sql, conn))
                {                    
                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                CaminhoDiretorioServidor retorno = new  CaminhoDiretorioServidor()
                                {
                                    ID = Convert.ToInt32(reader["ID"]),
                                    Descricao = reader["Descricao"].ToString(),
                                    Caminho = reader["Caminho"].ToString()
                                };
                                return retorno;
                            }
                        }
                        else
                        {
                            return null;
                        }                       
                    }
                    return null;
                }
	        }
	        catch (Exception ex)
	        {		
		       MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
               return null;
	        }            
        }
    }
}
