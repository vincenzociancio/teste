using System;
using System.Data.SqlClient;

namespace MSBiblioteca.DAL
{
    internal class ProcessoVisaoGeralDAL : BancoDados
    {
        internal bool AtualizadoZero(string processo)
        {
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand("UPDATE Processos_Impostos SET Atualizado = 0 WHERE Processo = @Processo", Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
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
