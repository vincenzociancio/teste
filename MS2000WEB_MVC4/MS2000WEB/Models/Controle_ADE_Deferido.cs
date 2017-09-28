using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_ADE_Deferido
    {
        public int PK_ADED { get; set; }
        public string FK_Importador { get; set; }
        public string Embarcacao { get; set; }
        public System.DateTime DT_VECTO_ADE { get; set; }
        public bool Excluido { get; set; }
        public Nullable<System.DateTime> DT_Publicacao { get; set; }
        public string Num_ADE_Executivo { get; set; }
        public string Path_PDF { get; set; }
        public Nullable<bool> Finalizado { get; set; }
        public bool Vencido { get; set; }
        public string Num_Contrato { get; set; }
        public string Num_Processo { get; set; }
    }
}
