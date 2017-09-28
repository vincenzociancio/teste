using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Timeline_temp
    {
        public string Processo { get; set; }
        public Nullable<System.DateTime> Data_Chegada_Carga { get; set; }
        public Nullable<System.DateTime> Data_Liberacao_Doc { get; set; }
        public Nullable<System.DateTime> Data_Solicitacao_Numerario { get; set; }
        public Nullable<System.DateTime> Data_Numerario_Recebido { get; set; }
        public Nullable<System.DateTime> Data_Registro_DI { get; set; }
        public Nullable<System.DateTime> Data_TR_Enviado { get; set; }
        public Nullable<System.DateTime> Data_TR_Recebido { get; set; }
        public Nullable<System.DateTime> Data_ICMS_Entrada { get; set; }
        public Nullable<System.DateTime> Data_ICMS_Exonercao { get; set; }
        public Nullable<System.DateTime> DT_DESEMBARACO { get; set; }
        public string Tipo_Declaracao { get; set; }
    }
}
