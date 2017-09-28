using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class PG_PERC_VINC
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public string Forma_de_Pagamento { get; set; }
        public Nullable<int> Moeda_Nacional { get; set; }
        public string Banco { get; set; }
        public string Praca { get; set; }
        public string Contrato { get; set; }
        public Nullable<double> Valor_Percentual { get; set; }
        public string CNPJ_Comprador { get; set; }
        public string Tipo_CNPJ { get; set; }
        public Nullable<double> Valor { get; set; }
    }
}
