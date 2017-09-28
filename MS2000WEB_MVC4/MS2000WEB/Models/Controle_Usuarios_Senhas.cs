using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Usuarios_Senhas
    {
        public string Usuario { get; set; }
        public string Senha_MS2000 { get; set; }
        public string Senha_Rede { get; set; }
        public string Senha_Internet { get; set; }
        public string Senha_Email { get; set; }
        public string Senha_Acesso { get; set; }
    }
}
