using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class ParametroFaturamentoDAL : BancoDados
    {
        internal bool ClienteTemParametroFaturamento(string importador)
        {
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand("SELECT TOP 1 Ativo FROM Parametros_Faturamento WHERE Ativo = 1 AND Importador = @Importador", Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Importador", importador);
                    return (objCommand.ExecuteNonQuery() > 0);
                }
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
