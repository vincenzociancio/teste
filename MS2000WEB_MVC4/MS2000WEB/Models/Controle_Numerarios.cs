using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Numerarios
    {
        public int Codigo { get; set; }
        public string Processo { get; set; }
        public string Cliente { get; set; }
        public System.DateTime Data_Solicitacao { get; set; }
        public double Total { get; set; }
        public string Solicitante { get; set; }
        public string Autorizador { get; set; }
        public Nullable<System.DateTime> Data_Recebimento { get; set; }
        public int Status { get; set; }
        public int Ativo { get; set; }
    }
}
