using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Atas
    {
        public Controle_Atas()
        {
            this.Controle_Atas_Arquivos = new List<Controle_Atas_Arquivos>();
            this.Controle_Atas_Participantes = new List<Controle_Atas_Participantes>();
        }

        public int pk_atas { get; set; }
        public string tema { get; set; }
        public System.DateTime data { get; set; }
        public string fk_importador { get; set; }
        public string fk_usuario { get; set; }
        public int tipo { get; set; }
        public int lixo { get; set; }
        public virtual ICollection<Controle_Atas_Arquivos> Controle_Atas_Arquivos { get; set; }
        public virtual ICollection<Controle_Atas_Participantes> Controle_Atas_Participantes { get; set; }
    }
}
