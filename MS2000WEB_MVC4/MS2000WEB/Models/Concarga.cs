using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Concarga
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Codigo { get; set; }
        public string Tipo_Carga { get; set; }
        public string Descricao_tipo { get; set; }
        public string Lacre { get; set; }
    }
}
