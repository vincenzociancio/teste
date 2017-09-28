using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Processos_Embarcacao
    {
        public int PK_REG { get; set; }
        public string Codigo_Assunto { get; set; }
        public Nullable<int> FK_Embarcacao { get; set; }
        public Nullable<int> FK_Contribuinte { get; set; }
        public Nullable<System.DateTime> Data_Entrada { get; set; }
        public Nullable<System.DateTime> Data_Despacho { get; set; }
        public string Processo { get; set; }
        public string TR { get; set; }
        public Nullable<System.DateTime> Data_Vencimento { get; set; }
        public Nullable<int> FK_Grupo { get; set; }
        public string Volumes { get; set; }
        public string Caixa { get; set; }
        public string Observacao { get; set; }
        public Nullable<int> Status_Emprestimo { get; set; }
    }
}
