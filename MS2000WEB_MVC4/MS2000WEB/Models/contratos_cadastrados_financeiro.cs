using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class contratos_cadastrados_financeiro
    {
        public string numero_contrato { get; set; }
        public int pk_contrato { get; set; }
        public System.DateTime data { get; set; }
        public string nro_cliente { get; set; }
        public string cliente { get; set; }
        public string cod_importador { get; set; }
        public string contato { get; set; }
        public string email { get; set; }
        public Nullable<System.DateTime> data_aprovacao { get; set; }
        public Nullable<System.DateTime> data_vigencia_inicial { get; set; }
        public Nullable<System.DateTime> data_vigencia_final { get; set; }
        public string observacao { get; set; }
        public bool utilizacao_de_sistema { get; set; }
        public bool movimentacao_de_repetro { get; set; }
    }
}
