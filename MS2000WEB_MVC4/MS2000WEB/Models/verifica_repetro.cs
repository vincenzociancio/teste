using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class verifica_repetro
    {
        public string situacao { get; set; }
        public string Codigo { get; set; }
        public string cond_fiscal { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public Nullable<int> Repetro { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> DT_DESEMBARACO { get; set; }
        public string NR_DECLARACAO_IMP { get; set; }
        public string INs { get; set; }
        public string tipo { get; set; }
        public string tipo_declaracao { get; set; }
    }
}
