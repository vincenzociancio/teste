using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class UsuariosMenu
    {
        public string Usuario { get; set; }
        public string Menu { get; set; }
        public Nullable<int> ACESSA { get; set; }
        public bool Editar { get; set; }
        public bool Excluir { get; set; }
        public bool Incluir { get; set; }
    }
}
