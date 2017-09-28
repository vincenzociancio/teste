using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Documentos_23092009
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Processo { get; set; }
        public string Tipo_Doc { get; set; }
        public string Sub_Tipo_Doc { get; set; }
        public string Numero_Doc { get; set; }
        public string Pagina { get; set; }
        public string Codigo { get; set; }
        public string Arquivo { get; set; }
        public Nullable<int> ftp { get; set; }
        public Nullable<System.DateTime> Vigencia_inicial { get; set; }
        public Nullable<System.DateTime> Vigencia_final { get; set; }
        public string Observacoes { get; set; }
        public string Contrato { get; set; }
        public string Local { get; set; }
        public Nullable<System.DateTime> Data_inclusao { get; set; }
        public Nullable<System.DateTime> Data_baixa { get; set; }
        public Nullable<System.DateTime> Data_renovacao { get; set; }
        public string Status { get; set; }
        public Nullable<System.DateTime> Data_envio { get; set; }
        public string usuario_dig { get; set; }
    }
}
