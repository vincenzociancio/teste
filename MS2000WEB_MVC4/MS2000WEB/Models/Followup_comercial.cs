using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Followup_comercial
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public int Sequencial { get; set; }
        public string Descricao { get; set; }
        public string Descricao_ing { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public string Usuario { get; set; }
    }
}
