using System;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class TributacaoItemFaturaDAL:BancoDados
    {
        internal bool ExisteTributacao(string processo)
        {     
            bool retorno = false;
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand("SELECT TOP 1 Processo FROM Tributacao_Item_Fatura WHERE Processo = @Processo", Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        retorno = objDr.HasRows;
                    }
                }
                return retorno;
            }
            catch (Exception ex)
            {
                return retorno;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
