using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Emails_Anexos
    {
        public int PK_Anexos { get; set; }
        public int FK_Email { get; set; }
        public string Descricao { get; set; }
        public string Caminho { get; set; }
        public Nullable<int> Tamanho { get; set; }
        public Nullable<int> Tipo_Anexo { get; set; }
        public string CID { get; set; }
    }
}
