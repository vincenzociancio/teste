using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RepetroLogUsuario
    {
        public int Id_Vigia { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Tela { get; set; }
        public string Procedimento { get; set; }
        public string DI { get; set; }
        public string Adicao { get; set; }
        public string Seq_AdicaoStr { get; set; }
        public string Movimento_ini { get; set; }
        public string Movimento_fim { get; set; }
        public string Origem { get; set; }
        public string Destino { get; set; }
        public string RTC_REG { get; set; }
        public string RTC_ITEM_REG { get; set; }
        public Nullable<double> Saldo_Rep_Antigo { get; set; }
        public Nullable<double> Saldo_Rep_Novo { get; set; }
        public string PIN { get; set; }
    }
}
