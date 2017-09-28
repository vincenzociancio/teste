using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class NF_Web_Numerador
    {
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Tipo { get; set; }
        public string Numero { get; set; }
        public Nullable<short> Detalhes { get; set; }
        public Nullable<short> tamanho { get; set; }
        public Nullable<double> AliquotaICMS { get; set; }
    }
}
