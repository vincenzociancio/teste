using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using MSBiblioteca.DTO;

namespace MSBiblioteca.DAL
{
    internal class ItensFaturaRateioDAL : BancoDados
    {
        internal Boolean AlterarItensFaturaRateio(ItensFaturaRateioDTO ParametroRateio)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE ItensFaturas  SET ");
            strSql.Append("Rateio_Acrescimos = Cast(@Rateio_Acrescimos * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_Embalagem = Cast(@Rateio_Embalagem * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_Frete_Interno_imp = Cast(@Rateio_Frete_Interno_imp * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_Seguro_Interno = Cast(@Rateio_Seguro_Interno * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_outras_import = Cast(@Rateio_outras_import * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_startup = Cast(@Rateio_startup * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_jurosfin = Cast(@Rateio_jurosfin * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_montagem = Cast(@Rateio_montagem * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_Frete_Interno_exp = Cast(@Rateio_Frete_Interno_exp * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_carga_exp = Cast(@Rateio_carga_exp * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_outras_export = Cast(@Rateio_outras_export * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_frete_fatura = Cast(@Rateio_frete_fatura * Peso_Unitario_Acertado as varchar), ");
            strSql.Append("Rateio_seguro_fatura = Cast(@Rateio_seguro_fatura * valor_unitario as varchar), ");
            strSql.Append("Rateio_carga_imp = Cast(@Rateio_carga_imp * Peso_Unitario_Acertado as varchar) ");
            strSql.Append("WHERE Processo = @Processo AND Fatura = @Fatura ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Rateio_Acrescimos", ParametroRateio.Rateio_Acrescimos);
                    objCommand.Parameters.AddWithValue("@Rateio_Embalagem", ParametroRateio.Rateio_Embalagem);
                    objCommand.Parameters.AddWithValue("@Rateio_Frete_Interno_imp", ParametroRateio.Rateio_Frete_Interno_imp);
                    objCommand.Parameters.AddWithValue("@Rateio_Seguro_Interno", ParametroRateio.Rateio_Seguro_Interno);
                    objCommand.Parameters.AddWithValue("@Rateio_outras_import", ParametroRateio.Rateio_outras_import);
                    objCommand.Parameters.AddWithValue("@Rateio_startup", ParametroRateio.Rateio_startup);
                    objCommand.Parameters.AddWithValue("@Rateio_jurosfin", ParametroRateio.Rateio_jurosfin);
                    objCommand.Parameters.AddWithValue("@Rateio_montagem", ParametroRateio.Rateio_montagem);
                    objCommand.Parameters.AddWithValue("@Rateio_Frete_Interno_exp", ParametroRateio.Rateio_Frete_Interno_exp);
                    objCommand.Parameters.AddWithValue("@Rateio_carga_exp", ParametroRateio.Rateio_carga_exp);
                    objCommand.Parameters.AddWithValue("@Rateio_outras_export", ParametroRateio.Rateio_outras_export);
                    objCommand.Parameters.AddWithValue("@Rateio_frete_fatura", ParametroRateio.Rateio_frete_fatura);
                    objCommand.Parameters.AddWithValue("@Rateio_seguro_fatura", ParametroRateio.Rateio_seguro_fatura);
                    objCommand.Parameters.AddWithValue("@Rateio_carga_imp", ParametroRateio.Rateio_carga_imp);
                    objCommand.Parameters.AddWithValue("@Processo", ParametroRateio.Processo);
                    objCommand.Parameters.AddWithValue("@Fatura", ParametroRateio.Fatura.ToUpper());
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
        internal Boolean AlterarItensFaturaRateio_Acrescimos(ItensFaturaRateioDTO ParametroRateio)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE ItensFaturas SET ");
            strSql.Append("Rateio_Acrescimos = (Rateio_Embalagem+ ");
            strSql.Append("Rateio_Frete_Interno_imp + ");
            strSql.Append("Rateio_Seguro_Interno + ");
            strSql.Append("Rateio_outras_import +");
            strSql.Append("Rateio_startup + ");
            strSql.Append("Rateio_jurosfin + ");
            strSql.Append("Rateio_montagem + ");
            strSql.Append("Rateio_Frete_Interno_exp + ");
            strSql.Append("Rateio_carga_exp + ");
            strSql.Append("Rateio_outras_export + ");
            strSql.Append("Rateio_frete_fatura + ");
            strSql.Append("Rateio_seguro_fatura + ");
            strSql.Append("Rateio_carga_imp )");
            strSql.Append("WHERE Processo = @Processo AND Fatura = @Fatura");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", ParametroRateio.Processo.ToUpper());
                    objCommand.Parameters.AddWithValue("@Fatura", ParametroRateio.Fatura.ToUpper());
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
