using MSBiblioteca.BLL;
using System;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace MSBiblioteca.DAL
{
    internal class FollowUpDAL : BancoDados
    {
        internal bool Incluir(FollowUp obj)
        {
            const string query = "INSERT INTO Followup" +
                                 "(Processo, Codevento, Codobs, Obs_especifica, Data, Hora, link, Data_final" +
                                 ",Hora_final, Duracao, Usuario, Ref_Follow, Follow_auto, Follow_ativo)" +
                                 "VALUES(@Processo, @Codevento, @Codobs, @Obs_especifica, @Data, @Hora, @link, @Data_final," +
                                 "@Hora_final, @Duracao, @Usuario, @Ref_Follow, @Follow_auto, @Follow_ativo)";

            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(query, Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@Codevento", obj.CodigoEvento);
                    objCommand.Parameters.AddWithValue("@Codobs", obj.CodigoObs);
                    objCommand.Parameters.AddWithValue("@Obs_especifica", obj.ObsEspecifica);
                    if (obj.Data != null)
                        objCommand.Parameters.AddWithValue("@Data", obj.Data);
                    else
                        objCommand.Parameters.AddWithValue("@Data", SqlDateTime.Null);
                    objCommand.Parameters.AddWithValue("@Hora", obj.Hora);
                    objCommand.Parameters.AddWithValue("@link", obj.Link);
                    if (obj.DataFinal != null)
                        objCommand.Parameters.AddWithValue("@Data_final", obj.DataFinal);
                    else
                        objCommand.Parameters.AddWithValue("@Data_final", SqlDateTime.Null);
                    objCommand.Parameters.AddWithValue("@Hora_final", obj.HoraFinal);
                    objCommand.Parameters.AddWithValue("@Duracao", obj.Duracao);
                    objCommand.Parameters.AddWithValue("@Usuario", obj.FK_Usuario);
                    objCommand.Parameters.AddWithValue("@Ref_Follow", obj.RefFollow);
                    objCommand.Parameters.AddWithValue("@Follow_auto", obj.FollowAuto);
                    objCommand.Parameters.AddWithValue("@Follow_ativo", obj.FollowAtivo);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erro: Inclusão follow-Up - "+ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
