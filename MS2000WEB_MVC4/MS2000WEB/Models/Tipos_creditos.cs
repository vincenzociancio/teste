using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_creditos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Plano_contas { get; set; }
        public int Sequencia { get; set; }
    }
}
