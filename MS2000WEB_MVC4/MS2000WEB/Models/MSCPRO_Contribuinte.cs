using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCPRO_Contribuinte
    {
        public int PK_REG { get; set; }
        public Nullable<int> Tipo_Contribuinte { get; set; }
        public string Nome_Razao_Social { get; set; }
        public string Remissiva { get; set; }
        public string Dados_Remissiva { get; set; }
        public string CPF_CNPJ { get; set; }
    }
}
