using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Associacao_Numerario_Documento
    {
        public int Codigo { get; set; }
        public string Cod_Tp_Numerarios { get; set; }
        public string Cod_Tp_Documentos { get; set; }
        public string Cod_Sub_Tp_Documentos { get; set; }
        public string Usuario { get; set; }
    }
}
