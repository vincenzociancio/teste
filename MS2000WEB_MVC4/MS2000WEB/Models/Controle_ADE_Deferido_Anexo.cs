using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_ADE_Deferido_Anexo
    {
        public int PK_Anexo { get; set; }
        public string Descricao { get; set; }
        public string Caminho { get; set; }
        public Nullable<int> FK_ADED { get; set; }
        public bool Excluido { get; set; }
    }
}
