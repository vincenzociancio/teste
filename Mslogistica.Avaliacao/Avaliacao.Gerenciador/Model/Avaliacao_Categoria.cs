using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Categoria
    {
        [Key]
        public int ID { get; set; }
        public string Descricao { get; set; }

        //public virtual IList<Avaliacao_Perguntas> Perguntas { get; set; }
    }
}
