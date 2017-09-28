using System;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class TabConversaoCambio
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string TaxaConversao { get; set; }
        public string VigenciaInicioTaxa { get; set; }
        public string VigenciaFimTaxa { get; set; }

        public bool Incluir(TabConversaoCambio obj)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO TAB_CONVERSAO_CAMBIO (Codigo, Descricao, Taxa_Conversao, Vigencia_Inicio_Taxa, Vigencia_Fim_Taxa) ");
            strSql.Append("VALUES (@Codigo, @Descricao, @Taxa_Conversao, @Vigencia_Inicio_Taxa, @Vigencia_Fim_Taxa) ");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", obj.Codigo);
                    cmd.Parameters.AddWithValue("@Descricao", obj.Descricao);
                    cmd.Parameters.AddWithValue("@Taxa_Conversao", obj.TaxaConversao);
                    cmd.Parameters.AddWithValue("@Vigencia_Inicio_Taxa", obj.VigenciaInicioTaxa);
                    cmd.Parameters.AddWithValue("@Vigencia_Fim_Taxa", obj.VigenciaFimTaxa);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        public bool DeleteAll()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "delete from TAB_CONVERSAO_CAMBIO";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.ExecuteNonQuery();
                    return true;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        public string BuscaTaxaDia(string Moeda)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "SELECT Taxa_Conversao FROM TAB_CONVERSAO_CAMBIO WHERE CODIGO = @CODIGO ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CODIGO", Moeda);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return dr["Taxa_Conversao"].ToString();
                        }

                        return "0";
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return "0";
            }
        }

        public void AtualizaTaxaConversao(string codProcesso)
        {
            bool atualizaAdmissao = false;
            bool atualizaConsumo = false;
            bool moedaFrete = false;
            bool moedaSeguro = false;
            bool moedaDespesa = false;
            //int id_fatura = 0;

            Processo processo = new Processo();

            processo.BuscarPorCodigo(codProcesso);

            Conhecimento conhecimento = new Conhecimento();

            conhecimento.BuscarPorConhecimento(codProcesso);

            Faturas fatura = new Faturas();
            var faturas = (new Faturas()).buscaFatura(codProcesso);

            if (processo.RetornaID(codProcesso) > 0)
            {
                if ((processo.Tipo != "12") && (string.IsNullOrEmpty(processo.NR_DECLARACAO_IMP)))
                {
                    atualizaAdmissao = true;
                    atualizaConsumo = true;
                }
                else
                {
                    if (string.IsNullOrEmpty(processo.NR_DECLARACAO_IMP))
                    {
                        atualizaAdmissao = true;
                    }

                    if (string.IsNullOrEmpty(processo.NR_DECLARACAO_IMPC))
                    {
                        atualizaConsumo = true;
                    }
                }

                if (atualizaAdmissao || atualizaConsumo)
                {
                    AtualizaMoeda(processo.Codigo, "220", atualizaAdmissao, atualizaConsumo);
                    if (fatura.QuantidadeDeFatura(codProcesso) == 0)
                    {
                        MessageBox.Show("A conversão não será concluída,processo não foi encontrado na respectiva fatura.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    if (fatura.QuantidadeDeFatura(codProcesso) == 1)
                    {
                        foreach (var item in faturas)
                        {
                            if (item.Moeda != "220")
                                AtualizaMoeda(processo.Codigo, item.Moeda, atualizaAdmissao, atualizaConsumo);

                            if (item.Moeda == conhecimento.Moeda_Frete)
                                moedaFrete = true;

                            if (item.Moeda == conhecimento.Moeda_Seguro)
                                moedaSeguro = true;

                            if (item.Moeda == conhecimento.Moeda_Despesas_ate_FOB)
                                moedaDespesa = true;
                        }
                    }
                    else
                    {
                        foreach (var item in faturas)
                        {
                            if (item.Moeda != "220")
                                AtualizaMoeda(processo.Codigo, item.Moeda, atualizaAdmissao, atualizaConsumo);

                            if (item.Moeda == conhecimento.Moeda_Frete)
                                moedaFrete = true;

                            if (item.Moeda == conhecimento.Moeda_Seguro)
                                moedaSeguro = true;

                            if (item.Moeda == conhecimento.Moeda_Despesas_ate_FOB)
                                moedaDespesa = true;
                        }
                    }

                    if (conhecimento.Moeda_Frete == conhecimento.Moeda_Seguro)
                        moedaSeguro = true;

                    if (conhecimento.Moeda_Frete == conhecimento.Moeda_Despesas_ate_FOB)
                        moedaDespesa = true;

                    if (conhecimento.Moeda_Seguro == conhecimento.Moeda_Despesas_ate_FOB)
                        moedaDespesa = true;

                    if ((!moedaFrete) || (!string.IsNullOrEmpty(conhecimento.Moeda_Frete)))
                        AtualizaMoeda(processo.Codigo, conhecimento.Moeda_Frete, atualizaAdmissao, atualizaConsumo);

                    if ((!moedaSeguro) || (!string.IsNullOrEmpty(conhecimento.Moeda_Seguro)))
                        AtualizaMoeda(processo.Codigo, conhecimento.Moeda_Seguro, atualizaAdmissao, atualizaConsumo);

                    if ((!moedaDespesa) || (!string.IsNullOrEmpty(conhecimento.Moeda_Despesas_ate_FOB)))
                        AtualizaMoeda(processo.Codigo, conhecimento.Moeda_Despesas_ate_FOB, atualizaAdmissao, atualizaConsumo);

                }
            }
        }

        public void AtualizaMoeda(string codProcesso, string moeda, bool atualizaAdmissao, bool atualizaConsumo)
        {
            double novaTaxa;
            double vTaxa;
            double vTaxac;

            novaTaxa = Convert.ToDouble(BuscaTaxaDia(moeda));

            string query = "SELECT Processo, Moeda, Taxa_conversao, Taxa_conversaoc " +
                           "FROM Processos_Taxas_Conversao " +
                           "WHERE Processo = @Processo " +
                           "AND Moeda    = @Moeda";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", codProcesso);
                cmd.Parameters.AddWithValue("@Moeda", moeda);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        vTaxa = novaTaxa;
                        vTaxac = novaTaxa;

                        reader.Read();

                        if (atualizaAdmissao == false)
                        {
                            vTaxa = Convert.ToDouble(reader["Taxa_conversao"]);
                        }

                        if (atualizaConsumo == false)
                        {
                            vTaxac = Convert.ToDouble(reader["Taxa_conversaoc"]);
                        }

                        AlteraProcessoTaxaConversao(codProcesso, moeda, vTaxa, vTaxac);
                    }
                    else
                    {
                        IncluiProcessoTaxaConversao(codProcesso, moeda, novaTaxa);
                    }

                }
            }
        }

        public void AlteraProcessoTaxaConversao(string codProcesso, string moeda, double taxa, double taxac)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Processos_Taxas_Conversao SET " +
                               "Taxa_conversao = @Taxa_conversao, " +
                               "Taxa_conversaoc = @Taxa_conversaoc " +
                               "WHERE Processo = @Processo AND Moeda = @Moeda ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", codProcesso);
                    cmd.Parameters.AddWithValue("@moeda", moeda);
                    cmd.Parameters.AddWithValue("@taxa_conversao", taxa);
                    cmd.Parameters.AddWithValue("@taxa_conversaoc", taxac);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public void IncluiProcessoTaxaConversao(string codProcesso, string moeda, double taxa)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO Processos_Taxas_Conversao ( Empresa,filial,processo,moeda,taxa_conversao,taxa_conversaoc ) " +
                               "SELECT @Empresa,@filial,@processo,@moeda,@taxa_conversao,@taxa_conversaoc ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Empresa", "1");
                    cmd.Parameters.AddWithValue("@filial", "RJO");
                    cmd.Parameters.AddWithValue("@Processo", codProcesso);
                    cmd.Parameters.AddWithValue("@moeda", moeda);
                    cmd.Parameters.AddWithValue("@taxa_conversao", taxa);
                    cmd.Parameters.AddWithValue("@taxa_conversaoc", taxa);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
