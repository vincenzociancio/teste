using System;
using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.Models
{
   
    [MetadataType(typeof(RATMetadata))]
    public partial class RAT
    {

    }

    public class RATMetadata
    {
        public int ID { get; set; }
        public string Fk_Importador { get; set; }
        public string Fk_Processo { get; set; }
        public string Fund_Pedido { get; set; }
        public Nullable<System.DateTime> Data_Criacao { get; set; }
        public Nullable<System.DateTime> Prazo_Requerido { get; set; }
        public Nullable<bool> Opcao_Tributario { get; set; }
        public bool? Inst_Ped_Contrato { get; set; }
        public Nullable<bool> Inst_Ped_Procuracao { get; set; }
        public Nullable<bool> Inst_Ped_Outros { get; set; }
        public bool? Inst_Ped_Contrato_arrendamento { get; set; }
        public Nullable<bool> Inst_Ped_Fatura { get; set; }
        public string Cod_Fatura { get; set; }
        public string Inf_Adicionais { get; set; }
        public string Inf_Complementares { get; set; }
        public Nullable<System.DateTime> Data_Inicial { get; set; }       
        //[MaxLength(18, ErrorMessage= "Entre com formato: xxxxx.xxxxxx/xx-xx")]
        public string Numero_Rat { get; set; }
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> Data_Entrada { get; set; }
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> Data_Aprovacao { get; set; }
    }
}