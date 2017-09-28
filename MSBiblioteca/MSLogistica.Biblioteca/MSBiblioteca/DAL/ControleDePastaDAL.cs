using MSBiblioteca.BLL;
using System;
using System.Data.SqlClient;
using System.Text;

namespace MSBiblioteca.DAL
{
    internal class ControleDePastaDAL : BancoDados
    {
        internal bool Incluir(ControleDePasta obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Controle_Pastas (Empresa, Filial, Processo, Usuario, Aceite, Data) ");
            strSql.Append("VALUES (@Empresa, @Filial, @Processo, @Usuario, @Aceite, @Data ) ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", obj.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", obj.Filial);
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@Usuario", obj.FK_Usuario);
                    objCommand.Parameters.AddWithValue("@Aceite", obj.Aceite);
                    objCommand.Parameters.AddWithValue("@Data", obj.Data);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
