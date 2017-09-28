using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Avaliacao_Avaliacao
    {
        public Avaliacao_Avaliacao()
        {
            this.Avaliacao_Colaboradores = new List<Avaliacao_Colaboradores>();
            this.Avaliacao_Respostas_Colaboradores = new List<Avaliacao_Respostas_Colaboradores>();
        }

        public int ID { get; set; }
        public System.DateTime Data_Criacao { get; set; }
        public string Descricao { get; set; }
        public int Quantidade_Pergunta { get; set; }
        public System.DateTime Data_de_Aplicacao { get; set; }
        public string Tipo { get; set; }
        public virtual ICollection<Avaliacao_Colaboradores> Avaliacao_Colaboradores { get; set; }
        public virtual ICollection<Avaliacao_Respostas_Colaboradores> Avaliacao_Respostas_Colaboradores { get; set; }
    }
}
