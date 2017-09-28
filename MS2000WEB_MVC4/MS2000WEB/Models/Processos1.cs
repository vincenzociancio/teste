using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos1
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
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
        public Nullable<System.DateTime> DT_DESEMBARACO { get; set; }
        public Nullable<System.DateTime> DT_DISTRIBUICAO { get; set; }
        public string Canal { get; set; }
        public string Fiscal { get; set; }
        public string Status { get; set; }
        public string COD_SIT { get; set; }
        public string CD_MOTIVO_TRANS { get; set; }
        public Nullable<int> IN_MOEDA_UNICA { get; set; }
        public string TX_INFO_COMPL { get; set; }
        public string CD_TIPO_PGTO_TRIB { get; set; }
        public string Numero_RCR { get; set; }
        public Nullable<System.DateTime> Data_Entrada_RCR { get; set; }
        public Nullable<System.DateTime> Data_Aprovacao_RCR { get; set; }
        public string Fundamentacao_RCR { get; set; }
        public string Procurador { get; set; }
        public string Numero_TR { get; set; }
        public Nullable<System.DateTime> Data_Entrada_TR { get; set; }
        public Nullable<System.DateTime> Data_vencimento_TR { get; set; }
        public Nullable<System.DateTime> Data_Aprovacao_TR { get; set; }
        public Nullable<System.DateTime> Data_Baixa_TR { get; set; }
        public Nullable<System.DateTime> Data_CI { get; set; }
        public string Tipo_Garantia { get; set; }
        public string Nome_banco_GAR { get; set; }
        public string Agencia_GAR { get; set; }
        public Nullable<System.DateTime> Data_deposito_GAR { get; set; }
        public string Nome_titulo_GAR { get; set; }
        public string numeros_titulos_GAR { get; set; }
        public string Nome_seguradora_GAR { get; set; }
        public string apolice_GAR { get; set; }
        public string nome_fiador_GAR { get; set; }
        public string CNPJ_fiador_GAR { get; set; }
        public string endereco_fiador_GAR { get; set; }
        public Nullable<double> Quantidade_LI { get; set; }
        public Nullable<double> Valor_FOB { get; set; }
        public Nullable<double> Valor_CIF { get; set; }
        public string Responsavel_Empresa { get; set; }
        public string Responsavel_Importador { get; set; }
        public Nullable<double> Saldo_Faturamento { get; set; }
        public string NR_DECL_IMP_MICROC { get; set; }
        public string NR_DECL_IMP_PROTC { get; set; }
        public string NR_DECLARACAO_IMPC { get; set; }
        public string DT_PROCESSAMENTOC { get; set; }
        public string DT_TRANSMISSAOC { get; set; }
        public string DT_REGISTRO_DIC { get; set; }
        public Nullable<System.DateTime> DT_DESEMBARACOC { get; set; }
        public Nullable<System.DateTime> DT_DISTRIBUICAOC { get; set; }
        public string CanalC { get; set; }
        public string FiscalC { get; set; }
        public string COD_SITC { get; set; }
        public Nullable<System.DateTime> Data_CIC { get; set; }
        public Nullable<double> Valor_FOBC { get; set; }
        public Nullable<double> Valor_CIFC { get; set; }
        public string ident_meio1 { get; set; }
        public string ident_meio2 { get; set; }
        public string Codevento { get; set; }
        public string Codobs { get; set; }
        public string Obs_especifica { get; set; }
        public Nullable<System.DateTime> Data_ufollowup { get; set; }
        public string Hora_ufollowup { get; set; }
        public Nullable<System.DateTime> Data_liberacao { get; set; }
        public Nullable<int> Urgente { get; set; }
        public Nullable<int> consolidado { get; set; }
        public Nullable<int> Pag_proporcional { get; set; }
        public Nullable<double> TR_VAL_FOB_US { get; set; }
        public Nullable<double> TR_VAL_CIF_US { get; set; }
        public Nullable<double> TR_VAL_II { get; set; }
        public Nullable<double> TR_VAL_IPI { get; set; }
        public string DDE { get; set; }
        public string Processo_Adm { get; set; }
        public Nullable<System.DateTime> Proc_Adm_Data_Entrada { get; set; }
        public Nullable<int> Faturado { get; set; }
        public Nullable<int> Fechado { get; set; }
        public string Centro_Custo { get; set; }
        public string Procurador2 { get; set; }
        public Nullable<double> TR_VAL_PIS { get; set; }
        public Nullable<double> TR_VAL_COFINS { get; set; }
        public string RCR_LOCAL { get; set; }
        public string Responsavel_EmpresaC { get; set; }
        public Nullable<int> vinc_processo { get; set; }
        public string proc_vinc { get; set; }
        public Nullable<int> sem_nfs { get; set; }
        public Nullable<int> TR_IMPRESSOES { get; set; }
        public Nullable<int> TR_IMPRESSOES_FECP { get; set; }
        public Nullable<int> AVISO_DESEMBARACO { get; set; }
        public Nullable<int> FK_Processos_Tipo_Urgencia { get; set; }
        public string Coordenador_Resp { get; set; }
        public string Supervisor_Resp { get; set; }
        public Nullable<int> BASE_ICMS { get; set; }
    }
}
