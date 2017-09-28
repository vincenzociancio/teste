using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Solicitacao_Cheques_Itens
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public int Sequencial { get; set; }
        public string Processo { get; set; }
        public Nullable<int> REG_numerario { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> Valor { get; set; }
        public string Numerario { get; set; }
    }
}
