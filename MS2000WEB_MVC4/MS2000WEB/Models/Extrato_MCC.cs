using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Extrato_MCC
    {
        public int QREG { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string contacorrente { get; set; }
        public Nullable<int> Codigo_mov { get; set; }
        public string Empresa { get; set; }
        public string Tipo { get; set; }
        public string Doc { get; set; }
        public string Historico { get; set; }
        public Nullable<double> Valor { get; set; }
        public Nullable<System.DateTime> D_Data { get; set; }
        public Nullable<int> D_REG { get; set; }
        public string D_Processo { get; set; }
        public string D_Historico { get; set; }
        public string D_Detalhe { get; set; }
        public Nullable<double> D_Valor { get; set; }
    }
}
