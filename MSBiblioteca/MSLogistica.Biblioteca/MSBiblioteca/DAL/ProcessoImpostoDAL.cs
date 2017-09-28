using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class ProcessoImpostoDAL : BancoDados
    {
        internal bool AtualizadoZero(string processo)
        {
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand("UPDATE Processos_Visao_Geral SET Atualizado = 0 WHERE Processo = @Processo", Conexao))
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
