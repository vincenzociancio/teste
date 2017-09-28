using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Colaboradores
    {
        [Key]
        public int ID { get; set; }        
        public string FK_Colaborador { get; set; }                        
        public bool Realizado { get; set; }
        public DateTime? Data_de_Realizacao { get; set; }
        
        public int FK_Avaliacao { get; set; }
        [ForeignKey("FK_Avaliacao")]
        public virtual Avaliacao_Avaliacao Avaliacao { get; set; }


                
        //public virtual IList<Avaliacao_Perguntas> Perguntas { get; set; }

    }
}
