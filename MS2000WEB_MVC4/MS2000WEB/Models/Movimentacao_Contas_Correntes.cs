using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Movimentacao_Contas_Correntes
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public Nullable<int> Codigo { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<int> Tipo { get; set; }
        public string Doc { get; set; }
        public string Historico { get; set; }
        public Nullable<double> Valor { get; set; }
        public string Cliente { get; set; }
        public int Codigo_Mov { get; set; }
        public string Plano_Contas { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data_apuracao_cpmf_inicial { get; set; }
        public Nullable<System.DateTime> Data_apuracao_cpmf_final { get; set; }
        public Nullable<int> Desmembra { get; set; }
        public Nullable<int> Digitaliza { get; set; }
        public string Codigo_SOLREG { get; set; }
        public string Codigo_SOLCHEQUE { get; set; }
        public string Codigo_ContasAPagar { get; set; }
    }
}
