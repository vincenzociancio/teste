using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipos_Numerario_Ing
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Plano_contas { get; set; }
        public string Rateio { get; set; }
        public Nullable<int> ContabilizaCC { get; set; }
    }
}