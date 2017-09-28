using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Respostas
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public string Descricao { get; set; }
        public int FK_Pergunta { get; set; }
        public bool Correta { get; set; }

        [ForeignKey("FK_Pergunta")]
        public virtual Avaliacao_Perguntas Pergunta { get; set; }
    }
}
