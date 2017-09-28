using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Solicitacao_Cheques
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Data_solicitacao { get; set; }
        public string Setor { get; set; }
        public string Remetente { get; set; }
        public Nullable<double> Valor { get; set; }
        public string Nominal { get; set; }
        public string Observacoes { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<System.DateTime> Data_emissao { get; set; }
        public Nullable<int> CodigoCC { get; set; }
        public string Cheque { get; set; }
        public string Emissor { get; set; }
        public Nullable<int> Contabilizacao_Automatica { get; set; }
    }
}
