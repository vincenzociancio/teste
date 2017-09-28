using MSBiblioteca.BLL.SeadrillExportacao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace MSBiblioteca.DAL.SeadrillExportacao
{
    internal class CabecalhoDAL : BancoDados
    {
        //readonly IList<Cabecalho> _objList = null;

        public CabecalhoDAL()
        {
            //this._objList = new List<Cabecalho>();
        }

        internal List<Cabecalho> ObterCabecalho(string processo)
        {
            const string query = "SELECT TIF.CD_REGIME_TRIBUTAR_PISCOFINS, p.Codigo, p.NR_DECLARACAO_IMP as 'dctoImportacao'," +
                                 "SUBSTRING(p.DT_REGISTRO_DI, 5, 4)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 3, 2)+'-'+SUBSTRING(p.DT_REGISTRO_DI, 1, 2) as 'dataDctoImportacao'," +
                                 "cast(CAST(p.DT_DESEMBARACO AS DATE) as varchar(10)) as 'data_desembaraco'," +
                                 "p.Valor_FOB, p.Valor_CIF,f.Codigo as 'nfatura'," +
                                 "f.Moeda,f.Peso_Total_Acertado as 'Peso_Liquido'," +
                                 "CP.peso_bruto as 'peso_bruto', " +
                                 "CASE f.cobertura_cambial WHEN 1 THEN 'Y' ELSE 'N' " +
                                 "END as 'COBERTURA_CAMBIAL', CASE f.Moeda " +
                                 "WHEN '220' THEN 'USD' WHEN '978' THEN 'EUR' " +
                                 "WHEN '790' THEN 'BRL' ELSE 'OUT' END AS 'Cod_Moeda', " +
                                 "CP.URF_Despacho, cp.Valor_Seguro, " +
                                 "CASE TIF.CD_REGIME_TRIBUTAR_PISCOFINS WHEN '1' THEN '2' " +
                                 "WHEN '5' THEN '1' ELSE '3' " +
                                 "END AS 'NATUREZA_OPERACAO', " +
                                 "CASE WHEN(Expo.CGC_CPF IS null) OR (Expo.CGC_CPF = '') then IMP.CNPJ_CPF_COMPLETO " +
                                 "else Expo.CGC_CPF end AS 'CNPJ_DEST', IMP.CNPJ_CPF_COMPLETO, CAST(ptc.Taxa_conversao AS DECIMAL(10,2))AS TAXA, " +
                                 "eb.DescricaoEmbalagem as 'Volume', eb.Quantidade as 'QdtVolume', Expo.CodigoNoCliente, UF.DESCRICAO AS 'DESCRI_UF_DESEMB' " +
                                 "FROM processos as p " +
                                 "INNER join Faturas as f on (p.Codigo = f.processo) " +
                                 "INNER join Conhecimento_Processo as CP on (P.Codigo = CP.Processo)" +
                                 "INNER join Tributacao_Item_Fatura as TIF on (f.Codigo = TIF.Fatura) " +
                                 "INNER join Exportadores as Expo on (f.Exportador = Expo.Codigo) AND (f.Filial = Expo.Filial) " +
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
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(query, Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (var objDr = objCommand.ExecuteReader())
                    {
                        List<Cabecalho> _objList = new List<Cabecalho>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                _objList.Add(new Cabecalho
                                {
                                    Processo = processo,
                                    CoberturaCambial = objDr["COBERTURA_CAMBIAL"].ToString(),
                                    NaturezaOperacao = objDr["NATUREZA_OPERACAO"].ToString(),
                                    Moeda = objDr["Moeda"].ToString(),
                                    CodigoExportador = objDr["CodigoNoCliente"].ToString(),
                                    CnpjDoImportador = objDr["CNPJ_CPF_COMPLETO"].ToString(),
                                    CnpjAdqMercadoria = objDr["CNPJ_CPF_COMPLETO"].ToString(),
                                    DctoImportacao = objDr["dctoImportacao"].ToString(),
                                    DataDctoImportacao = objDr["dataDctoImportacao"].ToString(),
                                    NumeroDaFatura = objDr["nfatura"].ToString(),
                                    UfDesembaraco = objDr["DESCRI_UF_DESEMB"].ToString(),
                                    CodigoMoeda = objDr["Cod_Moeda"].ToString(),
                                    Taxa = Convert.ToDecimal(objDr["TAXA"]),
                                    DataDesembaraco = objDr["data_desembaraco"].ToString(),
                                    PesoBruto = Convert.ToDecimal(objDr["peso_bruto"]),
                                    PesoLiquido = Convert.ToDecimal(objDr["Peso_Liquido"]),
                                    ValorFOB = Convert.ToDecimal(objDr["Valor_FOB"]),
                                    ValorCIF = Convert.ToDecimal(objDr["Valor_CIF"]),
                                    QtdVolume = Convert.ToInt32(objDr["QdtVolume"]),
                                    TipoDeVolume = objDr["Volume"].ToString(),
                                    RegimeTributacao = Convert.ToInt32(objDr["CD_REGIME_TRIBUTAR_PISCOFINS"])
                                });
                            }
                        }
                        return _objList.ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
