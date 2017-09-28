using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_ADE_Andamento
    {
        public int PK_ADEA { get; set; }
        public string FK_Importador { get; set; }
        public string FK_Processo { get; set; }
        public string Num_Processo_Receita { get; set; }
        public int FK_Fiscais { get; set; }
        public int FK_Status { get; set; }
        public Nullable<bool> Excluido { get; set; }
        public string Embarcacao { get; set; }
        public Nullable<int> FK_Tipo { get; set; }
        public Nullable<System.DateTime> DT_COANA { get; set; }
        public Nullable<System.DateTime> DT_DITEC { get; set; }
        public Nullable<System.DateTime> DT_DIANA { get; set; }
        public Nullable<System.DateTime> DT_Abertura_Processo { get; set; }
        public Nullable<System.DateTime> DT_ADE_Plublicacao { get; set; }
        public Nullable<int> ADE_Num { get; set; }
        public Nullable<bool> Finalizado { get; set; }
    }
}
