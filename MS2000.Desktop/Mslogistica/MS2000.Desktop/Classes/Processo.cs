using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public delegate void ChangedEventHandler(object sender, EventArgs e);

    public class Processo
    {
        public event ChangedEventHandler Changed;
        protected virtual void OnChanged(EventArgs e)
        {
            if (Changed != null)
                Changed(this, e);
        }

        public Processo()
        {
        }

        public Processo(SqlDataReader reader)
        {
            ID = (int)reader["ID"];
            Codigo = reader["Codigo"].ToString();
            Data = (DateTime)reader["Data"];
            Importador = reader["Importador"].ToString();
            Contrato = reader["Contrato"].ToString();
            Centro_Custo = reader["Centro_Custo"].ToString();
            COD_SIT = reader["COD_SIT"].ToString();
            Tipo = reader["Tipo"].ToString();
            FK_Processos_Tipo_Urgencia = (reader["FK_Processos_Tipo_Urgencia"] == DBNull.Value) ? (int?)null : ((int)reader["FK_Processos_Tipo_Urgencia"]);//objDr["FK_Processos_Tipo_Urgencia"];
            Tipo_Declaracao = reader["Tipo_Declaracao"].ToString();
            Local_Inventario = reader["Local_Inventario"].ToString();
            Urgente = (reader["Urgente"] == DBNull.Value) ? (int?)null : ((int)reader["Urgente"]);
            Numero_RTC = reader["Numero_RTC"].ToString();
            Codigo_Cliente = reader["Codigo_Cliente"].ToString();
            vinc_processo = (reader["vinc_processo"] == DBNull.Value) ? (int?)null : ((int)reader["vinc_processo"]);
            proc_vinc = reader["proc_vinc"].ToString();
            Pag_proporcional = (reader["Pag_proporcional"] == DBNull.Value) ? (int?)null : ((int)reader["Pag_proporcional"]);
            Fechado = (reader["Fechado"] == DBNull.Value) ? (int?)null : ((int)reader["Fechado"]);
            Material_Usado = Convert.ToInt16(reader["Material_Usado"]);
            Qtd_Itens_Fatura = (reader["Qtd_Itens_Fatura"] == DBNull.Value) ? (int?)null : ((int)reader["Qtd_Itens_Fatura"]);
            Responsavel_Empresa = reader["Responsavel_Empresa"].ToString();
            Responsavel_Importador = reader["Responsavel_Importador"].ToString();
            Supervisor_Resp = reader["Supervisor_Resp"].ToString();
            Coordenador_Resp = reader["Coordenador_Resp"].ToString();
            TipoProjeto = (reader["TipoProjeto"] == DBNull.Value) ? (int?)null : ((int)reader["TipoProjeto"]); 
            DT_DESEMBARACO = (reader["DT_DESEMBARACO"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["DT_DESEMBARACO"]);
            NR_DECLARACAO_IMP = reader["NR_DECLARACAO_IMP"].ToString();
            Fiscal = reader["Fiscal"].ToString();
            DT_DISTRIBUICAO = (reader["DT_DISTRIBUICAO"] == DBNull.Value ? (DateTime?)null : (DateTime?)reader["DT_DISTRIBUICAO"]);
            DT_REGISTRO_DI = reader["DT_REGISTRO_DI"].ToString();
            Drawback = (int)reader["Drawback"];
            Status = reader["Status"].ToString();
            TR_VAL_FOB_US = (double)reader["TR_VAL_FOB_US"];
            TR_VAL_CIF_US = (double)reader["TR_VAL_CIF_US"];
            TR_VAL_II = (double)reader["TR_VAL_II"];
            TR_VAL_IPI = (double)reader["TR_VAL_IPI"];
            TR_VAL_PIS = (double)reader["TR_VAL_PIS"];
            TR_VAL_COFINS = (double)reader["TR_VAL_COFINS"];
            AVISO_DESEMBARACO = (int)reader["AVISO_DESEMBARACO"];
      //      DescricaoContrato = reader["DescricaoContrato"].ToString();
      //      DescricaoLocal = reader["DescricaoLocal"].ToString();
        }

        public Processo(string codigoFatura, string tipoDocumento, string fatura, string codigoCo, string tipoDoc, string certificado)
        {
            CodigoFatura = codigoFatura;
            TipoDocumento = tipoDocumento;
            Fatura = fatura;
            CodigoCo = codigoCo;
            TipoDoc = tipoDoc;
            Certificado = certificado;
        }

        #region Properts
        public int ID { get; private set; } //Retorna ID no Incluir
        public string Codigo { get; set; }
        public DateTime? Data { get; set; }
        public string Importador { get; set; }
        public string Codigo_Cliente { get; set; }
        public string Tipo_Declaracao { get; set; }
        public string Tipo { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public string NR_DECL_IMP_MICRO { get; set; }
        public string NR_DECL_IMP_PROT { get; set; }
        public string NR_DECLARACAO_IMP { get; set; }
        public string DT_PROCESSAMENTO { get; set; }
        public string DT_TRANSMISSAO { get; set; }
        public string DT_REGISTRO_DI { get; set; }
        public DateTime? DT_DESEMBARACO { get; set; }
        public DateTime? DT_DISTRIBUICAO { get; set; }
        public string Canal { get; set; }
        public string Fiscal { get; set; }
        public string Status { get; set; }
        public string COD_SIT { get; set; }
        public string CD_MOTIVO_TRANS { get; set; }
        public int? IN_MOEDA_UNICA { get; set; }
        public string TX_INFO_COMPL { get; set; }
        public string CD_TIPO_PGTO_TRIB { get; set; }
        public string Numero_RCR { get; set; }
        public DateTime? Data_Entrada_RCR { get; set; }
        public DateTime? Data_Aprovacao_RCR { get; set; }
        public string Fundamentacao_RCR { get; set; }
        public string Procurador { get; set; }
        public string Numero_TR { get; set; }
        public DateTime? Data_Entrada_TR { get; set; }
        public DateTime? Data_vencimento_TR { get; set; }
        public DateTime? Data_Aprovacao_TR { get; set; }
        public DateTime? Data_Baixa_TR { get; set; }
        public DateTime? Data_CI { get; set; }
        public string Tipo_Garantia { get; set; }
        public string Nome_banco_GAR { get; set; }
        public string Agencia_GAR { get; set; }
        public DateTime? Data_deposito_GAR { get; set; }
        public string Nome_titulo_GAR { get; set; }
        public string numeros_titulos_GAR { get; set; }
        public string Nome_seguradora_GAR { get; set; }
        public string apolice_GAR { get; set; }
        public string nome_fiador_GAR { get; set; }
        public string CNPJ_fiador_GAR { get; set; }
        public string endereco_fiador_GAR { get; set; }
        public double? Quantidade_LI { get; set; }
        public double? Valor_FOB { get; set; }
        public double? Valor_CIF { get; set; }
        public string Responsavel_Empresa { get; set; }
        public string Responsavel_Importador { get; set; }
        public string NR_DECL_IMP_MICROC { get; set; }
        public string NR_DECL_IMP_PROTC { get; set; }
        public string NR_DECLARACAO_IMPC { get; set; }
        public string DT_PROCESSAMENTOC { get; set; }
        public string DT_TRANSMISSAOC { get; set; }
        public string DT_REGISTRO_DIC { get; set; }
        public DateTime? DT_DESEMBARACOC { get; set; }
        public DateTime? DT_DISTRIBUICAOC { get; set; }
        public string CanalC { get; set; }
        public string FiscalC { get; set; }
        public string COD_SITC { get; set; }
        public DateTime? Data_CIC { get; set; }
        public double? Valor_FOBC { get; set; }
        public double? Valor_CIFC { get; set; }
        public string ident_meio1 { get; set; }
        public string ident_meio2 { get; set; }        
        public DateTime? Data_liberacao { get; set; }
        public int? Urgente { get; set; }
        public int? consolidado { get; set; }
        public int? Pag_proporcional { get; set; }
        public double? TR_VAL_FOB_US { get; set; }
        public double? TR_VAL_CIF_US { get; set; }
        public double? TR_VAL_II { get; set; }
        public double? TR_VAL_IPI { get; set; }
        public string DDE { get; set; }
        public string Processo_Adm { get; set; }
        public DateTime? Proc_Adm_Data_Entrada { get; set; }
        public int? Faturado { get; set; }
        public int? Fechado { get; set; }
        public string Centro_Custo { get; set; }
        public string Procurador2 { get; set; }
        public double? TR_VAL_PIS { get; set; }
        public double? TR_VAL_COFINS { get; set; }
        public string RCR_LOCAL { get; set; }
        public string Responsavel_EmpresaC { get; set; }
        public int? vinc_processo { get; set; }
        public string proc_vinc { get; set; }
        public int? sem_nfs { get; set; }
        public int? TR_IMPRESSOES { get; set; }
        public int? TR_IMPRESSOES_FECP { get; set; }
        public int? AVISO_DESEMBARACO { get; set; }
        public int? FK_Processos_Tipo_Urgencia { get; set; }
        public string Coordenador_Resp { get; set; }
        public string Supervisor_Resp { get; set; }
        public int? BASE_ICMS { get; set; }
        public int? Aguardando_Medicao { get; set; }
        public int? TR_Indeferido { get; set; }
        public int Material_Usado { get; set; }
        public int? Sem_Email { get; set; }
        public short? txConversaoDeAmanha { get; set; }
        public string Numero_RTC { get; set; }
        public int? Qtd_Itens_Fatura { get; set; }
        public int? TipoProjeto { get; set; }
        public DateTime? Data_emissao { get; set; }
        public string Fatura { get; set; }
        public string CodigoFatura { get; set; }
        public string TipoDocumento { get; set; }
        public string CodigoCo { get; set; }
        public string TipoDoc { get; set; }
        public string Certificado { get; set; }
        public int Drawback { get; set; }
        public string DescricaoContrato { get; set; }
        public string DescricaoLocal { get; set; }
        #endregion

        #region Methods
        public Processo BuscarPorCodigo(string codigo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT ID, Codigo, Data,Importador,Codigo_Cliente,Tipo_Declaracao ");
            strSql.Append(",Tipo,Contrato,Local_Inventario,NR_DECL_IMP_MICRO,NR_DECL_IMP_PROT,NR_DECLARACAO_IMP ");
            strSql.Append(",DT_PROCESSAMENTO,DT_TRANSMISSAO,DT_REGISTRO_DI,DT_DESEMBARACO,DT_DISTRIBUICAO,Canal ");
            strSql.Append(",Fiscal,Status,COD_SIT,CD_MOTIVO_TRANS,IN_MOEDA_UNICA,TX_INFO_COMPL,CD_TIPO_PGTO_TRIB ");
            strSql.Append(",Numero_RCR,Data_Entrada_RCR,Data_Aprovacao_RCR,Fundamentacao_RCR,Procurador,Numero_TR ");
            strSql.Append(",Data_Entrada_TR,Data_vencimento_TR,Data_Aprovacao_TR,Data_Baixa_TR,Data_CI,Tipo_Garantia ");
            strSql.Append(",Nome_banco_GAR,Agencia_GAR,Data_deposito_GAR,Nome_titulo_GAR,numeros_titulos_GAR ");
            strSql.Append(",Nome_seguradora_GAR,apolice_GAR,nome_fiador_GAR,CNPJ_fiador_GAR,endereco_fiador_GAR ");
            strSql.Append(",Quantidade_LI,Valor_FOB,Valor_CIF,Responsavel_Empresa,Responsavel_Importador ");
            strSql.Append(",NR_DECL_IMP_MICROC,NR_DECL_IMP_PROTC,NR_DECLARACAO_IMPC,DT_PROCESSAMENTOC,DT_TRANSMISSAOC ");
            strSql.Append(",DT_REGISTRO_DIC,DT_DESEMBARACOC,DT_DISTRIBUICAOC,CanalC,FiscalC,COD_SITC,Data_CIC,Valor_FOBC ");
            strSql.Append(",Valor_CIFC,ident_meio1,ident_meio2 ");
            strSql.Append(",Data_liberacao,Urgente,consolidado,Pag_proporcional,TR_VAL_FOB_US,TR_VAL_CIF_US,TR_VAL_II ");
            strSql.Append(",TR_VAL_IPI,DDE,Processo_Adm,Proc_Adm_Data_Entrada,Faturado,Fechado,Centro_Custo,Procurador2 ");
            strSql.Append(",TR_VAL_PIS,TR_VAL_COFINS,RCR_LOCAL,Responsavel_EmpresaC,vinc_processo,proc_vinc,sem_nfs ");
            strSql.Append(",TR_IMPRESSOES,TR_IMPRESSOES_FECP,AVISO_DESEMBARACO,FK_Processos_Tipo_Urgencia,Coordenador_Resp ");
            strSql.Append(",Supervisor_Resp,BASE_ICMS,Aguardando_Medicao ");
            strSql.Append(",TR_Indeferido,Material_Usado,Sem_Email,Numero_RTC,Qtd_Itens_Fatura,TipoProjeto,Drawback ");
            strSql.Append("FROM Processos where Codigo = @Codigo");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo);
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Processo processo = null;

                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                processo = new Processo(objDr);
                            }
                        }

                        return processo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public IDictionary<string, string> BuscarPorCodigoStatus(string codigo)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT ID, Codigo, Data,Importador,Codigo_Cliente,Tipo_Declaracao ");
            strSql.Append(",Tipo,Contrato,Local_Inventario,NR_DECL_IMP_MICRO,NR_DECL_IMP_PROT,NR_DECLARACAO_IMP ");
            strSql.Append(",DT_PROCESSAMENTO,DT_TRANSMISSAO,DT_REGISTRO_DI,DT_DESEMBARACO,DT_DISTRIBUICAO,Canal ");
            strSql.Append(",Fiscal,Status,COD_SIT,CD_MOTIVO_TRANS,IN_MOEDA_UNICA,TX_INFO_COMPL,CD_TIPO_PGTO_TRIB ");
            strSql.Append(",Numero_RCR,Data_Entrada_RCR,Data_Aprovacao_RCR,Fundamentacao_RCR,Procurador,Numero_TR ");
            strSql.Append(",Data_Entrada_TR,Data_vencimento_TR,Data_Aprovacao_TR,Data_Baixa_TR,Data_CI,Tipo_Garantia ");
            strSql.Append(",Nome_banco_GAR,Agencia_GAR,Data_deposito_GAR,Nome_titulo_GAR,numeros_titulos_GAR ");
            strSql.Append(",Nome_seguradora_GAR,apolice_GAR,nome_fiador_GAR,CNPJ_fiador_GAR,endereco_fiador_GAR ");
            strSql.Append(",Quantidade_LI,Valor_FOB,Valor_CIF,Responsavel_Empresa,Responsavel_Importador");
            strSql.Append(",NR_DECL_IMP_MICROC,NR_DECL_IMP_PROTC,NR_DECLARACAO_IMPC,DT_PROCESSAMENTOC,DT_TRANSMISSAOC ");
            strSql.Append(",DT_REGISTRO_DIC,DT_DESEMBARACOC,DT_DISTRIBUICAOC,CanalC,FiscalC,COD_SITC,Data_CIC,Valor_FOBC ");
            strSql.Append(",Valor_CIFC,ident_meio1,ident_meio2 ");
            strSql.Append(",Data_liberacao,Urgente,consolidado,Pag_proporcional,TR_VAL_FOB_US,TR_VAL_CIF_US,TR_VAL_II ");
            strSql.Append(",TR_VAL_IPI,DDE,Processo_Adm,Proc_Adm_Data_Entrada,Faturado,Fechado,Centro_Custo,Procurador2 ");
            strSql.Append(",TR_VAL_PIS,TR_VAL_COFINS,RCR_LOCAL,Responsavel_EmpresaC,vinc_processo,proc_vinc,sem_nfs ");
            strSql.Append(",TR_IMPRESSOES,TR_IMPRESSOES_FECP,AVISO_DESEMBARACO,FK_Processos_Tipo_Urgencia,Coordenador_Resp ");
            strSql.Append(",Supervisor_Resp,BASE_ICMS,Aguardando_Medicao");
            strSql.Append(",TR_Indeferido,Material_Usado,Sem_Email,Numero_RTC,Qtd_Itens_Fatura,TipoProjeto,Drawback ");
            strSql.Append("FROM Processos where Codigo = @Codigo");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Codigo", codigo);

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        Dictionary<string, string> listaString = new Dictionary<string, string>();

                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                for (int i = 0; i < objDr.VisibleFieldCount; i++)
                                {
                                    listaString.Add(objDr.GetName(i), objDr[i].ToString());
                                }
                            }
                        }
                        else
                        {
                            return listaString;
                        }
                        return listaString;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public List<Processo> BuscarPorCodigoDesembaracados(string codigo, string ano, string mes)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT ID, Codigo,P.Data,P.Importador,Codigo_Cliente,Tipo_Declaracao ");
            strSql.Append(",P.Tipo,P.Contrato,Local_Inventario,NR_DECL_IMP_MICRO,NR_DECL_IMP_PROT,NR_DECLARACAO_IMP ");
            strSql.Append(",DT_PROCESSAMENTO,DT_TRANSMISSAO,DT_REGISTRO_DI,DT_DESEMBARACO,DT_DISTRIBUICAO,Canal ");
            strSql.Append(",Fiscal,Status,COD_SIT,CD_MOTIVO_TRANS,IN_MOEDA_UNICA,TX_INFO_COMPL,CD_TIPO_PGTO_TRIB ");
            strSql.Append(",Numero_RCR,Data_Entrada_RCR,Data_Aprovacao_RCR,Fundamentacao_RCR,Procurador,Numero_TR ");
            strSql.Append(",Data_Entrada_TR,Data_vencimento_TR,Data_Aprovacao_TR,Data_Baixa_TR,Data_CI,Tipo_Garantia ");
            strSql.Append(",Nome_banco_GAR,Agencia_GAR,Data_deposito_GAR,Nome_titulo_GAR,numeros_titulos_GAR ");
            strSql.Append(",Nome_seguradora_GAR,apolice_GAR,nome_fiador_GAR,CNPJ_fiador_GAR,endereco_fiador_GAR ");
            strSql.Append(",Quantidade_LI,Valor_FOB,Valor_CIF,Responsavel_Empresa,Responsavel_Importador");
            strSql.Append(",NR_DECL_IMP_MICROC,NR_DECL_IMP_PROTC,NR_DECLARACAO_IMPC,DT_PROCESSAMENTOC,DT_TRANSMISSAOC ");
            strSql.Append(",DT_REGISTRO_DIC,DT_DESEMBARACOC,DT_DISTRIBUICAOC,CanalC,FiscalC,COD_SITC,Data_CIC,Valor_FOBC ");
            strSql.Append(",Valor_CIFC,ident_meio1,ident_meio2 ");
            strSql.Append(",Data_liberacao,Urgente,consolidado,Pag_proporcional,TR_VAL_FOB_US,TR_VAL_CIF_US,TR_VAL_II ");
            strSql.Append(",TR_VAL_IPI,DDE,P.Processo_Adm,Proc_Adm_Data_Entrada,Faturado,Fechado,P.Centro_Custo,Procurador2 ");
            strSql.Append(",TR_VAL_PIS,TR_VAL_COFINS,RCR_LOCAL,Responsavel_EmpresaC,vinc_processo,proc_vinc,sem_nfs ");
            strSql.Append(",TR_IMPRESSOES,TR_IMPRESSOES_FECP,AVISO_DESEMBARACO,FK_Processos_Tipo_Urgencia,Coordenador_Resp ");
            strSql.Append(",Supervisor_Resp,BASE_ICMS,Aguardando_Medicao");
            strSql.Append(",TR_Indeferido,Material_Usado,Sem_Email,Numero_RTC,Qtd_Itens_Fatura,TipoProjeto,Drawback ");
            strSql.Append(",C.Descricao as DescricaoContrato, L.Descricao as DescricaoLocal ");
            strSql.Append("FROM Processos P inner join Contratos C on P.Importador = C.Importador and p.Contrato = C.Contrato  ");
            strSql.Append("left join Locais_Inventario L on L.Importador = P.Importador and P.Contrato = L.Contrato and P.Local_Inventario = L.Local ");            
            strSql.Append("where Status <> '4' AND P.Importador = @Importador ");
            strSql.Append("  AND YEAR(DT_DESEMBARACO) = @ano AND MONTH(DT_DESEMBARACO) = @mes ");
            //strSql.Append("  AND codigo in  ('02247/16', ");
            //strSql.Append(" '03184/16', ");
            //strSql.Append(" '03294/16', ");
            //strSql.Append(" '03314/16', ");
            //strSql.Append(" '03436/16', ");
            //strSql.Append(" '03883/16', ");
            //strSql.Append(" '03912/16') ");            
            //strSql.Append(" '01226/16', ");
            //strSql.Append(" '01588/16', ");
            //strSql.Append(" '01658/16', ");
            //strSql.Append(" '01659/16', ");
            //strSql.Append(" '01666/16', ");
            //strSql.Append(" '01673/16', ");
            //strSql.Append(" '01681/16', ");
            //strSql.Append(" '01716/16', ");
            //strSql.Append(" '01718/16', ");
            //strSql.Append(" '01729/13', ");
            //strSql.Append(" '01743/16', ");
            //strSql.Append(" '01767/16', ");
            //strSql.Append(" '02014/16', ");
            //strSql.Append(" '02015/16', ");
            //strSql.Append(" '02201/16', ");
            //strSql.Append(" '02253/16', ");
            //strSql.Append(" '02331/16', ");
            //strSql.Append(" '02388/16', ");
            //strSql.Append(" '02493/16', ");
            //strSql.Append(" '02496/16', ");
            //strSql.Append(" '02499/16', ");
            //strSql.Append(" '02500/16', ");
            //strSql.Append(" '02508/16', ");
            //strSql.Append(" '02533/16', ");
            //strSql.Append(" '02712/16', ");
            //strSql.Append(" '02713/16', ");
            //strSql.Append(" '02808/16', ");
            //strSql.Append(" '02887/16', ");
            //strSql.Append(" '02901/16', ");
            //strSql.Append(" '02908/16', ");
            //strSql.Append(" '02927/16', ");
            //strSql.Append(" '03055/16', ");
            //strSql.Append(" '03076/16', ");
            //strSql.Append(" '03082/16', ");
            //strSql.Append(" '03101/16', ");
            //strSql.Append(" '03125/16', ");
            //strSql.Append(" '03142/16', ");
            //strSql.Append(" '03143/16', ");
            //strSql.Append(" '03146/16', ");
            //strSql.Append(" '03152/16', ");
            //strSql.Append(" '03153/16', ");
            //strSql.Append(" '03171/16', ");
            //strSql.Append(" '03184/16', ");
            //strSql.Append(" '03185/16', ");
            //strSql.Append(" '03204/16', ");
            //strSql.Append(" '03207/16', ");
            //strSql.Append(" '03245/16', ");
            //strSql.Append(" '03246/16', ");
            //strSql.Append(" '03282/16', ");
            //strSql.Append(" '03285/16', ");
            //strSql.Append(" '03286/16', ");
            //strSql.Append(" '03292/16', ");
            //strSql.Append(" '03294/16', ");
            //strSql.Append(" '03302/16', ");
            //strSql.Append(" '03304/16', ");
            //strSql.Append(" '03348/16', ");
            //strSql.Append(" '03436/16', ");
            //strSql.Append(" '03437/16', ");
            //strSql.Append(" '03467/16', ");
            //strSql.Append(" '03488/16', ");
            //strSql.Append(" '03548/16', ");
            //strSql.Append(" '03614/16', ");
            //strSql.Append(" '03646/16', ");
            //strSql.Append(" '03661/16', ");
            //strSql.Append(" '03663/16', ");
            //strSql.Append(" '03689/16', ");
            //strSql.Append(" '03728/16', ");
            //strSql.Append(" '03788/16', ");
            //strSql.Append(" '03873/16', ");
            //strSql.Append(" '03874/16', ");
            //strSql.Append(" '03876/16', ");
            //strSql.Append(" '03883/16', ");
            //strSql.Append(" '03908/16', ");
            //strSql.Append(" '03912/16', ");
            //strSql.Append(" '00060/16', ");
            //strSql.Append(" '00159/16', ");
            //strSql.Append(" '00204/16', ");
            //strSql.Append(" '00248/16', ");
            //strSql.Append(" '00575/16', ");
            //strSql.Append(" '00679/16', ");
            //strSql.Append(" '00703/16', ");
            //strSql.Append(" '00815/16', ");
            //strSql.Append(" '00844/16', ");
            //strSql.Append(" '00871/16', ");
            //strSql.Append(" '00997/16', ");
            //strSql.Append(" '01350/16', ");
            //strSql.Append(" '01362/16', ");
            //strSql.Append(" '01589/16', ");
            //strSql.Append(" '01714/16', ");
            //strSql.Append(" '01717/16', ");
            //strSql.Append(" '01766/16', ");
            //strSql.Append(" '01957/16', ");
            //strSql.Append(" '01986/16', ");
            //strSql.Append(" '02043/16', ");
            //strSql.Append(" '02147/16', ");
            //strSql.Append(" '02148/16', ");
            //strSql.Append(" '02196/16', ");
            //strSql.Append(" '02200/16', ");
            //strSql.Append(" '02203/16', ");
            //strSql.Append(" '02247/16', ");
            //strSql.Append(" '02252/16', ");
            //strSql.Append(" '02254/16', ");
            //strSql.Append(" '02275/16', ");
            //strSql.Append(" '02303/16', ");
            //strSql.Append(" '02373/16', ");
            //strSql.Append(" '02376/16', ");
            //strSql.Append(" '02403/16', ");
            //strSql.Append(" '02476/16', ");
            //strSql.Append(" '02494/16', ");
            //strSql.Append(" '02534/16', ");
            //strSql.Append(" '02535/16', ");
            //strSql.Append(" '02542/16', ");
            //strSql.Append(" '02546/16', ");
            //strSql.Append(" '02547/16', ");
            //strSql.Append(" '02586/16', ");
            //strSql.Append(" '02642/16', ");
            //strSql.Append(" '02643/16', ");
            //strSql.Append(" '02660/16', ");
            //strSql.Append(" '02690/16', ");
            //strSql.Append(" '02733/16', ");
            //strSql.Append(" '02866/16', ");
            //strSql.Append(" '02882/16', ");
            //strSql.Append(" '02885/16', ");
            //strSql.Append(" '02886/16', ");
            //strSql.Append(" '02900/16', ");
            //strSql.Append(" '02905/16', ");
            //strSql.Append(" '02906/16', ");
            //strSql.Append(" '02907/16', ");
            //strSql.Append(" '02937/16', ");
            //strSql.Append(" '02984/16', ");
            //strSql.Append(" '03003/16', ");
            //strSql.Append(" '03040/16', ");
            //strSql.Append(" '03064/16', ");
            //strSql.Append(" '03073/16', ");
            //strSql.Append(" '03074/16', ");
            //strSql.Append(" '03075/16', ");
            //strSql.Append(" '03087/16', ");
            //strSql.Append(" '03088/16', ");
            //strSql.Append(" '03089/16', ");
            //strSql.Append(" '03099/16', ");
            //strSql.Append(" '03103/16', ");
            //strSql.Append(" '03104/16', ");
            //strSql.Append(" '03126/16', ");
            //strSql.Append(" '03127/16', ");
            //strSql.Append(" '03173/16', ");
            //strSql.Append(" '03182/16', ");
            //strSql.Append(" '03192/16', ");
            //strSql.Append(" '03200/16', ");
            //strSql.Append(" '03206/16', ");
            //strSql.Append(" '03221/16', ");
            //strSql.Append(" '03231/16', ");
            //strSql.Append(" '03235/16', ");
            //strSql.Append(" '03239/15', ");
            //strSql.Append(" '03242/16', ");
            //strSql.Append(" '03247/16', ");
            //strSql.Append(" '03293/16', ");
            //strSql.Append(" '03303/16', ");
            //strSql.Append(" '03314/16', ");
            //strSql.Append(" '03329/16', ");
            //strSql.Append(" '03330/16', ");
            //strSql.Append(" '03333/16', ");
            //strSql.Append(" '03344/16', ");
            //strSql.Append(" '03400/16', ");
            //strSql.Append(" '03415/16', ");
            //strSql.Append(" '03534/16', ");
            //strSql.Append(" '03609/16', ");
            //strSql.Append(" '03624/16', ");
            //strSql.Append(" '03681/16', ");
            //strSql.Append(" '03789/16', ");
            //strSql.Append(" '03818/16', ");
            //strSql.Append(" '03834/16', ");
            //strSql.Append(" '03862/16', ");
            //strSql.Append(" '03900/16', ");
            //strSql.Append(" '03906/16', ");
            //strSql.Append(" '03911/16', ");
            //strSql.Append(" '00092/16', ");
            //strSql.Append(" '00395/16', ");
            //strSql.Append(" '00497/16', ");
            //strSql.Append(" '00592/15', ");
            //strSql.Append(" '00843/16', ");
            //strSql.Append(" '03576/16') ");



                   
            
            //strSql.Append("and  P.NR_DECLARACAO_IMP in ('1208340290','1208443285','1209036420','1209039445','1209045810','1209068453','1213192201','1214668021','1218237297','1221016131','1221821239','1221824637','1222419248','1300905419','1301688039','1302876505','1304662332','1304662340','1304821503','1306631981','1308134756','1312442532','1317257377','1319939629','1322752941','1407580681','1409804234') ");
            //strSql.Append("where Status <> '4' AND P.Importador = @Importador and DT_DESEMBARACO between '01/01/2013' and '31/12/2017' ");           
            //strSql.Append("FROM Processos where Status <> '4' AND TIPO IN ('11','12','13','32','33','6','TT') AND Importador = @Importador and DT_DESEMBARACO >= '01/01/2011' ");           
            //strSql.Append("where P.Status <> '4' AND P.TIPO IN ('1','11','12','13','14','15','16','17','18','19','20','40','41','43','IB','IT','LI') AND P.Importador = @Importador and P.DT_DESEMBARACO between '01/01/2008' and '31/12/2017'and p.Tipo_Declaracao = '12' ");
            //strSql.Append(" AND P.TIPO IN ('1','11','12','13','14','15','16','17','18','19','20','40','41','43','IB','IT','LI') and p.Tipo_Declaracao = '05' and P.DT_DESEMBARACO between '01/01/2012' and '31/12/2015' ");
            strSql.Append("order by P.DT_DESEMBARACO, P.Contrato");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@Importador", codigo);
                    objCommand.Parameters.AddWithValue("@ano", ano);
                    objCommand.Parameters.AddWithValue("@mes", mes);

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Processo> processo = new List<Processo>();

                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                processo.Add(new Processo(objDr));
                            }
                        }

                        return processo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<Processo> BuscarPorCodigoFaturados(string codigo, string ano, string mes)
        {
            var strSql = new StringBuilder();
            strSql.Append("SELECT DISTINCT NFS.Importador,                                                                                                ");
            strSql.Append("       NFS.Data_emissao,                                                                                                       ");
            strSql.Append("       CASE NFSP.PROCESSO WHEN ''                                                                                              ");
            strSql.Append("         then NFS.Processo                                                                                                     ");
            strSql.Append("         else ISNULL(NFSP.PROCESSO,NFS.PROCESSO)                                                                               ");
            strSql.Append("       END AS PROCESSO,                                                                                                        ");
            strSql.Append("          NFS.NFiscal                                                                                                          ");
            strSql.Append("  FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP                                              ");
            strSql.Append("    ON NFS.NFISCAL = NFSP.NFISCAL                                                                                              ");
            strSql.Append(" WHERE NFS.Cancelada = 0 AND NFS.Importador = @importador AND YEAR(NFS.Data_emissao) = @ano AND MONTH(NFS.Data_emissao) = @mes ");
            //strSql.Append(" WHERE NFS.Cancelada = 0 AND NFS.Importador = @importador AND NFS.Data_emissao between '01/01/2014' and '31/12/2016'           ");            
            strSql.Append(" ORDER BY NFISCAL                                                                                                              ");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var objCommand = new SqlCommand(strSql.ToString(), conn))
                {
                    objCommand.Parameters.AddWithValue("@importador", codigo);
                    objCommand.Parameters.AddWithValue("@ano", ano);
                    objCommand.Parameters.AddWithValue("@mes", mes);

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        List<Processo> processo = new List<Processo>();
                        if (objDr.HasRows)
                        {
                            while (objDr.Read())
                            {
                                processo.Add(new Processo
                                {
                                    Codigo = objDr["PROCESSO"].ToString(),
                                    Importador = objDr["Importador"].ToString(),
                                    Data_emissao = (DateTime)objDr["Data_emissao"],
                                });
                            }
                        }
                        return processo;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        private string ObterNovoCodigo()
        {
            string retorno = "-1";
            var strSql = new StringBuilder();
            strSql.Append("SELECT CASE ");
            strSql.Append("WHEN SUBSTRING(CODIGO,7,2) = RIGHT(YEAR(GETDATE()),2) THEN ");
            strSql.Append("RIGHT('00000'+");
            strSql.Append("CONVERT(VARCHAR(5), CONVERT(INT, SUBSTRING(CODIGO,1,5))+1),5)+'/'+RIGHT(YEAR(GETDATE()),2) ");
            strSql.Append("ELSE RIGHT('00000'+");
            strSql.Append("CONVERT(VARCHAR(5),1),5)+'/'+RIGHT(YEAR(GETDATE()),2) ");
            strSql.Append("END AS NEWCODE FROM PROCESSOS ");
            strSql.Append("WHERE ID = (SELECT MAX(ID) FROM PROCESSOS WHERE Tipo <> 'FI' AND DATA IS NOT NULL)");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                retorno = dr["NEWCODE"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                retorno = "ERRO";
            }
            return retorno;
        }

        public int RetornaID(string Processo)
        {
            int ID = 0;

            var strSql = new StringBuilder();

            strSql.Append(" SELECT ID FROM Processos WHERE Codigo = @Codigo ");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", Processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                ID = (int)dr["ID"];
                            }
                        }

                        return ID;
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public string Incluir(Processo processo)
        {
            var strSql = new StringBuilder();
            strSql.Append("INSERT INTO Processos ");
            strSql.Append("(Codigo, Data, Centro_Custo, Importador, Codigo_Cliente, Tipo_Declaracao,");
            strSql.Append("Tipo, Contrato, Local_Inventario, Status, COD_SIT, Material_Usado, FK_Processos_Tipo_Urgencia, Urgente,Pag_proporcional,Numero_RTC,Qtd_Itens_Fatura,TipoProjeto,vinc_processo,proc_vinc,Drawback,Supervisor_Resp,Coordenador_Resp,Responsavel_Empresa)");
            strSql.Append("VALUES(@Codigo, @Data, @Centro_Custo, @Importador, @Codigo_Cliente, @Tipo_Declaracao, @Tipo, @Contrato, @Local_Inventario,");
            strSql.Append("@Status, @COD_SIT, @Material_Usado, @FK_Processos_Tipo_Urgencia, @Urgente,@Pag_proporcional, @Numero_RTC, @Qtd_Itens_Fatura,@TipoProjeto,@vinc_processo,@proc_vinc,@Drawback,@Supervisor_Resp,@Coordenador_Resp,@Responsavel_Empresa); SELECT SCOPE_IDENTITY()");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    processo.Codigo = this.ObterNovoCodigo();
                    cmd.Parameters.AddWithValue("@Codigo", processo.Codigo);
                    cmd.Parameters.AddWithValue("@Data", processo.Data);
                    cmd.Parameters.AddWithValue("@Centro_Custo", processo.Centro_Custo);
                    cmd.Parameters.AddWithValue("@Importador", processo.Importador);
                    cmd.Parameters.AddWithValue("@Codigo_Cliente", string.IsNullOrEmpty(processo.Codigo_Cliente) ? (object)DBNull.Value : processo.Codigo_Cliente);
                    cmd.Parameters.AddWithValue("@Tipo_Declaracao", string.IsNullOrEmpty(processo.Tipo_Declaracao) ? (object)DBNull.Value : processo.Tipo_Declaracao);
                    cmd.Parameters.AddWithValue("@Tipo", processo.Tipo);
                    cmd.Parameters.AddWithValue("@Contrato", string.IsNullOrEmpty(processo.Contrato) ? (object)DBNull.Value : processo.Contrato);
                    cmd.Parameters.AddWithValue("@Local_Inventario", string.IsNullOrEmpty(processo.Local_Inventario) ? (object)DBNull.Value : processo.Local_Inventario);
                    cmd.Parameters.AddWithValue("@Status", processo.Status);
                    cmd.Parameters.AddWithValue("@COD_SIT", processo.COD_SIT);
                    cmd.Parameters.AddWithValue("@Material_Usado", processo.Material_Usado);
                    cmd.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", (processo.FK_Processos_Tipo_Urgencia == null) ? (object)DBNull.Value : processo.FK_Processos_Tipo_Urgencia);
                    cmd.Parameters.AddWithValue("@Urgente", processo.Urgente == null ? (object)DBNull.Value : processo.Urgente);
                    cmd.Parameters.AddWithValue("@Qtd_Itens_Fatura", processo.Qtd_Itens_Fatura == null ? (object)DBNull.Value : processo.Qtd_Itens_Fatura);
                    cmd.Parameters.AddWithValue("@Pag_proporcional", processo.Pag_proporcional);
                    cmd.Parameters.AddWithValue("@Numero_RTC", string.IsNullOrEmpty(processo.Numero_RTC) ? (object)DBNull.Value : processo.Numero_RTC);
                    cmd.Parameters.AddWithValue("@TipoProjeto", processo.TipoProjeto);
                    cmd.Parameters.AddWithValue("@vinc_processo", processo.vinc_processo);
                    cmd.Parameters.AddWithValue("@proc_vinc", string.IsNullOrEmpty(processo.proc_vinc) ? (object)DBNull.Value : processo.proc_vinc);
                    cmd.Parameters.AddWithValue("@Coordenador_Resp", string.IsNullOrEmpty(processo.Coordenador_Resp) ? (object)DBNull.Value : processo.Coordenador_Resp);
                    cmd.Parameters.AddWithValue("@Supervisor_Resp", string.IsNullOrEmpty(processo.Supervisor_Resp) ? (object)DBNull.Value : processo.Supervisor_Resp);
                    cmd.Parameters.AddWithValue("@Responsavel_Empresa", string.IsNullOrEmpty(processo.Responsavel_Empresa) ? (object)DBNull.Value : processo.Responsavel_Empresa);                    
                    cmd.Parameters.AddWithValue("@Drawback", processo.Drawback);
                    this.ID = Convert.ToInt32(cmd.ExecuteScalar());
                }
                return processo.Codigo;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool Alterar(Processo processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Processos SET ");
            strSql.Append("Centro_Custo=@Centro_Custo, Importador=@Importador,");
            strSql.Append("Codigo_Cliente=@Codigo_Cliente, Tipo_Declaracao=@Tipo_Declaracao,Tipo=@Tipo, Contrato=@Contrato, Local_Inventario=@Local_Inventario,");
            strSql.Append("Urgente=@Urgente, Material_Usado=@Material_Usado, FK_Processos_Tipo_Urgencia=@FK_Processos_Tipo_Urgencia, Pag_proporcional=@Pag_proporcional, Numero_RTC=@Numero_RTC, Qtd_Itens_Fatura=@Qtd_Itens_Fatura, TipoProjeto=@TipoProjeto ,vinc_processo=@vinc_processo, proc_vinc=@proc_vinc, Drawback=@Drawback ");
            strSql.Append("WHERE Codigo = @Processo");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo.Codigo);
                    cmd.Parameters.AddWithValue("@Centro_Custo", processo.Centro_Custo);
                    cmd.Parameters.AddWithValue("@Importador", processo.Importador);
                    cmd.Parameters.AddWithValue("@Codigo_Cliente", string.IsNullOrEmpty(processo.Codigo_Cliente) ? (object)DBNull.Value : processo.Codigo_Cliente);
                    cmd.Parameters.AddWithValue("@Tipo_Declaracao", string.IsNullOrEmpty(processo.Tipo_Declaracao) ? (object)DBNull.Value : processo.Tipo_Declaracao);
                    cmd.Parameters.AddWithValue("@Tipo", processo.Tipo);
                    cmd.Parameters.AddWithValue("@Contrato", string.IsNullOrEmpty(processo.Contrato) ? (object)DBNull.Value : processo.Contrato);
                    cmd.Parameters.AddWithValue("@Local_Inventario", string.IsNullOrEmpty(processo.Local_Inventario) ? (object)DBNull.Value : processo.Local_Inventario);
                    cmd.Parameters.AddWithValue("@Material_Usado", processo.Material_Usado);
                    cmd.Parameters.AddWithValue("@FK_Processos_Tipo_Urgencia", (processo.FK_Processos_Tipo_Urgencia == null) ? (object)DBNull.Value : processo.FK_Processos_Tipo_Urgencia);
                    cmd.Parameters.AddWithValue("@Urgente", processo.Urgente == null ? (object)DBNull.Value : processo.Urgente);
                    cmd.Parameters.AddWithValue("@Qtd_Itens_Fatura", processo.Qtd_Itens_Fatura == null ? (object)DBNull.Value : processo.Qtd_Itens_Fatura);
                    cmd.Parameters.AddWithValue("@Pag_proporcional", processo.Pag_proporcional);
                    cmd.Parameters.AddWithValue("@Numero_RTC", string.IsNullOrEmpty(processo.Numero_RTC) ? (object)DBNull.Value : processo.Numero_RTC);
                    cmd.Parameters.AddWithValue("@TipoProjeto", processo.TipoProjeto == null ? (object)DBNull.Value : processo.TipoProjeto);
                    cmd.Parameters.AddWithValue("@vinc_processo", processo.vinc_processo);
                    cmd.Parameters.AddWithValue("@proc_vinc", string.IsNullOrEmpty(processo.proc_vinc) ? (object)DBNull.Value : processo.proc_vinc);
                    cmd.Parameters.AddWithValue("@Drawback", processo.Drawback);
                    cmd.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool ExisteTributacao(string processo)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT TOP 1 F.Processo FROM Faturas F INNER JOIN Tributacao_Item_Fatura T ON F.Fatura_Id = T.Fatura_Id WHERE F.Processo = @Processo");
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(strSql.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public List<Processo> buscaProcessosFatura(string processo)
        {
            List<Processo> lstFaturas = new List<Processo>();

            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT P.nr_decl_imp_micro,                                     ");
            sb.Append("       '01'                    AS cod_fat,                      ");
            sb.Append("       'fatura comercial'      AS tipo_doc01,                   ");
            sb.Append("        F.Codigo as fatura,                                     ");
            sb.Append("       '02'                    AS cod_co,                       ");
            sb.Append("       'certificado de origem' AS tipo_doc02,                   ");
            sb.Append("       TIF.certificado_origem                                   ");
            sb.Append("FROM  processos P                                               ");
            sb.Append("INNER JOIN Faturas F on F.Processo = P.codigo                   ");
            sb.Append("       INNER JOIN tributacao_item_fatura TIF                    ");
            sb.Append("       ON F.Fatura_Id = TIF.Fatura_Id                           ");
            sb.Append("WHERE  P.codigo = @processo                                     ");
            sb.Append("GROUP  BY P.nr_decl_imp_micro, F.Codigo,TIF.certificado_origem");

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (var cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                lstFaturas.Add(new Processo(dr["COD_FAT"].ToString(),
                                                            dr["TIPO_DOC01"].ToString(),
                                                            dr["FATURA"].ToString(),
                                                            dr["COD_CO"].ToString(),
                                                            dr["TIPO_DOC02"].ToString(),
                                                            dr["CERTIFICADO_ORIGEM"].ToString()));
                            }

                        }
                    }

                }

            }
            catch (SqlException sqlex)
            {
                throw;
            }

            return lstFaturas;
        }

        public bool ProcessoNoControleDoUsuario(string processo)
        {
            string query = "SELECT Usuario FROM Controle_Pastas WHERE Aceite = 1 AND Processo = @Processo AND Usuario = @Usuario";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    cmd.Parameters.AddWithValue("@Usuario", FrmPrincipal.UsuarioLogado);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool ProcessoSemDesembaraco(string processo)
        {
            string query = "SELECT P.Codigo                                                                   "
                         + "  FROM Processos P                                                                "
                         + "       INNER JOIN Tipos_de_Processos TP ON P.Tipo = TP.CODIGO                     "
                         + " WHERE ((TP.Sem_Desembaraco = 1) OR (P.Status = 4) OR (P.Verifica_Pendencia = 0)) "
                         + "   AND P.Codigo = @Processo                                                       ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool TemItemPassivelDeAdmissao(string processo)
        {
            string query = "  SELECT TOP 1 CASE F.Moeda WHEN '220'                                                                                                                                                             " +
                           "                 THEN ITF.Valor_Unitario                                                                                                                                                           " +
                           "                 ELSE ((ITF.Valor_Unitario*CAST(REPLACE(Taxa_Conversao,',','.') AS float))/(SELECT CAST(REPLACE(Taxa_Conversao,',','.') AS float) FROM TAB_CONVERSAO_CAMBIO WHERE Codigo = '220')) " +
                           "               END AS Valor_Unitario                                                                                                                                                               " +
                           "    FROM ItensFaturas ITF                                                                                                                                                                          " +
                           "         INNER JOIN Faturas F ON F.Fatura_id = ITF.Fatura_id                                                                                                                                       " +
                           "         INNER JOIN TAB_CONVERSAO_CAMBIO T ON T.Codigo = F.Moeda                                                                                                                                   " +
                           "   WHERE F.Processo = @Processo                                                                                                                                                                    " +
                           "  GROUP BY F.Moeda, ITF.Valor_Unitario, T.Taxa_Conversao                                                                                                                                           " +
                           " ORDER BY ITF.Valor_Unitario DESC                                                                                                                                                                  ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        double valor_unitario;

                        if (dr.HasRows)
                        {
                            dr.Read();

                            valor_unitario = (double)dr["Valor_Unitario"];

                            if (valor_unitario > 25000)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public bool TemDIAutorizada(string processo)
        {
            string query = " SELECT Processo, Data_Analise, Auditor1, Data_Auditor1 FROM Audita_Registro_DI WHERE Rejeitada = 0 AND Processo = @Processo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public string StatusProcesso(string cod_status)
        {
            string query = " SELECT DESCRICAO FROM Tipos_status_processos WHERE CODIGO = @cod_status ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@cod_status", cod_status);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return dr["DESCRICAO"].ToString();
                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static string Processo_Vinculado(string processo)
        {
            string query = " SELECT proc_vinc FROM Processos WHERE CODIGO = @CODIGO ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CODIGO", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return dr["proc_vinc"].ToString();
                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static string DescricaoContratoLocal(string processo)
        {
            string query = "Select C.Descricao as 'Contrato', L.Descricao as 'Local' from Processos P " +
                           "inner join Contratos C on P.Importador= c.Importador and P.Contrato = C.Contrato " +
                           "inner join Locais_Inventario L on P.Importador= L.Importador and P.Contrato = L.Contrato and P.Local_Inventario = L.Local " +
                           "Where p.Codigo = @CODIGO ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CODIGO", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return dr["Contrato"].ToString() + " - " + dr["Local"].ToString();
                        }
                        else
                        {
                            return "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static bool statusDIRegistradaSolRegNOTOK(string processo)
        {
            string query = " select REF_MS from Autorizacao_Registros where Status < 3 and REF_MS = @REF_MS ";
          //string query = " select REF_MS from Autorizacao_Registros where Contabilizado_cliente = 0 and Status < 3 and REF_MS = @REF_MS ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@REF_MS", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static bool DIContabilizadaSolReg(string processo)
        {
            string query = " SELECT Status FROM Autorizacao_Registros WHERE Status = 5 AND REF_MS = @REF_MS ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@REF_MS", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        return dr.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static double TaxaConversaoCambio(string processo, string moeda)
        {
            string query = " SELECT Taxa_Conversao FROM Processos_Taxas_Conversao WHERE Processo = @Processo AND Moeda = @Moeda";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", processo);
                    cmd.Parameters.AddWithValue("@Moeda", moeda);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return (double)dr["Taxa_Conversao"];
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
                throw;
            }
        }

        public static string ConfereImportadorProcesso(string processo)
        {
            string query = " SELECT Importador FROM Processos WHERE Codigo = @Codigo ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CODIGO", processo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return dr["Importador"].ToString();
                        }
                        else
                        {
                            return "0";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static double Saldo(string codigo)
        {
            string query = " SELECT ROUND((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE PROCESSO = PROCESSOS.CODIGO),2) AS DEBITOS,  " +
                           "        ROUND((SELECT ISNULL(SUM(VALOR),0) FROM CREDITOS_PROCESSOS WHERE PROCESSO = PROCESSOS.CODIGO),2) AS CREDITOS               " +
                           "   FROM PROCESSOS                                                                                                                  " +
                           "  WHERE CODIGO = @Processo                                                                                                         ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                using (var cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            dr.Read();

                            return ((double)dr["CREDITOS"] - (double)dr["DEBITOS"]);
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
                throw;
            }
        }

        #endregion
    }
}



