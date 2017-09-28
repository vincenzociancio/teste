using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Documentos_Relatorios_parametrizacao
    {
        public int DocID { get; set; }
        public string Titulo { get; set; }
        public string ImportadorCgcCpf { get; set; }
        public Nullable<int> Vencimento { get; set; }
        public string Email { get; set; }
    }
}
