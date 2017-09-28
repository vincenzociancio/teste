using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RCRtemp
    {
        public string Processo { get; set; }
        public string NCM { get; set; }
        public string Descricao_Produto { get; set; }
        public string Fatura { get; set; }
        public string Pagina { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Valor { get; set; }
        public Nullable<int> sequencial { get; set; }
        public string Unidade { get; set; }
    }
}
