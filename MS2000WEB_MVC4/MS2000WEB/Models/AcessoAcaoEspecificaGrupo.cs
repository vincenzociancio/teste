using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoAcaoEspecificaGrupo
    {
        public int PK_AcaoEspecificaGrupo { get; set; }
        public int FK_AcaoEspecifica { get; set; }
        public int FK_Grupo { get; set; }
        public bool Acessa { get; set; }
        public virtual AcessoAcaoEspecifica AcessoAcaoEspecifica { get; set; }
        public virtual AcessoGrupos AcessoGrupos { get; set; }
    }
}
