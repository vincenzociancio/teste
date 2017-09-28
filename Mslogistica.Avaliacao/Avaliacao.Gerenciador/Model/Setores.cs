using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Setores
    {
        [Key]
        public string Codigo { get; set; }
        public string  Descricao { get; set; }
        public bool Excluido { get; set; }
    }
}
