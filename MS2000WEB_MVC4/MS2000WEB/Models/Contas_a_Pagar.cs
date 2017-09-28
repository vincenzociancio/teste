using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contas_a_Pagar
    {
        public int Codigo { get; set; }
        public string Codigo_Empresa { get; set; }
        public Nullable<System.DateTime> Vencimento { get; set; }
        public Nullable<int> Fk_Fornecedor { get; set; }
        public string Tp_Numerario { get; set; }
        public string Descricao { get; set; }
        public Nullable<double> Valor { get; set; }
        public string Nf { get; set; }
        public string Status { get; set; }
        public Nullable<double> Valor_Previsao { get; set; }
        public Nullable<System.DateTime> Vencimento_Previsao { get; set; }
        public Nullable<System.DateTime> Data_Pagamento { get; set; }
        public string Solicitante { get; set; }
        public string Parcela { get; set; }
        public Nullable<int> Efetuar_Pagamento { get; set; }
        public string Usuario { get; set; }
        public Nullable<int> Fk_Contas_a_Pagar_Pagamentos { get; set; }
        public string Banco { get; set; }
        public string Cheque { get; set; }
    }
}
