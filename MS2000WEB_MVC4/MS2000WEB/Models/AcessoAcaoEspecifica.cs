using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class AcessoAcaoEspecifica
    {
        public AcessoAcaoEspecifica()
        {
            this.AcessoAcaoEspecificaGrupoes = new List<AcessoAcaoEspecificaGrupo>();
        }

        public int PK_AcaoEspecifica { get; set; }
        public string Descricao { get; set; }
        public int FK_AcessoPaginas { get; set; }
        public string Chave_Busca { get; set; }
        public string Controller { get; set; }
        public string Action { get; set; }
        public virtual ICollection<AcessoAcaoEspecificaGrupo> AcessoAcaoEspecificaGrupoes { get; set; }
    }
}
