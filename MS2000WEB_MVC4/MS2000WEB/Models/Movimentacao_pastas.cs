using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Movimentacao_pastas
    {
        public int Movimento { get; set; }
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string De_usuario { get; set; }
        public string Para_usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
    }
}
