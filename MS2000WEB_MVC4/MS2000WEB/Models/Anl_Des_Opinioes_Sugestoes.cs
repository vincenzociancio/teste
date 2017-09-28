using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Opinioes_Sugestoes
    {
        public int Fk_Analise { get; set; }
        public int Codigo { get; set; }
        public string Colaborador { get; set; }
        public string Colaborador_Impacto_Profissional { get; set; }
        public string Supervisor_Treinamentos_Sugeridos { get; set; }
        public string Gestor_Treinamentos_Sugeridos { get; set; }
    }
}
