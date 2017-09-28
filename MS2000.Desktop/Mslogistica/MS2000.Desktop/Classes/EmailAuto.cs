using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
   public class EmailAuto
    {   
       public int Codigo { get; set; }
       public string Programa { get; set; }
       public string Assunto { get; set; }
       public string Titulo { get; set; }
       public string De { get; set; }
       public string Para { get; set; }
       public string CC { get; set; }
       public string CCO { get; set; }
       public string Body { get; set; }
       public string Anexo { get; set; }
       public int HTML { get; set; }
       public DateTime Data { get; set; }
       public DateTime Hora { get; set; }
       public int Lixo { get; set; }
       public string MensagemErro { get; set; }

       public static void incluir(string Programa, string Assunto, string titulo, string de ,string para ,string cc,string cco,string body, string anexo, int html )
       {
           try
           {
               SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
               string query = "INSERT INTO Email_auto "+
                              "(Programa,Assunto,Titulo,De,Para,CC,CCO,Body,Anexo,HTML,Data,Hora) "+
                              "VALUES "+
                              "(@Programa,@Assunto,@Titulo,@De,@Para,@CC,@CCO,@Body,@Anexo,@HTML,@Data,@Hora)";
               using (SqlCommand cmd = new SqlCommand(query, conn))
               {
                   cmd.Parameters.AddWithValue("@Programa", Programa);
                   cmd.Parameters.AddWithValue("@Assunto", Assunto);
                   cmd.Parameters.AddWithValue("@Titulo", titulo);
                   cmd.Parameters.AddWithValue("@De", de);
                   cmd.Parameters.AddWithValue("@Para", para);
                   cmd.Parameters.AddWithValue("@CC", cc);
                   cmd.Parameters.AddWithValue("@CCO", cco);
                   cmd.Parameters.AddWithValue("@Body", body);
                   cmd.Parameters.AddWithValue("@Anexo", anexo);
                   cmd.Parameters.AddWithValue("@HTML", html);
                   cmd.Parameters.AddWithValue("@Data", DateTime.Now.Date);
                   cmd.Parameters.AddWithValue("@Hora", DateTime.Now);
                   cmd.ExecuteNonQuery();
               }

           }
           catch (Exception ex)
           {
               MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
           }
       }

    }
}
