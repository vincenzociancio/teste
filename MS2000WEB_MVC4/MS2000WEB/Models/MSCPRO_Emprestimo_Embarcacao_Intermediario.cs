using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Emprestimo_Embarcacao_Intermediario
    {
        public int PK_REG { get; set; }
        public Nullable<int> FK_Processo { get; set; }
        public Nullable<int> FK_Solicitante { get; set; }
        public Nullable<System.DateTime> Data_Emprestimo { get; set; }
        public Nullable<System.DateTime> Data_Prevista_Devolucao { get; set; }
        public string Observacao { get; set; }
        public Nullable<System.DateTime> Data_Devolucao { get; set; }
    }
}
