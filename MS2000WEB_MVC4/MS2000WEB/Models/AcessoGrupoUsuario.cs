using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoGrupoUsuario
    {
        public int PK_GrupoUsuario { get; set; }
        public string FK_Usuario { get; set; }
        public int FK_AcessoGrupo { get; set; }
        public virtual AcessoGrupos AcessoGrupos { get; set; }
    }
}
