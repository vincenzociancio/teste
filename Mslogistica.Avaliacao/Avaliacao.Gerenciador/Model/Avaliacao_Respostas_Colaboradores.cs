using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Respostas_Colaboradores
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public int FK_Pergunta { get; set; }
        /*[Required]
        public int FK_Avaliacao { get; set; }*/
        [Required]
        public string FK_Colaborador { get; set; }
        public int FK_Resposta { get; set; }

        public bool Correta { get; set; }

        public int FK_Avaliacao { get; set; }
        [ForeignKey("FK_Avaliacao")]
        public virtual Avaliacao_Avaliacao Avaliacao { get; set; }

    }
}
