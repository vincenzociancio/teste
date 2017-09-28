using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_de_Processos_c_resp
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
        public Nullable<int> Ativo { get; set; }
        public string Responsavel_EmpresaC { get; set; }
        public string Responsavel_EmpresaO { get; set; }
        public string Responsavel_EmpresaF { get; set; }
    }
}
