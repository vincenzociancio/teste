using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RAT_Prorrogacao
    {
        public int ID { get; set; }
        public string Fk_Processo { get; set; }
        public string Numero_RAT { get; set; }
        public Nullable<System.DateTime> Data_Criacao { get; set; }
        public string Fund_Pedido { get; set; }
        public Nullable<bool> Opcao_Tributario { get; set; }
        public Nullable<bool> Inst_Ped_Contrato { get; set; }
        public Nullable<bool> Inst_Ped_Procuracao { get; set; }
        public Nullable<bool> Inst_Ped_Outros { get; set; }
        public Nullable<bool> Inst_Ped_Contrato_arrendamento { get; set; }
        public Nullable<bool> Inst_Ped_Fatura { get; set; }
        public string Inf_Complementares { get; set; }
        public string Numero_AITEE { get; set; }
        public Nullable<System.DateTime> Data_AITEE { get; set; }
        public Nullable<System.DateTime> Data_ADE { get; set; }
    }
}
