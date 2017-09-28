using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoPaginaGrupo
    {
        public int PK_PaginaGrupo { get; set; }
        public int FK_AcessoPaginas { get; set; }
        public int FK_AcessoGrupo { get; set; }
        public bool C { get; set; }
        public bool R { get; set; }
        public bool U { get; set; }
        public bool D { get; set; }
        public bool Acessa { get; set; }
        public virtual AcessoGrupos AcessoGrupos { get; set; }
        public virtual AcessoPagina AcessoPagina { get; set; }
    }
}
