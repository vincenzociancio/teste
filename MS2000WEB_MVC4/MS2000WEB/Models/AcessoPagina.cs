using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoPagina
    {
        public AcessoPagina()
        {
            this.AcessoPaginaGrupoes = new List<AcessoPaginaGrupo>();
        }

        public int PK_AcessoPaginas { get; set; }
        public string Titulo { get; set; }
        public string Pagina { get; set; }
        public bool Ativa { get; set; }
        public string Controller { get; set; }
        public virtual ICollection<AcessoPaginaGrupo> AcessoPaginaGrupoes { get; set; }
    }
}
