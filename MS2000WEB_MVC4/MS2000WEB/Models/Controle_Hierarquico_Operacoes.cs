using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Hierarquico_Operacoes
    {
        public int PK_Operacao { get; set; }
        public string Formulario { get; set; }
        public string Operacao { get; set; }
        public Nullable<int> PK_Registro { get; set; }
        public string Usuario { get; set; }
        public System.DateTime DataHora { get; set; }
    }
}
