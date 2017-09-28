using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Usuarios
    {
        [Key]
        public string Usuario { get; set; }
        public string Nome_Completo { get; set; }
        public string Senha { get; set; }
        public string Setor { get; set; }
        public bool Ativo { get; set; }
        public string Email { get; set; }

    }
}
