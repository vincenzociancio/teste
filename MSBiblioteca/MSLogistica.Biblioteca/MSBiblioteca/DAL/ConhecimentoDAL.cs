using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MSBiblioteca.DTO;
using MSBiblioteca.BLL;
using System.Collections.Generic;

namespace MSBiblioteca.DAL
{
    internal class ConhecimentoDAL: BancoDados
    {
        internal Conhecimento BuscarConhecimento(string processo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Empresa,Filial,Processo,Via,Multimodal,PLaca,Lacre,Embarcacao,Transportador,Tipodoccarga,Numerodoccarga,Numeromaster,Local, ");
            strSql.Append("Data,Utilizacao,Tipomanifesto,Numeromanifesto,Codigo_Presenca_Carga,Peso_Bruto,Peso_Liquido,Agente,Pais_Procedencia, ");
            strSql.Append("URF_chegada,Data_Chegada_URF_Cheg,URF_Despacho,Data_Chegada_URF_Desp,Recinto_Alfandegario, ");
            strSql.Append("Setor_Alfandegario,Armazem,Operacao_FUNDAP,Contratante_OPCAMBIAL,Moeda_Frete,Frete_Prepaid,Frete_Collect, ");
            strSql.Append("Frete_Ter_Nac,Moeda_Seguro,Valor_Seguro,Moeda_Despesas_ate_FOB,Valor_Despesas_ate_FOB,Unidade,Quantidade,DT_ETA, ");
            strSql.Append("Data_Follow,TX_CE,Moeda_TXCE,BAF,Moeda_BAF,Outros_Componentes_Frete,Moeda_Outros_Componentes ");
            strSql.Append("FROM Conhecimento_Processo ");
            strSql.Append("WHERE Processo = @Processo ");
          
            try
            {
                AbrirConexao();
                using (var objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        var conhecimento = new Conhecimento();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                conhecimento.URF_Despacho = objDr["URF_Despacho"].ToString();
                                conhecimento.Data_Chegada_URF_Cheg = Convert.ToDateTime(objDr["Data_Chegada_URF_Cheg"]);

                            }
                        }
                        return conhecimento;
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
