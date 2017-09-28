using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class TAB_TIPO_DECLARACAO
    {
        public TAB_TIPO_DECLARACAO()
        {
            this.Pre_Processos = new List<Pre_Processos>();
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string SIGLA { get; set; }
        public virtual ICollection<Pre_Processos> Pre_Processos { get; set; }
    }
}
