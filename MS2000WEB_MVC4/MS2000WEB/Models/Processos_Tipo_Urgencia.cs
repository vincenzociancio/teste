using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Tipo_Urgencia
    {
        public int PK_Tipo_Urgencia { get; set; }
        public string Sigla { get; set; }
        public string Descricao { get; set; }
        public bool Excluido { get; set; }
    }
}
