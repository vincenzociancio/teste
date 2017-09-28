using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Avaliacao.Gerenciador.ViewModel
{
    public class ViewChartPorAvaliacao
    {
        public string Descricao { get; set; }
        public int Total { get; set; }
        public int Tipo { get; set; }
        public DateTime Data_de_Aplicacao { get; set; }
    }
}
