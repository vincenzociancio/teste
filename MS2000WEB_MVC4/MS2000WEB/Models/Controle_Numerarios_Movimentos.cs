using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Numerarios_Movimentos
    {
        public int PK_Movimento { get; set; }
        public int FK_Solicitacao { get; set; }
        public System.DateTime Data_Movimento { get; set; }
        public System.TimeSpan Hora_Movimento { get; set; }
        public string Autorizador { get; set; }
        public int Status { get; set; }
        public string Cancelado_Por { get; set; }
        public Nullable<System.DateTime> Validade { get; set; }
        public string Enviado_Por { get; set; }
    }
}
