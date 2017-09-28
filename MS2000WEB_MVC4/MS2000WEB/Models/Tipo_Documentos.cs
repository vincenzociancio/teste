using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tipo_Documentos
    {
        public Tipo_Documentos()
        {
            this.Pre_Documentos = new List<Pre_Documentos>();
        }

        public string codigo { get; set; }
        public string descricao { get; set; }
        public Nullable<int> Tem_Vencimento { get; set; }
        public Nullable<int> Mostra_usuario_net { get; set; }
        public virtual ICollection<Pre_Documentos> Pre_Documentos { get; set; }
    }
}
