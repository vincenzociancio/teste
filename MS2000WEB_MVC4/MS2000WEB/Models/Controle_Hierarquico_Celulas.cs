using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Hierarquico_Celulas
    {
        public int PK_Celula { get; set; }
        public string Descricao { get; set; }
        public string FK_Supervisor { get; set; }
        public string FK_Coordenador { get; set; }
        public string FK_Colaborador_Independente { get; set; }
        public bool Tipo { get; set; }
        public bool Excluido { get; set; }
        public string FK_Gerente { get; set; }
    }
}
