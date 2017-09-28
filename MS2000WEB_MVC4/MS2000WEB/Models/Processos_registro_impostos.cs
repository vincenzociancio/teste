using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_registro_impostos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string Conta_Corrente { get; set; }
        public Nullable<double> II { get; set; }
        public Nullable<double> IPI { get; set; }
        public Nullable<double> Taxa_SISCOMEX { get; set; }
        public string Bancoc { get; set; }
        public string Agenciac { get; set; }
        public string Conta_Correntec { get; set; }
        public Nullable<double> IIc { get; set; }
        public Nullable<double> IPIc { get; set; }
        public Nullable<double> Taxa_SISCOMEXc { get; set; }
        public Nullable<int> Enviou_adcc { get; set; }
        public Nullable<int> Enviou_adcc_c { get; set; }
        public Nullable<int> Enviou_adr { get; set; }
        public Nullable<int> Enviou_adr_c { get; set; }
    }
}
