using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class Faturas
    {
        public Faturas()
        {
        }
        public Faturas(SqlDataReader reader)
        {

        }


        public int Fatura_Id { get; set; }
        public string Incoterm { get; set; }
        public string Processo { get; set; }
        public string Codigo { get; set; }
        public string Exportador { get; set; }
        public string Vinculacao { get; set; }
        public string Condicao { get; set; }
        public float Valor_Total { get; set; }
        public float Peso_Total { get; set; }
        public float Peso_Total_Acertado { get; set; }
        public int Acrescimos_Reducoes { get; set; }
        public string Moeda { get; set; }
        public string Cobertura_Cambial { get; set; }
        public string Motivo_Sem_Cobertura { get; set; }
        public string Modalidade_de_Pagamento { get; set; }
        public string Instituicao_Financiadora { get; set; }
        public string Tipo_Parcela { get; set; }
        public string Numero_de_parcelas { get; set; }
        public string Periodicidade { get; set; }
        public float Valor_das_Parcelas { get; set; }
        public string Indicador_Periodicidade { get; set; }
        public int Taxa_de_Juros { get; set; }
        public string Codigo_Taxa_de_Juros { get; set; }
        public float Valor_Taxa_de_Juros { get; set; }
        public string ROF_BACEN { get; set; }
        public float Percentual_ROF { get; set; }
        public DateTime DT_PREV_PAG_CAMBIO { get; set; }
        public DateTime DT_PAG_CAMBIO { get; set; }
        public string STATUS_CAMBIO { get; set; }
        public string CONTRATO_CAMBIO { get; set; }
        public float SALDO_CAMBIO { get; set; }
        public DateTime DtEmissao { get; set; }
        public int Peso_Libra { get; set; }
        public int FK_Plataforma { get; set; }
        public int Frete_Incluso { get; set; }
        static public double ValorTotal(int FaturaID)
        {

            var query = "SELECT Fatura_Id, Sum(Valor_Total) AS SomaValorTotal, Sum(Peso_Total) AS SomaPesoTotal, Sum(Peso_Total_Acertado) AS SomaPesoAcertado " +
                        "FROM ItensFaturas " +
                        "WHERE Fatura_Id = @Fatura_Id " +
                        "GROUP BY Fatura_Id ";

            double valor = 0;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fatura_Id", FaturaID);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                valor = Convert.ToDouble(reader["SomaValorTotal"].ToString());
                            }
                        }
                        return valor;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        static public double ValorTotalAcrescimo(int FaturaID, bool FreteIncluso, bool SeguroIncluso, bool AcrescimoIncluso)
        {
            if (AcrescimoIncluso)
            {
                return 0;
            }
            else
            {
                var query = "SELECT Sum(VL_ACRESCIMO_MOEDA) AS ValTot " +
                            "FROM Acrescimos_Faturas " +
                            "WHERE Fatura_Id = @Fatura_Id " +
                            "and cd_met_acres_valor <> @codAcresFrete " +
                            "and cd_met_acres_valor <> @codAcresSeguro  ";

                double valor = 0;
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fatura_Id", FaturaID);
                        if (FreteIncluso)
                        {
                            cmd.Parameters.AddWithValue("@codAcresFrete", "13");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@codAcresFrete", "");
                        }

                        if (SeguroIncluso)
                        {
                            cmd.Parameters.AddWithValue("@codAcresSeguro", "14");
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@codAcresSeguro", "");
                        }

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    valor = Convert.ToDouble(reader["ValTot"].ToString());
                                }
                            }
                            return valor;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return 0;
                }
            }
        }

        static public double ValorTotalDeducao(int FaturaID)
        {
            var query = "SELECT Sum(VL_DEDUCAO_MNEG) AS ValTot " +
                        "FROM Deducoes_Faturas " +
                        "WHERE Fatura_Id = @Fatura_Id ";

            double valor = 0;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Fatura_Id", FaturaID);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                valor = Convert.ToDouble(reader["ValTot"].ToString());
                            }
                        }
                        return valor;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        static public double SomaPesoTotalAcertado(string Processo)
        {
            var query = "SELECT Processo, Sum(Peso_Total_Acertado) AS SomaPesoAcertado " +
                        "FROM Faturas " +
                        "WHERE Processo = @Processo ";

            double valor = 0;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                valor = Convert.ToDouble(reader["SomaPesoAcertado"].ToString());
                            }
                        }
                        return valor;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        public List<Faturas> buscaFatura(string processo)
        {
            List<Faturas> lstFaturas = new List<Faturas>();

            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT Fatura_Id,Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao,Valor_Total,Peso_Total,Peso_Total_Acertado ");
            sb.Append(",Acrescimos_Reducoes,Moeda,Cobertura_Cambial,Motivo_Sem_Cobertura,Modalidade_de_Pagamento,Instituicao_Financiadora ");
            sb.Append(",Tipo_Parcela,Numero_de_parcelas,Periodicidade,Valor_das_Parcelas,Indicador_Periodicidade,Taxa_de_Juros ");
            sb.Append(",Codigo_Taxa_de_Juros,Valor_Taxa_de_Juros,ROF_BACEN,Percentual_ROF,DT_PREV_PAG_CAMBIO,DT_PAG_CAMBIO,STATUS_CAMBIO ");
            sb.Append(",CONTRATO_CAMBIO,SALDO_CAMBIO,DtEmissao,Peso_Libra,FK_Plataforma,Frete_Incluso ");
            sb.Append("FROM Faturas ");
            sb.Append("WHERE Processo = @Processo ");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                lstFaturas.Add(new Faturas
                                {
                                    Codigo = dr["PROCESSO"].ToString(),
                                    Moeda = dr["Moeda"].ToString(),
                                });
                            }

                        }
                        return lstFaturas;
                    }
                }
            }
            catch (SqlException sqlex)
            {
                throw;
            }
        }

        public int QuantidadeDeFatura(string processo)
        {
            var query = "select count(*) as 'total' from Faturas where Processo = @Processo ";

            var GoOn = 0;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = Convert.ToInt16(reader["total"].ToString());
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }

        static public string MoedaFatura(string Processo)
        {
            var query = " SELECT TOP 1 Moeda FROM Faturas WHERE Processo = @Processo ";

            string moeda = "";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                moeda = reader["Moeda"].ToString();
                            }
                        }

                        return moeda;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return "";
            }
        }
    }
}
