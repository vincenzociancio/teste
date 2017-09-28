using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;

namespace MSBiblioteca.DTO
{
    public class ProcessoDTO
    {
        public ProcessoDTO()
        {
            if (contrato == null)
            {
                contrato = new Contrato();
            }

            if (fatura == null)
            {
                fatura = new List<Fatura>();
            }
        }

        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public DateTime Data { get; set; }
        public string FK_Importador { get; set; }
        public string Codigo_Cliente { get; set; }
        public string Tipo_Declaracao { get; set; }
        public string Tipo { get; set; }
        public string FK_Contrato { get; set; }
        public string FK_Local_Inventario { get; set; }
        public string NR_DECL_IMP_MICRO { get; set; }
        public string NR_DECL_IMP_PROT { get; set; }
        public string NR_DECLARACAO_IMP { get; set; }
        public string DT_PROCESSAMENTO { get; set; }
        public string DT_TRANSMISSAO { get; set; }
        public string DT_REGISTRO_DI { get; set; }
        public DateTime DT_DESEMBARACO { get; set; }
        public DateTime DT_DISTRIBUICAO { get; set; }
        public string Canal { get; set; }
        public string Fiscal { get; set; }
        public string Status { get; set; }
        public string COD_SIT { get; set; }
        public string CD_MOTIVO_TRANS { get; set; }
        public int IN_MOEDA_UNICA { get; set; }
        public string TX_INFO_COMPL { get; set; }
        public string CD_TIPO_PGTO_TRIB { get; set; }
        public string Numero_RCR { get; set; }
        public DateTime Data_Entrada_RCR { get; set; }
        public DateTime Data_Aprovacao_RCR { get; set; }
        public string Fundamentacao_RCR { get; set; }
        public string FK_Procurador { get; set; }
        public string Numero_TR { get; set; }
        public DateTime Data_Entrada_TR { get; set; }
        public DateTime Data_vencimento_TR { get; set; }
        public DateTime Data_Aprovacao_TR { get; set; }
        public DateTime Data_Baixa_TR { get; set; }
        public DateTime Data_CI { get; set; }
        public string Tipo_Garantia { get; set; }
        public string Nome_banco_GAR { get; set; }
        public string Agencia_GAR { get; set; }
        public DateTime Data_deposito_GAR { get; set; }
        public string Nome_titulo_GAR { get; set; }
        public string numeros_titulos_GAR { get; set; }
        public string Nome_seguradora_GAR { get; set; }
        public string apolice_GAR { get; set; }
        public string nome_fiador_GAR { get; set; }
        public string CNPJ_fiador_GAR { get; set; }
        public string endereco_fiador_GAR { get; set; }
        public float Quantidade_LI { get; set; }
        public float Valor_FOB { get; set; }
        public float Valor_CIF { get; set; }
        public string Responsavel_Empresa { get; set; }
        public string Responsavel_Importador { get; set; }
        public float Saldo_Faturamento { get; set; }
        public string NR_DECL_IMP_MICROC { get; set; }
        public string NR_DECL_IMP_PROTC { get; set; }
        public string NR_DECLARACAO_IMPC { get; set; }
        public string DT_PROCESSAMENTOC { get; set; }
        public string DT_TRANSMISSAOC { get; set; }
        public string DT_REGISTRO_DIC { get; set; }
        public DateTime DT_DESEMBARACOC { get; set; }
        public DateTime DT_DISTRIBUICAOC { get; set; }
        public string CanalC { get; set; }
        public string FiscalC { get; set; }
        public string COD_SITC { get; set; }
        public DateTime Data_CIC { get; set; }
        public float Valor_FOBC { get; set; }
        public float Valor_CIFC { get; set; }
        public string ident_meio1 { get; set; }
        public string ident_meio2 { get; set; }
        public string Codevento { get; set; }
        public string Codobs { get; set; }
        public string Obs_especifica { get; set; }
        public DateTime Data_ufollowup { get; set; }
        public string Hora_ufollowup { get; set; }
        public DateTime Data_liberacao { get; set; }
        public int Urgente { get; set; }
        public int consolidado { get; set; }
        public int Pagamento_Proporcional { get; set; }
        public float TR_VAL_FOB_US { get; set; }
        public float TR_VAL_CIF_US { get; set; }
        public float TR_VAL_II { get; set; }
        public float TR_VAL_IPI { get; set; }
        public string DDE { get; set; }
        public string Processo_Adm { get; set; }
        public DateTime Proc_Adm_Data_Entrada { get; set; }
        public int Faturado { get; set; }
        public int Fechado { get; set; }
        public string FK_Centro_Custo { get; set; }
        public string Procurador2 { get; set; }
        public float TR_VAL_PIS { get; set; }
        public float TR_VAL_COFINS { get; set; }
        public string RCR_LOCAL { get; set; }
        public string Responsavel_EmpresaC { get; set; }
        public int Vinculado_Processo { get; set; }
        public string Processo_Vinculado { get; set; }
        public int sem_nfs { get; set; }
        public int TR_IMPRESSOES { get; set; }
        public int TR_IMPRESSOES_FECP { get; set; }
        public int AVISO_DESEMBARACO { get; set; }
        public int? FK_Processos_Tipo_Urgencia { get; set; }
        public string Coordenador_Resp { get; set; }
        public string Supervisor_Resp { get; set; }
        public int BASE_ICMS { get; set; }
        public int Aguardando_Medicao { get; set; }
        public DateTime Emissao_Faturamento { get; set; }
        public DateTime Vencimento_Faturamento { get; set; }
        public int Forma_Pag_Faturamento { get; set; }
        public float Valor_Faturamento { get; set; }
        public DateTime Emissao_Faturamento2 { get; set; }
        public DateTime Vencimento_Faturamento2 { get; set; }
        public int Forma_Pag_Faturamento2 { get; set; }
        public float Valor_Faturamento2 { get; set; }
        public DateTime Emissao_Faturamento3 { get; set; }
        public DateTime Vencimento_Faturamento3 { get; set; }
        public int Forma_Pag_Faturamento3 { get; set; }
        public float Valor_Faturamento3 { get; set; }
        public int TR_Indeferido { get; set; }
        public int Material_Usado { get; set; }
        public int Sem_Email { get; set; }

        //Navegabilidade
        public virtual Importador Importador { get; set; }
        public virtual Conhecimento Conhecimento { get; set; }
        //public virtual TipoDeclaracao TipoDeclaracao { get; set; }
        //public virtual TipoDeProcesso TipoDeProcesso { get; set; }            
        private Contrato contrato;
        public virtual Contrato Contrato
        {
            get { return contrato; }
            set { contrato = value; }
        }
        //public virtual LocalDeInventario LocalDeInventario { get; set; }
        //public virtual Canal Canal { get; set; }
        //public virtual Fiscal Fiscal { get; set; }
        //public virtual Status Status { get; set; }
        //public virtual Procurador Procurador { get; set; }
        private IList<Fatura> fatura;
        public virtual IList<Fatura> Fatura
        {
            get { return fatura; }
            set { fatura = value; }
        }

    }
}
