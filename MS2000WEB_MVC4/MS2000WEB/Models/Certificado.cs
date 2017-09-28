using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Certificado
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Contrato { get; set; }
        public string Local { get; set; }
        public int reg { get; set; }
        public string Tipo { get; set; }
        public Nullable<System.DateTime> Vigencia_inicial { get; set; }
        public Nullable<System.DateTime> Vigencia_final { get; set; }
        public string Observacoes { get; set; }
    }
}
