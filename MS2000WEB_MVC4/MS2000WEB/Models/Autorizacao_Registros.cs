using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Autorizacao_Registros
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public Nullable<System.DateTime> Data_requisicao { get; set; }
        public Nullable<System.DateTime> Data_autorizacao { get; set; }
        public Nullable<int> Status { get; set; }
        public string Solicitante { get; set; }
        public string autorizador { get; set; }
        public string Valor_CIF { get; set; }
        public string II { get; set; }
        public string IPI { get; set; }
        public string tx_siscomex { get; set; }
        public string pis_pasep { get; set; }
        public string COFINS { get; set; }
        public string valor_total { get; set; }
        public string base_calculo { get; set; }
        public string ICMS { get; set; }
        public string ICMS_1 { get; set; }
        public string Cliente { get; set; }
        public string Embarcacao { get; set; }
        public string REF_MS { get; set; }
        public string Banco { get; set; }
        public string Agencia { get; set; }
        public string C_C { get; set; }
        public string declaracao { get; set; }
        public string declaracao_c { get; set; }
        public Nullable<int> Contabilizado_cliente { get; set; }
        public Nullable<int> Contabilizado_cliente_icms { get; set; }
    }
}
