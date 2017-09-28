using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class RatViewModel
    {
        public int ID { get; set; }
        public string Fk_Importador { get; set; }
        public string Fk_Processo { get; set; }
        public DateTime? Data_Inicial { get; set; }
        public DateTime? Prazo_Requerido { get; set; }
        public DateTime? Data_Criacao { get; set; }
        //public DateTime Data { get; set; }
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
        public DateTime? Data_Entrada { get; set; }
        public DateTime? Data_Aprovacao { get; set; }
        public DateTime? Vigencia_inicial { get; set; }
        public DateTime? Vigencia_final { get; set; }
        public DateTime? Data_prorrogacao { get; set; }
    }
}