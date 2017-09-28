using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Sub_Tipo_Documentos_Ing
    {
        public string Tipo_doc { get; set; }
        public string codigo { get; set; }
        public string Descricao { get; set; }
        public string Orgao { get; set; }
        public Nullable<int> Mostra_usuario_net { get; set; }
    }
}
