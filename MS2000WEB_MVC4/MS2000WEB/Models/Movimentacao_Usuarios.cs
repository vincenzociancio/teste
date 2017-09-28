using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Movimentacao_Usuarios
    {
        public int reg { get; set; }
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Usuario { get; set; }
        public string Movimentacao { get; set; }
        public string Descricao { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
    }
}
