using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Faturamento_Notas_Credito
    {
        public int Pk { get; set; }
        public string Nota { get; set; }
        public string Processo { get; set; }
        public string Cliente { get; set; }
        public System.DateTime Data { get; set; }
        public string Vencimento { get; set; }
        public string Descricao { get; set; }
        public double Valor { get; set; }
        public string Valor_Extenso { get; set; }
    }
}
