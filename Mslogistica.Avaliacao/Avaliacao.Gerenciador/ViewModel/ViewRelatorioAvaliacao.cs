using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.ViewModel
{
    public class ViewRelatorioAvaliacao
    {
        public string Descricao_Avaliacao  { get; set; }
        public DateTime Data_de_Aplicacao { get; set; }
        public int Quantidade_Pergunta { get; set; }
        public string Participante { get; set; }
        public DateTime? Data_de_Realizacao { get; set; }
        public bool Realizado { get; set; }
        public int? Acertos { get; set; }      
      
    }
}
