using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Documentos
    {
        public int pk_codigo { get; set; }
        public Nullable<int> fk_preprocesso { get; set; }
        public string fk_tipodocumento { get; set; }
        public string fk_subtipodocumento { get; set; }
        public string numero_doc { get; set; }
        public string pagina { get; set; }
        public string codigo { get; set; }
        public string arquivo { get; set; }
        public Nullable<int> ftp { get; set; }
        public Nullable<System.DateTime> data_inclusao { get; set; }
        public Nullable<System.DateTime> data_envio { get; set; }
        public string tipo_arquivo { get; set; }
        public string descricao_arquivo { get; set; }
        public string observacao { get; set; }
        public string usuario { get; set; }
        public string caminho { get; set; }
        public virtual Pre_Processos Pre_Processos { get; set; }
        public virtual Tipo_Documentos Tipo_Documentos { get; set; }
    }
}
