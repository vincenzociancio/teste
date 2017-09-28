using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    /// <summary>
    /// Classe EmailAutoDAL
    /// </summary>
    /// <remarks>    
    /// Autor: Eduardo Souza
    /// Data de criação: 12/09/2012
    /// Descrição: Classe DAL contém apenas metodos de acesso a dados.
    /// </remarks>
    internal class EmailAutoDAL : BancoDados
    {
        internal bool Incluir(EmailAutoDTO email)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Email_auto (Programa,Assunto,Titulo,De,Para,CC,CCO,Body,Anexo,HTML,Data,Hora) ");
            strSql.Append("VALUES (@Programa,@Assunto,@Titulo,@De,@Para,@CC,@CCO,@Body,@Anexo,@HTML,@Data,@Hora)");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Programa", email.Programa);
                    objCommand.Parameters.AddWithValue("@Assunto", email.Assunto);
                    objCommand.Parameters.AddWithValue("@Titulo", email.Titulo);
                    objCommand.Parameters.AddWithValue("@De", email.De);
                    objCommand.Parameters.AddWithValue("@Para", email.Para);
                    objCommand.Parameters.AddWithValue("@CC", email.CC);
                    objCommand.Parameters.AddWithValue("@CCO", email.CCO);
                    objCommand.Parameters.AddWithValue("@Body", email.Body);
                    objCommand.Parameters.AddWithValue("@Anexo", email.Anexo);
                    objCommand.Parameters.AddWithValue("@HTML", email.HTML);
                    objCommand.Parameters.AddWithValue("@Data", DateTime.Now);
                    objCommand.Parameters.AddWithValue("@Hora", DateTime.Now);
                    objCommand.ExecuteNonQuery();                    
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);                
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
