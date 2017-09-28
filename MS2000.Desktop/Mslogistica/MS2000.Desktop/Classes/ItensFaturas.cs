using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class ItensFaturas
    {
        public ItensFaturas()
        {
        }

        public ItensFaturas(SqlDataReader reader)
        {
            //Processo = reader["Processo"].ToString();
            Descricao_Produto = reader["Descricao_Produto"].ToString();
            Quantidade = Convert.ToDouble(reader["Quantidade"].ToString());
            Valor_Total = Convert.ToDouble(reader["Valor_Total"].ToString());
            QuantidadeProrrogado = (int)reader["QuantidadeProrrogado"];
            Sequencial_Produto = (int)reader["Sequencial_Produto"];
        }

        #region Properts
        //public string Processo { get; set; }
        public int Fatura_Id { get; set; }
        //public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public string Pagina { get; set; }
        public string Produto { get; set; }
        public string Descricao_Produto { get; set; }        
        public string Fabricante { get; set; }
        public string NCM { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public string Destaque_NCM { get; set; }
        public string NALADI { get; set; }
        public string Referencia { get; set; }
        public string Numero_serie { get; set; }
        public string Referencia_projeto { get; set; }
        public string PO { get; set; }
        public string Seqpo { get; set; }
        public double Quantidade { get; set; }
        public double Valor_Unitario { get; set; }
        public double Valor_Total { get; set; }
        public double Peso_Unitario { get; set; }
        public double Peso_Unitario_Acertado { get; set; }
        public double Peso_Total { get; set; }
        public double Peso_Total_Acertado { get; set; }
        public double Saldo_Tributavel { get; set; }
        public double Rateio_Acrescimos { get; set; }
        public double Rateio_Deducoes { get; set; }
        public double Rateio_Embalagem { get; set; }
        public double Rateio_Frete_Interno_imp { get; set; }
        public double Rateio_Seguro_Interno { get; set; }
        public double Rateio_outras_import { get; set; }
        public double Rateio_startup { get; set; }
        public double Rateio_jurosfin { get; set; }
        public double Rateio_montagem { get; set; }
        public double Rateio_Frete_Interno_exp { get; set; }
        public double Rateio_carga_exp { get; set; }
        public double Rateio_outras_export { get; set; }
        public double Rateio_frete_fatura { get; set; }
        public double Rateio_seguro_fatura { get; set; }
        public double Rateio_carga_imp { get; set; }
        public double Rateio_Despesas_ate_FOB { get; set; }
        public double Rateio_Frete_prepaid { get; set; }
        public double Rateio_Frete_collect { get; set; }
        public double Rateio_Frete_ternac { get; set; }
        public double Rateio_Seguro { get; set; }
        public double Valor_Aduaneiro { get; set; }
        public double Valor_mercadoria { get; set; }
        public double VMLE { get; set; }
        public double Base_Calc_II { get; set; }
        public double Acresc_reduc_Valaduan { get; set; }
        public string COD_SIT { get; set; }
        public string CNPJ { get; set; }
        public string Fiel_nome { get; set; }
        public string Fiel_cpf { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public double Rateio_Taxa_Siscomex { get; set; }
        public string Descricao_Produto_ing { get; set; }
        
        public string Codigo_Produto { get; set; }
        public int? Sequencial_Produto { get; set; }
        public int? Item_Admissivel { get; set; }
        public double Rateio_carga_descarga_manuseio { get; set; }
        public double Rateio_Acresc_ICMS { get; set; }
        public double ATA_FECP { get; set; }
        public double Rateio_Acresc_ICMS_Full { get; set; }
        
        public int QuantidadeProrrogado { get; set; }
        #endregion

        public List<ItensFaturas> BuscarPorProcesso(string processo)
        {
            //string query = "SELECT Processo,Fatura_Id,Fatura,Sequencial,Pagina,Produto,Descricao_Produto,Fabricante,NCM,Unidade,Unidade_Medida_Estat " +
            //               ",Destaque_NCM,NALADI,Referencia,Numero_serie,Referencia_projeto,PO,Seqpo,Quantidade,Valor_Unitario,Valor_Total,Peso_Unitario " +
            //               ",Peso_Unitario_Acertado,Peso_Total,Peso_Total_Acertado,Saldo_Tributavel,Rateio_Acrescimos,Rateio_Deducoes,Rateio_Embalagem " +
            //               ",Rateio_Frete_Interno_imp,Rateio_Seguro_Interno,Rateio_outras_import,Rateio_startup,Rateio_jurosfin,Rateio_montagem " +
            //               ",Rateio_Frete_Interno_exp,Rateio_carga_exp,Rateio_outras_export,Rateio_frete_fatura,Rateio_seguro_fatura " +
            //               ",Rateio_carga_imp,Rateio_Despesas_ate_FOB,Rateio_Frete_prepaid,Rateio_Frete_collect,Rateio_Frete_ternac,Rateio_Seguro " +
            //               ",Valor_Aduaneiro,Valor_mercadoria,VMLE,Base_Calc_II,Acresc_reduc_Valaduan,COD_SIT,CNPJ,Fiel_nome,Fiel_cpf,Contrato " +
            //               ",Local_Inventario,Rateio_Taxa_Siscomex,Descricao_Produto_ing,Codigo_Produto,Sequencial_Produto " +
            //               ",Item_Admissivel,Rateio_carga_descarga_manuseio,Rateio_Acresc_ICMS,ATA_FECP,Rateio_Acresc_ICMS_Full,QuantidadeProrrogado " +
            //               "FROM ItensFaturas where Processo = @processo";


            string query =
               "SELECT I.Fatura_Id,F.Codigo,I.Sequencial,I.Pagina,I.Produto,I.Descricao_Produto,I.Fabricante,I.NCM,I.Unidade,I.Unidade_Medida_Estat                " +
               ",I.Destaque_NCM,I.NALADI,I.Referencia,I.Numero_serie,I.Referencia_projeto,I.PO,I.Seqpo,I.Quantidade,I.Valor_Unitario,I.Valor_Total,I.Peso_Unitario " +
               ",I.Peso_Unitario_Acertado,I.Peso_Total,I.Peso_Total_Acertado,I.Saldo_Tributavel,I.Rateio_Acrescimos,I.Rateio_Deducoes,I.Rateio_Embalagem           " +
               ",I.Rateio_Frete_Interno_imp,I.Rateio_Seguro_Interno,I.Rateio_outras_import,I.Rateio_startup,I.Rateio_jurosfin,I.Rateio_montagem                    " +
               ",I.Rateio_Frete_Interno_exp,I.Rateio_carga_exp,I.Rateio_outras_export,I.Rateio_frete_fatura,I.Rateio_seguro_fatura                                 " +
               ",I.Rateio_carga_imp,I.Rateio_Despesas_ate_FOB,I.Rateio_Frete_prepaid,I.Rateio_Frete_collect,I.Rateio_Frete_ternac,I.Rateio_Seguro                  " +
               ",I.Valor_Aduaneiro,I.Valor_mercadoria,I.VMLE,Base_Calc_II,I.Acresc_reduc_Valaduan               " +
               ",I.Rateio_Taxa_Siscomex,I.Descricao_Produto_ing,I.Codigo_Produto,I.Sequencial_Produto                                           " +
               ",I.Item_Admissivel,I.Rateio_carga_descarga_manuseio,I.Rateio_Acresc_ICMS,I.ATA_FECP,I.Rateio_Acresc_ICMS_Full,I.QuantidadeProrrogado               " +
               "FROM Faturas F                                                                                                                                     " +
               "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id                                                                                             " +
               "WHERE F.Processo = @processo";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(query, conn))
                {
                    objCommand.Parameters.AddWithValue("@processo", processo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<ItensFaturas> listaItens = new List<ItensFaturas>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                listaItens.Add(new ItensFaturas(objDr));
                            }
                        }
                        return listaItens;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static double SomaQTDItens(string Processo, string ii, string ipi)
        {
            string query = "SELECT Sum(ItensFaturas.Quantidade) AS SomaDeQuantidade                                                                                                                    " +
                           "  FROM ItensFaturas                                                                                                                                                        " +
                           "       INNER JOIN Faturas ON ItensFaturas.Fatura_Id = Faturas.Fatura_Id                                                                                                    " +
                           "       INNER JOIN Tributacao_Item_Fatura ON ItensFaturas.Fatura_Id = Tributacao_Item_Fatura.Fatura_Id AND ItensFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item " +
                           " WHERE Faturas.Processo =@Processo AND Tributacao_Item_Fatura.Regime_Tributacao_II Like @ii AND Tributacao_Item_Fatura.Regime_Tributacao_IPI Like @ipi                     " +
                           "GROUP BY Faturas.Processo                                                                                                                                                  ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", Processo);
                    cmd.Parameters.AddWithValue("@ii", ii);
                    cmd.Parameters.AddWithValue("@ipi", ipi);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return (double)dr["SomaDeQuantidade"];
                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return 0;

                throw;                
            }
        }
    }
}
