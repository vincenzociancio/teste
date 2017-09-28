using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Perguntas
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public string Descricao { get; set; }
        public string FK_Setor { get; set; }

        //[ForeignKey("FK_Setor")]
        //public virtual Setores Setor { get; set; }

        public virtual IList<Avaliacao_Respostas> Respostas{ get; set; }


        public int? FK_Categoria { get; set; }

        //[ForeignKey("FK_Categoria")]
        //public virtual Avaliacao_Categoria Categoria { get; set; }

    }
}
