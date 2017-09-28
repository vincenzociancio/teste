using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Transmittal
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Importador { get; set; }
        public string Importador_nome { get; set; }
        public Nullable<int> Destinatario { get; set; }
        public string Destinacao { get; set; }
        public string Setor { get; set; }
        public string Remetente { get; set; }
        public string Destinatarioold { get; set; }
        public Nullable<System.DateTime> Data_Recebimento { get; set; }
        public string Receptor { get; set; }
        public string processo { get; set; }
    }
}
