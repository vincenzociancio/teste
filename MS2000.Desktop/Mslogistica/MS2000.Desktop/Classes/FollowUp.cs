using System;
using System.Data.SqlClient;

namespace MS2000.Desktop.Classes
{
    public class FollowUp
    {
        public FollowUp()
        {

        }

        public int FK_Processo { get; set; }
        public string Processo { get; set; }
        public int Sequencial { get; set; }
        public string CodigoEvento { get; set; }
        public string CodigoObs { get; set; }
        public string ObsEspecifica { get; set; }
        public DateTime? Data { get; set; }
        public string Hora { get; set; }
        public string Link { get; set; }
        public DateTime? DataFinal { get; set; }
        public string HoraFinal { get; set; }
        public int Duracao { get; set; }
        public int FK_Usuario { get; set; }
        public string Usuario { get; set; }
        public int RefFollow { get; set; }
        public int FollowAuto { get; set; }
        public int FollowAtivo { get; set; }
        public int Tag { get; set; }

        public bool Incluir(FollowUp obj)
        {
            const string query = "INSERT INTO Followup" +
                                 "(FK_Processo, Processo, Codevento, Codobs, Obs_especifica, Data, Hora, link, Data_final" +
                                 ",Hora_final, Duracao, FK_Usuario, Usuario, Ref_Follow, Follow_auto, Follow_ativo)" +
                                 "VALUES(@FK_Processo, @Processo, @Codevento, @Codobs, @Obs_especifica, @Data, @Hora, @link, @Data_final," +
                                 "@Hora_final, @Duracao, @FK_Usuario, @Usuario, @Ref_Follow, @Follow_auto, @Follow_ativo)";
            try
            {

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@Processo", obj.Processo);
                    objCommand.Parameters.AddWithValue("@FK_Processo", obj.FK_Processo);
                    objCommand.Parameters.AddWithValue("@Codevento", obj.CodigoEvento);
                    objCommand.Parameters.AddWithValue("@Codobs", obj.CodigoObs);
                    objCommand.Parameters.AddWithValue("@Obs_especifica", string.IsNullOrEmpty(obj.ObsEspecifica) ? (object)DBNull.Value : obj.ObsEspecifica);
                    objCommand.Parameters.AddWithValue("@Data", obj.Data == null ? (object)DBNull.Value : obj.Data);
                    objCommand.Parameters.AddWithValue("@Hora", obj.Hora == null ? (object)DBNull.Value : obj.Hora);
                    objCommand.Parameters.AddWithValue("@link", string.IsNullOrEmpty(obj.Link) ? (object)DBNull.Value : obj.Link);
                    objCommand.Parameters.AddWithValue("@Data_final", obj.DataFinal == null ? (object)DBNull.Value : obj.DataFinal);
                    objCommand.Parameters.AddWithValue("@Hora_final", obj.HoraFinal == null ? (object)DBNull.Value : obj.HoraFinal);
                    objCommand.Parameters.AddWithValue("@Duracao", obj.Duracao);
                    objCommand.Parameters.AddWithValue("@Usuario", obj.Usuario);
                    objCommand.Parameters.AddWithValue("@FK_Usuario", obj.FK_Usuario);
                    objCommand.Parameters.AddWithValue("@Ref_Follow", obj.RefFollow);
                    objCommand.Parameters.AddWithValue("@Follow_auto", obj.FollowAuto);
                    objCommand.Parameters.AddWithValue("@Follow_ativo", obj.FollowAtivo);
                    objCommand.ExecuteNonQuery();
                    return true;
                }                
            }
            catch (Exception ex)
            {
                throw new Exception("Erro: Inclusão follow-Up - " + ex.Message);
            }
        }

        public static bool IncluirFollowResumido(string Processo, int FK_Processo, string CodEvento, string CodObs, string ObsEspecifica, string Data)
        {
            string query = "INSERT INTO Followup                                                                                                     " +
                           "( Processo,  FK_Processo,  Codevento,  Codobs,  Obs_especifica,  Data,  Hora, Duracao, Usuario, FK_Usuario, Ref_Follow)  " +
                           "   VALUES                                                                                                                " +
                           "(@Processo, @FK_Processo, @Codevento, @Codobs, @Obs_especifica, @Data, @Hora, 0, @Usuario, @FK_Usuario, 0)               ";
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {                    
                    cmd.Parameters.AddWithValue("@Processo", Processo);
                    cmd.Parameters.AddWithValue("@FK_Processo", FK_Processo);
                    cmd.Parameters.AddWithValue("@Codevento", CodEvento);
                    cmd.Parameters.AddWithValue("@Codobs", CodObs);
                    cmd.Parameters.AddWithValue("@Obs_especifica", string.IsNullOrEmpty(ObsEspecifica) ? (object)DBNull.Value : ObsEspecifica);
                    cmd.Parameters.AddWithValue("@Data", string.IsNullOrEmpty(Data) ? (object)DateTime.Now.Date : Data);
                    cmd.Parameters.AddWithValue("@Hora", DateTime.Now.ToString("HH:mm"));
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);
                    cmd.Parameters.AddWithValue("@FK_Usuario", FrmPrincipal.PK_UsuarioLogado);
                    cmd.Parameters.AddWithValue("@Ref_Follow", 0);
                    cmd.ExecuteNonQuery();

                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erro: Inclusão follow-Up - " + ex.Message);
            }
        }

        public void ExcluirPorProcessoEvento(string processo, string codigoEvento)
        {
            string QUERY = "DELETE FROM FOLLOWUP WHERE PROCESSO = @processo AND CODEVENTO = @codevento";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (SqlCommand cmd = new SqlCommand(QUERY, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    cmd.Parameters.AddWithValue("@codevento", codigoEvento);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (SqlException sqlEx)
            {
                throw;
            }
        }

        public static bool VerificaEIncluiSeAusente(string processo, string cod_evento, string cod_obs = "0")
        {
            string query = "SELECT PROCESSO FROM FOLLOWUP WHERE PROCESSO = @processo AND Codevento = @Codevento AND Codobs = @Codobs ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    cmd.Parameters.AddWithValue("@codevento", cod_evento);
                    cmd.Parameters.AddWithValue("@Codobs", cod_obs);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (!reader.HasRows)
                        {
                            IncluirFollowResumido(processo, 0, cod_evento, cod_obs, "", "");

                            return true;
                        } else
                    	{
                            return false;
	                    }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;

                return false;
            }
        }

        public static bool VerificaEIncluiSeAusenteComData(string processo, string cod_evento, string cod_obs = "0", string data = "")
        {
            string query = "SELECT PROCESSO FROM FOLLOWUP WHERE PROCESSO = @processo AND Codevento = @Codevento AND Codobs = @Codobs ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    cmd.Parameters.AddWithValue("@codevento", cod_evento);
                    cmd.Parameters.AddWithValue("@Codobs", cod_obs);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();

                        if (!reader.HasRows)
                        {
                            IncluirFollowResumido(processo, 0, cod_evento, cod_obs, "", data);

                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;

                return false;
            }
        }
    }
}
