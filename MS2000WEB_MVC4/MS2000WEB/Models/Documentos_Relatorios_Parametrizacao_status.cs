using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Documentos_Relatorios_Parametrizacao_status
    {
        public int ID { get; set; }
        public Nullable<int> DocID { get; set; }
        public Nullable<int> Status { get; set; }
    }
}
