using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.Model
{
    public class Avaliacao_Avaliacao
    {
        [Key]
        public int ID { get; set; }
        public DateTime Data_Criacao { get; set; }
        public string Descricao { get; set; }
        public int Quantidade_Pergunta { get; set; }
        public DateTime Data_de_Aplicacao { get; set; }
        public string Tipo { get; set; }

        public virtual IList<Avaliacao_Colaboradores> Colaboradores { get; set; }

    }
}
