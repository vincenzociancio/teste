using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Evento
    {
        public Evento()
        {
            this.Pre_Followup = new List<Pre_Followup>();
        }

        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Grupo { get; set; }
        public Nullable<int> QTD_HorasLimite { get; set; }
        public string Codigo_Fecha { get; set; }
        public Nullable<int> Ativo { get; set; }
        public Nullable<bool> scanner { get; set; }
        public virtual ICollection<Pre_Followup> Pre_Followup { get; set; }
    }
}
