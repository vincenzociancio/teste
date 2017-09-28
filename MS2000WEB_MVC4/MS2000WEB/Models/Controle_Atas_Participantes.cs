using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Atas_Participantes
    {
        public int pk_atas_participante { get; set; }
        public string fk_usuario { get; set; }
        public int fk_ata { get; set; }
        public Nullable<System.DateTime> data_aceite { get; set; }
        public int lixo { get; set; }
        public virtual Controle_Atas Controle_Atas { get; set; }
    }
}
