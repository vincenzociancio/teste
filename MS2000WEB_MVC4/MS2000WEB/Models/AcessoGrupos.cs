using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoGrupos
    {
        public AcessoGrupos()
        {
            this.AcessoAcaoEspecificaGrupoes = new List<AcessoAcaoEspecificaGrupo>();
            this.AcessoGrupoUsuarios = new List<AcessoGrupoUsuario>();
            this.AcessoPaginaGrupoes = new List<AcessoPaginaGrupo>();
        }

        public int PK_AcessoGrupo { get; set; }
        public string Descricao { get; set; }
        public virtual ICollection<AcessoAcaoEspecificaGrupo> AcessoAcaoEspecificaGrupoes { get; set; }
        public virtual ICollection<AcessoGrupoUsuario> AcessoGrupoUsuarios { get; set; }
        public virtual ICollection<AcessoPaginaGrupo> AcessoPaginaGrupoes { get; set; }
    }
}
