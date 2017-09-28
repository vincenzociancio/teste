using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Documentos_Relatorios_Parametrizacao_Tipo
    {
        public int ID { get; set; }
        public Nullable<int> DocID { get; set; }
        public string Tipo_Doc { get; set; }
        public string Sub_Tipo_Doc { get; set; }
    }
}
