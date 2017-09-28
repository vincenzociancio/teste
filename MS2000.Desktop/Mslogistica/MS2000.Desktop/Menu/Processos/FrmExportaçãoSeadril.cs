using System.Linq;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmExportaçãoSeadril : MS2000.Desktop.Componentes.MSForm01
    {
        private decimal valortotalTaxaSiscomex;
        private decimal valortotalprodutos;
        private float ValorIOF = 0;
        private decimal divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos;
        private decimal somatotalTaxaSiscomexTotalProdudos;

        SqlDataReader readerLinha;



        SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

        public FrmExportaçãoSeadril()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            lvProcesso.Items.Clear();
            PopulaListView();
        }

        private List<LinhasTaxasSeadrill> ObterLinhas(string processo)
        {
            List<LinhasTaxasSeadrill> listaLinha = new List<LinhasTaxasSeadrill>();

            #region Calcula Valores



            string queryValortotalprodutos =
                "SELECT SUM(I.Valor_Total) AS valortotalprodutos FROM Faturas F INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id WHERE F.Processo = @Processo";
            using (SqlCommand cmd3 = new SqlCommand(queryValortotalprodutos, conn))
            {
                cmd3.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader readerVTP = cmd3.ExecuteReader())
                {
                    while (readerVTP.Read())
                    {
                        if (!string.IsNullOrEmpty(readerVTP["valortotalprodutos"].ToString()))
                        {
                            valortotalprodutos = decimal.Parse(readerVTP["valortotalprodutos"].ToString());
                        }
                    }
                }
            }

            #endregion Calcula Valores

            StringBuilder sb = new StringBuilder();
            
            sb.Append("SELECT cast(Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS AS int) AS CD_REGIME_TRIBUTAR_PISCOFINS,  ");                 
            sb.Append("       F.Processo,                                                                                      ");                
            sb.Append("       F.Codigo as Fatura,                                                                                ");                        
            sb.Append("       cast([Pagina] AS int) AS Pag,                                                                      ");                
            sb.Append("       cast(itf.Sequencial AS int) AS Sequencial,                                                         ");                
            sb.Append("       itf.Codigo_Produto,                                                                                ");                
            sb.Append("      Descricao_Produto AS 'DescricaoItem',                                                               ");               
            sb.Append("       FP.Razao_Social AS Fabricante,                                                                     ");
            sb.Append("       itf.NCM,                                                                                           ");                
            sb.Append("       itf.Unidade,                                                                                       ");               
            sb.Append("      itf.Unidade_Medida_Estat,                                                                           ");              
            sb.Append("      itf.Destaque_NCM,                                                                                   ");              
            sb.Append("       itf.NALADI,                                                                                        ");              
            sb.Append("       itf.Referencia,                                                                                    ");              
            sb.Append("       itf.Numero_serie,                                                                                  ");               
            sb.Append("       itf.Referencia_projeto,                                                                            ");              
            sb.Append("       itf.PO,                                                                                            ");             
            sb.Append("       itf.Seqpo,                                                                                         ");            
            sb.Append("       CAST(itf.Quantidade AS int) AS Quantidade,                                                         ");              
            sb.Append("      CAST(itf.Valor_Unitario AS DECIMAL(18,4)) AS Valor_Unitario,                                        ");             
            sb.Append("      CAST(itf.Valor_Total AS DECIMAL(18,4)) AS Valor_Total,                                              ");             
            sb.Append("       CAST(itf.Peso_Unitario AS DECIMAL(18,4)) AS Peso_Unitario,                                         ");
            sb.Append("       CAST(itf.Peso_Unitario_Acertado AS DECIMAL(18,4)) AS Peso_Unitario_Acertado,                       ");              
            sb.Append("       CAST(itf.Peso_Total AS DECIMAL(18,4)) AS Peso_Total,                                               ");            
            sb.Append("       CAST(itf.Peso_Total_Acertado AS DECIMAL(18,4)) AS Peso_Total_Acertado,                             ");             
            sb.Append("       cast([Descricao_Produto_ing] AS varchar(5000)) AS desci,                                           ");           
            sb.Append("       itf.Rateio_Acrescimos,                                                                             ");            
            sb.Append("       itf.Rateio_Deducoes,                                                                               ");           
            sb.Append("       itf.Rateio_Embalagem,                                                                              ");         
            sb.Append("       itf.Rateio_Frete_Interno_imp,                                                                      ");           
            sb.Append("       itf.Rateio_Seguro_Interno,                                                                         ");          
            sb.Append("       itf.Rateio_outras_import,                                                                          ");           
            sb.Append("       itf.Rateio_startup,                                                                                ");           
            sb.Append("      itf.Rateio_jurosfin,                                                                                ");          
            sb.Append("       itf.Rateio_montagem,                                                                               ");          
            sb.Append("       itf.Rateio_Frete_Interno_exp,                                                                      ");          
            sb.Append("       itf.Rateio_carga_exp,                                                                              ");          
            sb.Append("       itf.Rateio_outras_export,                                                                          ");         
            sb.Append("       itf.Rateio_frete_fatura,                                                                           ");         
            sb.Append("      itf.Rateio_seguro_fatura,                                                                           ");        
            sb.Append("      itf.Rateio_carga_imp,                                                                               ");       
            sb.Append("       itf.Rateio_Despesas_ate_FOB,                                                                       ");        
            sb.Append("      cast(itf.Rateio_Frete_prepaid AS DECIMAL(18,4)) AS Rateio_Frete_prepaid,                            ");       
            sb.Append("       itf.Rateio_Frete_collect,                                                                          ");         
            sb.Append("       itf.Rateio_Frete_ternac,                                                                           ");        
            sb.Append("       itf.Rateio_Frete_ternac,                                                                           ");        
            sb.Append("       itf.Rateio_Frete_ternac,                                                                           ");        
            sb.Append("       itf.Rateio_Frete_ternac,                                                                           ");        
            sb.Append("     itf.Rateio_Seguro,                                                                                   ");    
            sb.Append("      CAST(itf.Valor_Aduaneiro AS DECIMAL(18,4)) AS Valor_Aduaneiro,                                      ");    
            sb.Append("     itf.Valor_mercadoria,                                                                                ");    
            sb.Append("      CAST((itf.VMLE-itf.Acresc_reduc_Valaduan) AS DECIMAL(18,4)) AS VMLE,                                ");     
            sb.Append("      CAST(ptc.Taxa_conversao AS DECIMAL(18,4)) AS Taxa_conversao,                                        ");    
            sb.Append("       CAST(PAIPC.DA AS DECIMAL(18,4)) AS TaxaSiscomex,													 ");
            sb.Append("      PAIPC.VA,																							 ");
            sb.Append("       PAIPC.OT,																							 ");
            sb.Append("       CAST(PAIPC.DA AS DECIMAL(18,4)) AS DA,															 ");
            sb.Append("       CAST(PAIPC.Aliq_NCM_II AS DECIMAL(18,4)) AS Aliq_NCM_II,											 ");
            sb.Append("      CAST(PAIPC.Aliq_NCM_IPI AS DECIMAL(18,4)) AS Aliq_NCM_IPI,											 ");
            sb.Append("       CAST(PAIPC.Aliq_PIS_PASEP AS DECIMAL(18,4)) AS Aliq_PIS_PASEP,									 ");
            sb.Append("       CAST(PAIPC.Aliq_COFINS AS DECIMAL(18,4)) AS Aliq_COFINS,											 ");
            sb.Append("      CAST(PAIPC.Aliq_ICMS AS DECIMAL(18,4)) AS Aliq_ICMS,												 ");
            sb.Append("      CAST(PAIPC.Aliq_ICMS_EXTRA AS DECIMAL(18,4)) AS Aliq_ICMS_EXTRA,									 ");
            sb.Append("       PAIPC.BASEC_PISCOFINS,																			 ");
            sb.Append("       PAIPC.BASEC_ICMS,																				     ");
            sb.Append("       CAST(PAIPC.VALOR_II AS DECIMAL(18,4)) AS VALOR_II,												 ");
            sb.Append("       CAST(PAIPC.VALOR_IPI AS DECIMAL(18,4)) AS VALOR_IPI,												 ");
            sb.Append("      PAIPC.VALOR_ICMS,																					 ");
            sb.Append("       CAST(PAIPC.VALOR_ICMS_EXTRA AS DECIMAL(18,4)) AS VALOR_ICMS_EXTRA,								 ");
            sb.Append("       CAST(PAIPC.VALOR_PIS_PASEP AS DECIMAL(18,4)) AS VALOR_PIS_PASEP,									 ");
            sb.Append("       CAST(PAIPC.VALOR_COFINS AS DECIMAL(18,4)) AS VALOR_COFINS,										 ");
            sb.Append("       PAIPC.Prazo_permanencia,																			 ");
            sb.Append("       PAIPC.VA_proporcional,																			 ");
            sb.Append("       PAIPC.Aliq_NCM_II_proporcional,																	 ");
            sb.Append("       PAIPC.Aliq_NCM_IPI_proporcional,																	 ");
            sb.Append("       CAST(PAIPC.FOB AS DECIMAL(18,4)) AS FOB,															 ");
            sb.Append("       CAST(Tributacao_Item_Fatura.Adicao AS Int) AS Adicao,												 ");                           
            sb.Append("       CAST(([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS DECIMAL(18,4)) AS VA_NEW					 ");                          
            sb.Append("FROM Processos P																						     ");
            sb.Append("INNER JOIN Faturas F ON F.Processo = P.Codigo															 ");
            sb.Append("INNER JOIN ItensFaturas ITF ON itf.Fatura_Id = F.Fatura_Id												 "); 
            sb.Append("INNER JOIN Tributacao_Item_Fatura ON itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item				 ");                           
            sb.Append("AND itf.Fatura_Id = Tributacao_Item_Fatura.Fatura_Id														 ");                                
            sb.Append("INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS PAIPC ON 		                                             ");
            sb.Append("P.Codigo = PAIPC.Processo and PAIPC.Adicao = Tributacao_Item_Fatura.Adicao								 ");
            sb.Append("INNER JOIN Processos_Taxas_Conversao ptc ON F.Moeda = ptc.Moeda											 ");                                               
            sb.Append("AND F.Processo = ptc.Processo																			 ");                                                                                
            sb.Append("INNER JOIN Conhecimento_Processo CP ON P.Codigo = CP.Processo											 ");
            sb.Append("LEFT JOIN Fabricantes_Produtores FP ON itf.Fabricante = FP.Codigo										 ");                               
            sb.Append("WHERE [Pagina] <> 'XXX'																					 ");                                                                                                 
            sb.Append("  AND [itf].[Sequencial] <> 'XXX'																		 ");                                                                                      
            sb.Append("  AND P.Codigo= @Processo																				 ");                                                                                         
            sb.Append("ORDER BY Tributacao_Item_Fatura.Adicao																	 ");                                                                 

            using (SqlCommand cmdLinha = new SqlCommand(sb.ToString(), conn))
            {
                cmdLinha.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader readerL = cmdLinha.ExecuteReader())
                {
                    readerLinha = readerL;

                    while (readerL.Read())
                    {
                        listaLinha.Add(new LinhasTaxasSeadrill
                        {
                            Adicao = Convert.ToInt32(readerL["Adicao"].ToString()),
                            Sequencial = Convert.ToInt32(readerL["Sequencial"].ToString()),
                            DescricaoItem = string.Format(readerL["DescricaoItem"].ToString()).Replace("\n", "").Replace("\r", ""),
                            Codigo_Produto = readerL["Codigo_Produto"].ToString(),
                            NCM = readerL["NCM"].ToString(),
                            Quantidade = Convert.ToInt32(readerL["Quantidade"].ToString()),
                            Valor_Unitario = Convert.ToDecimal(readerL["Valor_Unitario"].ToString()),
                            Valor_Total = Convert.ToDecimal(readerL["Valor_Total"].ToString()),
                            Taxa_conversao = Convert.ToDecimal(readerL["Taxa_Conversao"].ToString()),
                            Peso_Unitario_Acertado = Convert.ToDecimal(readerL["Peso_Unitario_Acertado"].ToString()),
                            Peso_Total_Acertado = Convert.ToDecimal(readerL["Peso_Total_Acertado"].ToString()),
                            Rateio_Frete_prepaid = Convert.ToDecimal(readerL["Rateio_Frete_prepaid"].ToString()),
                            Aliq_NCM_II = Convert.ToDecimal(readerL["Aliq_NCM_II"].ToString()),
                            VA_NEW = Convert.ToDecimal(readerL["VA_NEW"].ToString()),
                            VALOR_II = Convert.ToDecimal(readerL["VALOR_II"].ToString()),
                            FOB = Convert.ToDecimal(readerL["FOB"].ToString()),
                            VMLE = Convert.ToDecimal(readerL["VMLE"].ToString()),
                            Aliq_NCM_IPI = Convert.ToDecimal(readerL["Aliq_NCM_IPI"].ToString()),
                            VA_NEW1 = Convert.ToDecimal(readerL["VA_NEW"].ToString()),
                            valor_ipi = Convert.ToDecimal(readerL["valor_ipi"].ToString()),
                            aliq_pis_pasep = Convert.ToDecimal(readerL["aliq_pis_pasep"].ToString()),
                            aliq_cofins = Convert.ToDecimal(readerL["aliq_cofins"].ToString()),
                            Fatura = readerL["Fatura"].ToString(),
                            aliq_icms = Convert.ToDecimal(readerL["aliq_icms"].ToString()),
                            VA_NEW2 = Convert.ToDecimal(readerL["VA_NEW"].ToString()),
                            VA_NEW3 = Convert.ToDecimal(readerL["VA_NEW"].ToString()),
                            valor_pis_pasep = Convert.ToDecimal(readerL["valor_pis_pasep"].ToString()),
                            valor_cofins = Convert.ToDecimal(readerL["valor_cofins"].ToString()),
                            aliq_icms_extra = Convert.ToDecimal(readerL["aliq_icms_extra"].ToString()),
                            TaxaSiscomex = Convert.ToDecimal(readerL["TaxaSiscomex"].ToString()),
                            // Tem que fazer um sum com distinct adição
                            valor_icms_extra = Convert.ToDecimal(readerL["valor_icms_extra"].ToString()),
                            CD_REGIME_TRIBUTAR_PISCOFINS =
                                Convert.ToInt32(readerL["CD_REGIME_TRIBUTAR_PISCOFINS"].ToString()),
                            //sumAcrescimo = Convert.ToDecimal(readerL["sumAcrescimo"].ToString()),
                            Valor_Aduaneiro = Convert.ToDecimal(readerL["Valor_Aduaneiro"].ToString())
                        });
                    }
                }
            }
            var valortotalTaxaSiscomex = (listaLinha.GroupBy(l => l.Adicao).Select(g => new
            {
                Key = g.Key,
                soma = g.Select(l => l.TaxaSiscomex).Distinct().Sum()
            })).ToList().Sum(c => c.soma);

            ////calculando valor total dos produtos
            /// 
            somatotalTaxaSiscomexTotalProdudos = (valortotalTaxaSiscomex + valortotalprodutos);

            if (valortotalTaxaSiscomex != 0 && somatotalTaxaSiscomexTotalProdudos != 0)
                divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos = (somatotalTaxaSiscomexTotalProdudos/
                                                                          valortotalprodutos);
            else
            {
                MessageBox.Show(
                    "Há calculos incorretos neste processo, favor verificar e corrigir com o setor responsável.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return listaLinha;
            }


            return listaLinha;
        }


        public List<AcrescimoFatura> BuscarPorProcesso(string processo)
        {
            List<AcrescimoFatura> listaAcrescimo = new List<AcrescimoFatura>();
            const string query = "SELECT F.Processo, F.Codigo as Fatura, CD_MET_ACRES_VALOR, Descricao, CAST(VL_ACRESCIMO_MOEDA AS DECIMAL(10,2)) as VL_ACRESCIMO_MOEDA, CD_MD_NEGOC_ACRES," +
                                 "CAST(VL_ACRESCIMO_MN AS DECIMAL(10,2)) as VL_ACRESCIMO_MN "+
                                 "FROM Faturas F inner join Acrescimos_Faturas A on F.Fatura_Id = A.Fatura_Id WHERE F.Processo = @Processo";

            // var dadosProcesso = db.Database.SqlQuery<AcrescimoFaturaViewModel>(query, new SqlParameter("@Processo", Processo)).ToList();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        listaAcrescimo.Add(new AcrescimoFatura
                            {
                                Processo = reader["Processo"].ToString(),
                                Fatura = reader["Fatura"].ToString(),
                                Cd_Met_Acres_Valor = reader["Cd_Met_Acres_Valor"].ToString(),
                                Descricao = reader["Descricao"].ToString(),
                                Vl_Acrescimo_Moeda = Convert.ToDecimal(reader["Vl_Acrescimo_Moeda"].ToString()),
                                Cd_Md_Negoc_Acres = reader["Cd_Md_Negoc_Acres"].ToString(),
                                Vl_Acrescimo_Mn = Convert.ToDecimal(reader["Vl_Acrescimo_Mn"].ToString())
                            });
                    }
                }
            }

            return listaAcrescimo;
        }


        private List<CabecalhoTaxasSeadrill> ObterCabecalho(string processo)
        {


            List<CabecalhoTaxasSeadrill> listaCabecalho = new List<CabecalhoTaxasSeadrill>();
            string queryCab = "SELECT cast(TIF.CD_REGIME_TRIBUTAR_PISCOFINS as int) as CD_REGIME_TRIBUTAR_PISCOFINS, p.Codigo, p.NR_DECLARACAO_IMP as 'dctoImportacao'," +
                           "SUBSTRING(p.DT_REGISTRO_DI, 5, 4)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 3, 2)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 1, 2) as 'dataDctoImportacao'," +
                           "cast(CAST(p.DT_DESEMBARACO AS DATE) as varchar(10)) as 'data_desembaraco'," +
                           "CAST(p.Valor_FOB  AS DECIMAL(18,4)) as Valor_FOB, CAST(p.Valor_CIF AS DECIMAL(18,4)) as Valor_CIF ,f.Codigo as 'nfatura'," +
                           "f.Moeda, CAST(f.Peso_Total_Acertado  AS DECIMAL(18,4)) as 'Peso_Liquido'," +
                           "CAST(CP.peso_bruto AS DECIMAL(18,4)) as 'peso_bruto', " +
                           "CASE f.cobertura_cambial WHEN 1 THEN 'Y' ELSE 'N' " +
                           "END as 'COBERTURA_CAMBIAL', CASE f.Moeda " +
                           "WHEN '220' THEN 'USD' WHEN '978' THEN 'EUR' " +
                           "WHEN '790' THEN 'BRL' ELSE 'OUT' END AS 'Cod_Moeda', " +
                           "CP.URF_Despacho, CAST(cp.Valor_Seguro  AS DECIMAL(10,4)) as Valor_Seguro , " +
                           "CASE TIF.CD_REGIME_TRIBUTAR_PISCOFINS WHEN '1' THEN '2' " +
                           "WHEN '5' THEN '1' ELSE '3' " +
                           "END AS 'NATUREZA_OPERACAO', " +
                           "CASE WHEN(Expo.CGC_CPF IS null) OR (Expo.CGC_CPF = '') then IMP.CNPJ_CPF_COMPLETO " +
                           "else Expo.CGC_CPF end AS 'CNPJ_DEST', IMP.CNPJ_CPF_COMPLETO, CAST(ptc.Taxa_conversao AS DECIMAL(10,2))AS TAXA, " +
                           "eb.DescricaoEmbalagem as 'Volume',CAST(eb.Quantidade as int) as 'QdtVolume', Expo.CodigoNoCliente, UF.DESCRICAO AS 'DESCRI_UF_DESEMB' " +
                           "FROM processos as p " +
                           "INNER join Faturas as f on (p.Codigo = f.processo) " +
                           "INNER join Conhecimento_Processo as CP on (P.Codigo = CP.Processo)" +
                           "INNER join Tributacao_Item_Fatura as TIF on (f.Fatura_Id = TIF.Fatura_Id) " +
                           "INNER join Exportadores as Expo on (f.Exportador = Expo.Codigo) " +
                           "INNER JOIN Importadores AS IMP ON (p.Importador = IMP.Codigo) " +
                           "INNER JOIN Processos_Taxas_Conversao AS ptc ON (f.Moeda = ptc.Moeda) AND (f.Processo = ptc.Processo) " +
                           "INNER JOIN Embalagem_Processo AS eb ON (p.Codigo = eb.Processo) " +
                           "INNER JOIN TAB_URF AS UF ON (UF.Codigo = CP.URF_Despacho) " +
                           "WHERE p.Codigo = @Processo " +
                           "GROUP BY TIF.CD_REGIME_TRIBUTAR_PISCOFINS,CP.peso_bruto," +
                           "p.Codigo, p.NR_DECLARACAO_IMP ," +
                           "p.Valor_FOB, p.Valor_CIF,f.Codigo," +
                           "f.Moeda,f.Peso_Total_Acertado," +
                           "f.Peso_Total," +
                           "f.Cobertura_Cambial," +
                           "CP.URF_Despacho, " +
                           "cp.Valor_Seguro, " +
                           "eb.DescricaoEmbalagem, " +
                           "eb.Quantidade, " +
                           "Expo.CodigoNoCliente, " +
                           "UF.DESCRICAO," +
                           "p.Tipo_Declaracao," +
                           "p.DT_DESEMBARACO," +
                           "IMP.CNPJ_CPF_COMPLETO," +
                           "Expo.CGC_CPF," +
                           "ptc.Taxa_conversao," +
                           "p.DT_REGISTRO_DI ORDER BY NATUREZA_OPERACAO";

            using (SqlCommand cmd = new SqlCommand(queryCab, conn))
            {

                cmd.Parameters.AddWithValue("@Processo", processo);
                using (SqlDataReader readerC = cmd.ExecuteReader())
                {
                    while (readerC.Read())
                    {
                        listaCabecalho.Add(new CabecalhoTaxasSeadrill
                            {
                                Processo = processo.Replace(@"/", ""),
                                Codigo = readerC["Codigo"].ToString(),
                                COBERTURA_CAMBIAL = readerC["COBERTURA_CAMBIAL"].ToString(),
                                NATUREZA_OPERACAO = readerC["NATUREZA_OPERACAO"].ToString().PadLeft(2, '0'),
                                Moeda = readerC["Moeda"].ToString(),
                                CodigoNoCliente = readerC["CodigoNoCliente"].ToString(),
                                CNPJ_CPF_COMPLETO = readerC["CNPJ_CPF_COMPLETO"].ToString(),
                                CnpjAdqMercadoria = readerC["CNPJ_CPF_COMPLETO"].ToString(),
                                dctoImportacao = readerC["dctoImportacao"].ToString(),
                                dataDctoImportacao = readerC["dataDctoImportacao"].ToString(),
                                nfatura = readerC["nfatura"].ToString(),
                                DESCRI_UF_DESEMB = readerC["DESCRI_UF_DESEMB"].ToString(),
                                Cod_Moeda = readerC["Cod_Moeda"].ToString(),
                                TAXA = decimal.Parse(readerC["TAXA"].ToString()),
                                data_desembaraco = readerC["data_desembaraco"].ToString(),
                                peso_bruto = decimal.Parse(readerC["peso_bruto"].ToString()),
                                Peso_Liquido = decimal.Parse(readerC["Peso_Liquido"].ToString()),
                                Valor_FOB = decimal.Parse(readerC["Valor_FOB"].ToString()),
                                Valor_CIF = decimal.Parse(readerC["Valor_CIF"].ToString()),
                                QdtVolume = decimal.Parse(readerC["QdtVolume"].ToString()),
                                Volume = readerC["Volume"].ToString(),
                                //Valor_Seguro = (decimal.Parse(readerC["Valor_Seguro"].ToString())),
                                CD_REGIME_TRIBUTAR_PISCOFINS = Convert.ToInt32(readerC["CD_REGIME_TRIBUTAR_PISCOFINS"].ToString())
                            });
                    }
                }
            }
            return listaCabecalho;

        }


        private void PopulaListView()
        {
            decimal sumAcrescimo = 0;
            if (!string.IsNullOrEmpty(txtProcesso.Text) && txtProcesso.Text != "     /")
            {
                string queryValidacao = "select Codigo from Processos where Codigo = @Codigo";

                using (SqlCommand cmd = new SqlCommand(queryValidacao, conn))
                {

                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                    using (SqlDataReader readerV = cmd.ExecuteReader())
                    {
                        if (readerV.Read())
                        {
                            List<CabecalhoTaxasSeadrill> cabecalho = ObterCabecalho(txtProcesso.Text);
                            List<LinhasTaxasSeadrill> linha = ObterLinhas(txtProcesso.Text);
                            List<AcrescimoFatura> listaDeAcrescimo = BuscarPorProcesso(txtProcesso.Text);

                            //var sumAcrescimo = (from a in listaDeAcrescimo
                            //                    where a.Fatura == cab.nfatura
                            //                    select a.Vl_Acrescimo_Moeda).Sum();
                            foreach (CabecalhoTaxasSeadrill cab in cabecalho)
                            {
                                var novosTotais = linha
                                   .Where(x => x.Fatura == cab.nfatura && x.CD_REGIME_TRIBUTAR_PISCOFINS == cab.CD_REGIME_TRIBUTAR_PISCOFINS)
                                   .GroupBy(g => new { g.Fatura, g.CD_REGIME_TRIBUTAR_PISCOFINS })
                                   .Select(group => new
                                   {
                                       NumeroDaFatura = group.Key.Fatura,
                                       RegimeTributacao = group.Key.CD_REGIME_TRIBUTAR_PISCOFINS,
                                       TotalFOB = group.Sum(a => a.Valor_Aduaneiro * a.Taxa_conversao),
                                       TotalCIF = group.Sum(a => ((a.Valor_Aduaneiro + a.Rateio_Frete_prepaid) * a.Taxa_conversao)),
                                       TotalFrete = group.Sum(a => ((a.Rateio_Frete_prepaid + a.Quantidade) * a.Taxa_conversao)),
                                       TotalPesoBruto = group.Sum(a => a.Peso_Total_Acertado),
                                       TotalPesoLinq = group.Sum(a => a.Peso_Total_Acertado),
                                   }).ToList();

                                ListViewItem lvItemsCab = new ListViewItem(cab.Identificador);
                                lvItemsCab.SubItems.Add(cab.COBERTURA_CAMBIAL);
                                lvItemsCab.SubItems.Add(cab.NATUREZA_OPERACAO.PadLeft(2, ' '));
                                lvItemsCab.SubItems.Add(cab.Moeda.PadLeft(2, ' '));
                                lvItemsCab.SubItems.Add(cab.CodigoNoCliente);
                                lvItemsCab.SubItems.Add(cab.CNPJ_CPF_COMPLETO);
                                lvItemsCab.SubItems.Add(cab.CNPJ_CPF_COMPLETO);
                                lvItemsCab.SubItems.Add(cab.dctoImportacao);
                                lvItemsCab.SubItems.Add(cab.dataDctoImportacao);
                                lvItemsCab.SubItems.Add(cab.nfatura);
                                lvItemsCab.SubItems.Add(cab.DESCRI_UF_DESEMB);
                                lvItemsCab.SubItems.Add(cab.Cod_Moeda.PadLeft(2, ' '));
                                lvItemsCab.SubItems.Add(cab.TAXA.CasasDecimais(3));
                                lvItemsCab.SubItems.Add(cab.data_desembaraco);
                                lvItemsCab.SubItems.Add(novosTotais[0].TotalPesoBruto.CasasDecimais(3));//cab.PesoBruto.CasasDecimais(3),
                                lvItemsCab.SubItems.Add(novosTotais[0].TotalPesoLinq.CasasDecimais(3));//cab.PesoLiquido.CasasDecimais(3),
                                lvItemsCab.SubItems.Add(novosTotais[0].TotalFOB.CasasDecimais(3));//cab.ValorFOB.CasasDecimais(3),
                                lvItemsCab.SubItems.Add(novosTotais[0].TotalFrete.CasasDecimais(3));//cab.ValorFrete.CasasDecimais(3),
                                lvItemsCab.SubItems.Add(cab.Valor_Seguro.CasasDecimais(3));
                                lvItemsCab.SubItems.Add(novosTotais[0].TotalCIF.CasasDecimais(3));
                                lvItemsCab.SubItems.Add(cab.QdtVolume.ToString());
                                lvItemsCab.SubItems.Add(cab.Volume);
                                lvProcesso.Items.AddRange(new ListViewItem[] { lvItemsCab });

                                sumAcrescimo += listaDeAcrescimo.Where(a => a.Fatura == cab.nfatura).Sum(a => a.Vl_Acrescimo_Moeda);

                                var cabfatura = cab;

                                foreach (LinhasTaxasSeadrill item in linha)
                                {
                                    if (item.Fatura == cabfatura.nfatura &&
                                        item.CD_REGIME_TRIBUTAR_PISCOFINS == cabfatura.CD_REGIME_TRIBUTAR_PISCOFINS)
                                    {
                                        //Calculando acrescimo
                                        decimal acrescimoUnitario = 0;
                                        decimal acrescimoTotal = 0;

                                        if (sumAcrescimo > 0)
                                        {
                                            decimal totalDivisaoSumAcrescimoPesoLiq = sumAcrescimo / cab.Peso_Liquido;
                                            //Acrescimo unitario
                                            acrescimoUnitario = totalDivisaoSumAcrescimoPesoLiq * item.Peso_Unitario_Acertado;
                                            //Acrescimo total
                                            acrescimoTotal = totalDivisaoSumAcrescimoPesoLiq * item.Peso_Total_Acertado;
                                        }

                                        decimal valorii = Util.ItemConverteValorII(item.VALOR_II, item.FOB, item.VMLE, item.Taxa_conversao);
                                        decimal valoripi = Util.ItemConverteValorIPI(item.valor_ipi, item.FOB, item.VMLE, item.Taxa_conversao);
                                        decimal valortaxasiscomex = (((item.Valor_Total * divisaosomatotalTaxaSiscomexTotalProdudosTotalProdudos) - item.Valor_Total));
                                        decimal valorcofins = Util.ItemConverteValorCofins(item.valor_cofins, item.FOB, item.VMLE, item.Taxa_conversao);
                                        decimal valorpis = Util.ItemConverteValorPIS(item.valor_pis_pasep, item.FOB, item.VMLE, item.Taxa_conversao);
                                        decimal diferecaicms = (100 - (item.aliq_icms + item.aliq_icms_extra)) / 100;
                                        decimal basecalculoicms = (item.VA_NEW + valorii + valoripi + valortaxasiscomex + valorpis + valorcofins) / diferecaicms;
                                        decimal valoricms = basecalculoicms * (item.aliq_icms / 100);
                                        decimal valorfecp = Util.ItemConverteValorFecp(item.valor_icms_extra, item.FOB, item.VMLE, item.Taxa_conversao);
                                        decimal valordespesasacessorias = (valorpis + valorcofins + valorii + valortaxasiscomex);

                                        #region Popula ListView Linhas
                                        ListViewItem lvItems = new ListViewItem(item.Identificador);
                                        lvItems.SubItems.Add(item.Adicao.ToString());
                                        lvItems.SubItems.Add(item.Sequencial.ToString());
                                        lvItems.SubItems.Add(item.DescricaoItem);
                                        lvItems.SubItems.Add(item.Codigo_Produto);
                                        lvItems.SubItems.Add(item.NCM);
                                        lvItems.SubItems.Add(item.Quantidade.ToString());

                                        lvItems.SubItems.Add(
                                            Util.ItemConverteValorUnitario(item.Valor_Unitario, acrescimoUnitario, item.Taxa_conversao)
                                                .CasasDecimais(2)
                                                );

                                        lvItems.SubItems.Add(
                                            Util.ItemConverteValorTotal(item.Valor_Total, acrescimoTotal, item.Taxa_conversao)
                                                .CasasDecimais(2)
                                                );

                                        lvItems.SubItems.Add(Util.CasasDecimais(item.Peso_Unitario_Acertado, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.Peso_Total_Acertado, 2));

                                        lvItems.SubItems.Add(
                                            Util.ItemConverteRateioFretePrepaid(item.Quantidade, item.Rateio_Frete_prepaid,
                                                item.Taxa_conversao).CasasDecimais(2));

                                        lvItems.SubItems.Add(Util.CasasDecimais(item.Taxa_conversao, 5));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.Aliq_NCM_II, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.VA_NEW, 2));
                                        lvItems.SubItems.Add(valorii.CasasDecimais(2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.Aliq_NCM_IPI, 2));

                                        lvItems.SubItems.Add(
                                            Util.ItemConverteBaseIPI(item.VA_NEW, item.VALOR_II, item.FOB, item.VMLE,
                                                item.Taxa_conversao).CasasDecimais(2));

                                        lvItems.SubItems.Add(valoripi.CasasDecimais(2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.aliq_pis_pasep, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.aliq_cofins, 2));
                                        lvItems.SubItems.Add(Util.ItemConverteBasePIS(item.VA_NEW1, item).CasasDecimais(2));
                                        lvItems.SubItems.Add(Util.ItemConverteBasePIS(item.VA_NEW2, item).CasasDecimais(2));
                                        lvItems.SubItems.Add(valorpis.CasasDecimais(2));
                                        lvItems.SubItems.Add(valorcofins.CasasDecimais(2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.aliq_icms, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(item.aliq_icms_extra, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(valortaxasiscomex, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(basecalculoicms, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(valoricms, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(valorfecp, 2));
                                        lvItems.SubItems.Add(Util.CasasDecimais(valordespesasacessorias, 2));
                                        lvItems.SubItems.Add(ValorIOF + ".00");
                                        lvItems.SubItems.Add(item.Fatura);
                                        lvItems.SubItems.Add((item.CD_REGIME_TRIBUTAR_PISCOFINS == 1 ? 2 : 1).ToString().PadLeft(2, '0'));
                                        lvProcesso.Items.AddRange(new ListViewItem[] { lvItems });
                                        #endregion Popula ListView Linhas
                                    }
                                }

                                foreach (ColumnHeader item in lvProcesso.Columns)
                                {
                                    item.Width = -2;
                                }

                            }
                        }
                        else
                        {
                            MessageBox.Show("Processo inválido.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                }

            }
            else
            {
                MessageBox.Show("O campo Processo é obrigatório", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnDownload_Click(object sender, EventArgs e)
        {
            string processos = txtProcesso.Text.Replace("/", "");

            if (lvProcesso.Items.Count > 0)
            {
                saveFileDialog1.DefaultExt = "txt";
                saveFileDialog1.FileName = processos;
                saveFileDialog1.Filter = "Text files (*.txt)|*.txt";
                saveFileDialog1.AddExtension = true;
                saveFileDialog1.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {

                    //string path = Path.GetTempPath() + @"\" + processos + ".txt";
                    FileStream fs = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                    using (StreamWriter writer = new StreamWriter(fs))
                    {

                        foreach (ListViewItem item in lvProcesso.Items)
                        {
                            int i = 0;
                            StringBuilder sb = new StringBuilder();

                            foreach (ListViewItem.ListViewSubItem listViewSubItem in item.SubItems)
                            {
                                if (i < item.SubItems.Count - 1)
                                {
                                    sb.Append(string.Format("{0}\t", listViewSubItem.Text + "|").Trim());
                                    i++;
                                }
                                else
                                {
                                    if (sb.ToString().Substring(0, 1) != "H")
                                        sb.Append(string.Format("{0}\t", listViewSubItem.Text + ";").Trim());
                                    else
                                        sb.Append(string.Format("{0}\t", listViewSubItem.Text).Trim());

                                }

                            }
                            writer.WriteLine(sb.ToString());
                        }
                        writer.Close();
                        fs.Close();
                    }
                }
            }
            else
            {
                MessageBox.Show("É necessário processar antes de efetuar o Download", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
