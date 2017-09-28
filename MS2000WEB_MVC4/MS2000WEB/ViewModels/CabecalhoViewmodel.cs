using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;

namespace MS2000WEB.ViewModels
{
    
    public class CabecalhoViewmodel 
    {
        private MS2000Context db = new MS2000Context();

        public CabecalhoViewmodel()
        {
            Identificador = "H";
        }
        public string Processo { get; set; }

        public string Codigo { get; set; }        

        [Required]
        [StringLength(1)]
        public string Identificador { get; set; }

        [Required]
        [StringLength(1)]
        public string COBERTURA_CAMBIAL { get; set; }

        [Required]
        [StringLength(2)]
        public string NATUREZA_OPERACAO { get; set; }

        [Required]
        [StringLength(3)]
        public string Moeda { get; set; }

        [Required]
        [StringLength(14)]
        public string CodigoNoCliente { get; set; }

        [Required]
        [StringLength(14)]
        public string CNPJ_CPF_COMPLETO { get; set; }

        [Required]
        [StringLength(14)]
        public string CnpjAdqMercadoria { get; set; }

        [Required]
        [StringLength(20)]
        public string dctoImportacao { get; set; }

        [Required]
        [StringLength(10)]
        public string dataDctoImportacao { get; set; }

        [Required]
        [StringLength(20)]
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
                    ValorFrete = new CabecalhoViewmodel().ObterTotalDoFrete(Codigo, value);
                }
            }
        }

        [Required]
        [StringLength(2)]
        public string DESCRI_UF_DESEMB { get; set; }

        [Required]
        [StringLength(3)]
        public string Cod_Moeda { get; set; }

        [Required]
        public decimal TAXA { get; set; }

        [Required]
        [StringLength(10)]
        public string data_desembaraco { get; set; }

        [Required]
        public decimal peso_bruto { get; set; }

        public decimal Peso_Liquido { get; set; }

        public decimal Valor_FOB { get; set; }

        public decimal ValorFrete { get; set; }

        public decimal Valor_Seguro { get; set; }

        public decimal Valor_CIF { get; set; }

        public decimal Total_Frete { get; set; }

        [Required]
        public int QdtVolume { get; set; }

        [Required]
        [StringLength(50)]
        public string Volume { get; set; }

        public int CD_REGIME_TRIBUTAR_PISCOFINS { get; set; }

        public decimal ObterTotalDoFrete(string processo, string fatura)
        {
         //   decimal valorFrete = 0;
            string query = "SELECT  CAST(SUM((itf.Rateio_Frete_prepaid * itf.Quantidade)* ptc.Taxa_conversao) AS DECIMAL(10,2)) as 'Total_Frete' " +
                           "FROM ItensFaturas itf " +
                           "INNER JOIN Processos ON itf.Processo = Processos.Codigo " +
                           "INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo) " +
                           "INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo) " +
                           "WHERE (Itf.Processo= @Processo and Faturas.Codigo = @Fatura)";

            var dadosProcesso = db.Database.SqlQuery<CabecalhoViewmodel>(query, new SqlParameter("@Processo", processo), new SqlParameter("@Fatura", fatura)).ToList();

            var lista = new List<CabecalhoViewmodel>();
            foreach (var i in dadosProcesso.ToList())
            {
                //lista.Add(new CabecalhoViewmodel
                //{
                ValorFrete = Convert.ToDecimal(i.Total_Frete);
                //});
            }
            return ValorFrete;            
          
        }
    }


}
