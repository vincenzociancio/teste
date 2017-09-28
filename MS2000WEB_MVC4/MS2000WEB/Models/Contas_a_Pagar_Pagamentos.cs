using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contas_a_Pagar_Pagamentos
    {
        public int Codigo { get; set; }
        public string Codigo_Empresa { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public Nullable<System.DateTime> Data_Emissao { get; set; }
        public Nullable<System.DateTime> Data_Pagamento { get; set; }
        public Nullable<int> Qtd_Contas { get; set; }
        public string Descricao { get; set; }
        public string Status { get; set; }
        public string Banco { get; set; }
        public string Cheque { get; set; }
        public Nullable<int> Contabilizada { get; set; }
        public Nullable<int> Contabilizada_Automaticamente { get; set; }
        public Nullable<int> Codigo_Movimentacao { get; set; }
    }
}
