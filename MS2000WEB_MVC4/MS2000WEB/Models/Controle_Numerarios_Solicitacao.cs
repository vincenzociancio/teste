using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Numerarios_Solicitacao
    {
        public int PK_Solicitacao { get; set; }
        public string FK_MsNumero { get; set; }
        public System.DateTime Data_Solicitacao { get; set; }
        public System.TimeSpan Hora_Solicitacao { get; set; }
        public string Solicitante { get; set; }
        public string Autorizador_Atual { get; set; }
        public string Tipo { get; set; }
        public int Status_Atual { get; set; }
        public string Cancelado_Por { get; set; }
        public string OBS_Cancelamento { get; set; }
        public string OBS_NaoAutorizado { get; set; }
        public string OBS_Solicitacao { get; set; }
        public int Flag { get; set; }
    }
}
