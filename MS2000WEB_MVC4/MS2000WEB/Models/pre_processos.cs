using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Pre_Processos
    {
        public Pre_Processos()
        {
            this.Pre_Documentos = new List<Pre_Documentos>();
            this.Pre_Followup = new List<Pre_Followup>();
            this.Pre_Relacao_Processos = new List<Pre_Relacao_Processos>();
        }

        public int pk_codigo { get; set; }
        public string codigo { get; set; }
        public Nullable<System.DateTime> data { get; set; }
        public string invoice { get; set; }
        public string packing_list { get; set; }
        public string pedido_compra { get; set; }
        public string fk_importador { get; set; }
        public Nullable<double> valor { get; set; }
        public string fk_tipomoeda { get; set; }
        public string fk_tipoprocesso { get; set; }
        public string fk_tipodeclaracao { get; set; }
        public string ref_cliente { get; set; }
        public string dta { get; set; }
        public string descricao { get; set; }
        public string status { get; set; }
        public int status_classificacao { get; set; }
        public string usuario { get; set; }
        public virtual ICollection<Pre_Documentos> Pre_Documentos { get; set; }
        public virtual ICollection<Pre_Followup> Pre_Followup { get; set; }
        public virtual ICollection<Pre_Relacao_Processos> Pre_Relacao_Processos { get; set; }
        public virtual TAB_TIPO_DECLARACAO TAB_TIPO_DECLARACAO { get; set; }
        public virtual Tipos_de_Processos Tipos_de_Processos { get; set; }
    }
}
