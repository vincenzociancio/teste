using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class UsuariosNET
    {
        public string CGC_CPF { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string Nome_Completo { get; set; }
        public string Email { get; set; }
        public string Nivel { get; set; }
        public Nullable<int> Acesso_habilitado { get; set; }
        public Nullable<int> PK_USUARIO { get; set; }
    }
}
