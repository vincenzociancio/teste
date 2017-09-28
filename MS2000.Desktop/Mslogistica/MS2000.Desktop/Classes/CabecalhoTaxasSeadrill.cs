using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    class CabecalhoTaxasSeadrill
    {

        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

        public CabecalhoTaxasSeadrill()
        {
            Identificador = "H";
        }
        public string Processo { get; set; }

        public string Codigo { get; set; }

        public string Identificador { get; set; }

        public string COBERTURA_CAMBIAL { get; set; }

        public string NATUREZA_OPERACAO { get; set; }

        public string Moeda { get; set; }

        public string CodigoNoCliente { get; set; }

        public string CNPJ_CPF_COMPLETO { get; set; }

        public string CnpjAdqMercadoria { get; set; }

        public string dctoImportacao { get; set; }

        public string dataDctoImportacao { get; set; }

        private string _numeroDaFatura;

        public string nfatura
        {
            get
            {
                return _numeroDaFatura;
            }
            set
            {
                _numeroDaFatura = value;
                if (value != null)
                {
                    ValorFrete = new CabecalhoTaxasSeadrill().ObterTotalDoFrete(Codigo, value);
                }
            }
        }

        public string DESCRI_UF_DESEMB { get; set; }

        public string Cod_Moeda { get; set; }

        public decimal TAXA { get; set; }

        public string data_desembaraco { get; set; }

        public decimal peso_bruto { get; set; }

        public decimal Peso_Liquido { get; set; }

        public decimal Valor_FOB { get; set; }

        public decimal ValorFrete { get; set; }

        public decimal Valor_Seguro { get; set; }

        public decimal Valor_CIF { get; set; }

        public decimal Total_Frete { get; set; }

        public decimal QdtVolume { get; set; }

        public string Volume { get; set; }

        public int CD_REGIME_TRIBUTAR_PISCOFINS { get; set; }

        public decimal ObterTotalDoFrete(string processo, string fatura)
        {
            //   decimal valorFrete = 0;
            string query = "SELECT  CAST(SUM((itf.Rateio_Frete_prepaid * itf.Quantidade)* ptc.Taxa_conversao) AS DECIMAL(10,2)) as 'Total_Frete' " +
                           "FROM Processos P " +
                           "INNER JOIN Faturas F ON P.Codigo = F.Processo " +
                           "INNER JOIN ItensFaturas itf  ON (itf.Fatura_Id = F.Fatura_Id) " +
                           "INNER JOIN Processos_Taxas_Conversao AS ptc ON (F.Moeda = ptc.Moeda) AND (F.Processo = ptc.Processo) " +
                           "WHERE (P.Codigo= @Processo and F.Codigo = @Fatura) ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                cmd.Parameters.AddWithValue("@Fatura", fatura);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ValorFrete = decimal.Parse(reader["Total_Frete"].ToString());
                    }
                }
            }

            return ValorFrete;
        }





    }
}
