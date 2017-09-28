using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public class Conhecimento
    {
        public Conhecimento()
        {
        }

        public Conhecimento(SqlDataReader reader)
        {
            Numeromanifesto = reader["Numeromanifesto"].ToString();
            Codigo_Presenca_Carga = reader["Codigo_Presenca_Carga"].ToString();
            URF_Despacho = reader["URF_Despacho"].ToString();
            Modalidade_Despacho = reader["Modalidade_Despacho"].ToString();
        }

        #region Properts
        public string Processo { get; set; }
        public string Via { get; set; }
        public int Multimodal { get; set; }
        public string PLaca { get; set; }
        public string Lacre { get; set; }
        public string Embarcacao { get; set; }
        public int Transportador { get; set; }
        public string Tipodoccarga { get; set; }
        public string Numerodoccarga { get; set; }
        public string Numeromaster { get; set; }
        public string Local { get; set; }
        public DateTime Data { get; set; }
        public string Utilizacao { get; set; }
        public string Tipomanifesto { get; set; }
        public string Numeromanifesto { get; set; }
        public string Codigo_Presenca_Carga { get; set; }
        public float Peso_Bruto { get; set; }
        public float Peso_Liquido { get; set; }
        public string Agente { get; set; }
        public string Pais_Procedencia { get; set; }
        public string URF_chegada { get; set; }
        public DateTime Data_Chegada_URF_Cheg { get; set; }
        public string URF_Despacho { get; set; }
        public DateTime Data_Chegada_URF_Desp { get; set; }
        public string Recinto_Alfandegario { get; set; }
        public string Setor_Alfandegario { get; set; }
        public string Armazem { get; set; }
        public int Operacao_FUNDAP { get; set; }
        public string Contratante_OPCAMBIAL { get; set; }
        public string Moeda_Frete { get; set; }
        public float Frete_Prepaid { get; set; }
        public float Frete_Collect { get; set; }
        public float Frete_Ter_Nac { get; set; }
        public string Moeda_Seguro { get; set; }
        public float Valor_Seguro { get; set; }
        public string Moeda_Despesas_ate_FOB { get; set; }
        public float Valor_Despesas_ate_FOB { get; set; }
        public string Unidade { get; set; }
        public float Quantidade { get; set; }
        public DateTime DT_ETA { get; set; }
        public string Data_Follow { get; set; }
        public float TX_CE { get; set; }
        public string Moeda_TXCE { get; set; }
        public float BAF { get; set; }
        public string Moeda_BAF { get; set; }
        public float Outros_Componentes_Frete { get; set; }
        public string Moeda_Outros_Componentes { get; set; }
        public string Bandeira { get; set; }
        public string Autorizacao_Marinha { get; set; }
        public int FK_Terminal { get; set; }
        public int FK_Processo { get; set; }
        public string Modalidade_Despacho { get; set; }
        #endregion
        public Conhecimento BuscarPorConhecimento(string codigo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT Processo,Via,Multimodal,PLaca,Lacre,Embarcacao,Transportador,Tipodoccarga,Numerodoccarga,Numeromaster ");
            strSql.Append(",Local,CP.Data,Utilizacao,Tipomanifesto,Numeromanifesto,Codigo_Presenca_Carga,Peso_Bruto,Peso_Liquido,Agente ");
            strSql.Append(",Pais_Procedencia,URF_chegada,Data_Chegada_URF_Cheg,URF_Despacho,Data_Chegada_URF_Desp,Recinto_Alfandegario ");
            strSql.Append(",Setor_Alfandegario,Armazem,Operacao_FUNDAP,Contratante_OPCAMBIAL,Moeda_Frete,Frete_Prepaid,Frete_Collect ");
            strSql.Append(",Frete_Ter_Nac,Moeda_Seguro,Valor_Seguro,Moeda_Despesas_ate_FOB,Valor_Despesas_ate_FOB,Unidade,Quantidade ");
            strSql.Append(",DT_ETA,Data_Follow,TX_CE,Moeda_TXCE,BAF,Moeda_BAF,Outros_Componentes_Frete,Moeda_Outros_Componentes,Bandeira");
            strSql.Append(",Autorizacao_Marinha,FK_Terminal,FK_Processo,Modalidade_Despacho ");
            strSql.Append("FROM Processos P left join ");
            strSql.Append("Conhecimento_Processo CP on P.Codigo = CP.Processo ");
            strSql.Append("WHERE P.Codigo = @Processo ");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Processo", codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Conhecimento conhecimento = null;

                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                conhecimento = new Conhecimento(objDr);
                            }
                        }

                        return conhecimento;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
