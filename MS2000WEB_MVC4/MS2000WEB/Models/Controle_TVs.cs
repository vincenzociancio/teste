using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_TVs
    {
        public Controle_TVs()
        {
            this.Controle_TVs_Importadores = new List<Controle_TVs_Importadores>();
        }

        public int PK_TV { get; set; }
        public string Descricao { get; set; }
        public string Computador { get; set; }
        public bool Exibir_Todos_Importadores { get; set; }
        public bool Inativo { get; set; }
        public Nullable<int> FK_Programa { get; set; }
        public virtual ICollection<Controle_TVs_Importadores> Controle_TVs_Importadores { get; set; }
    }
}
