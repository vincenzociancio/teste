using System;

namespace MS2000WEB.ViewModels
{
    public class RatProrrogacaoViewModel
    {
        public int ID { get; set; }
        public string Fk_Processo { get; set; }
        public DateTime? Data_Criacao { get; set; }
        public DateTime? Data_AITEE { get; set; }
        public DateTime? Data_ADE { get; set; }
        public string Numero_AITEE { get; set; }
        public string Numero_RCR { get; set; }
        public string RCR_LOCAL { get; set; }
        public string Endereco { get; set; }
        public string Razao_Social { get; set; }
        public string Cnpj_Cpf_Completo { get; set; }
        public string Numero_Rat { get; set; }
        public string Inf_Adicionais { get; set; }
        public bool? Opcao_Tributario { get; set; }
        public bool Inst_Ped_Fatura { get; set; }
        public bool Inst_Ped_Contrato_arrendamento { get; set; }
        public bool Inst_Ped_Outros { get; set; }
        public bool Inst_Ped_Procuracao { get; set; }
        public bool Inst_Ped_Contrato { get; set; }
        public string Codigo_Cliente { get; set; }
        public string Descricao { get; set; }
        public string Inf_Complementares { get; set; }
        public string Fund_Pedido { get; set; }
    }
}