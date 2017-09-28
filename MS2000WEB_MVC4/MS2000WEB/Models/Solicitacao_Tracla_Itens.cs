using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Solicitacao_Tracla_Itens
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public int Sequencial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
    }
}
