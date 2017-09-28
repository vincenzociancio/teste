using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MS2000WEB.Models;

namespace MS2000WEB.ViewModels
{
    public class AcessoGruposViewModel
    {
        public AcessoGruposViewModel()
        {

        }

        public AcessoGruposViewModel(int id, string nome, List<AcessoPaginaViewModel> paginaList)
        {
            GrupoID = id;
            NomeGrupo = nome;
            PaginaList = paginaList;
        }

        public int GrupoID { get; set; }
        public string NomeGrupo { get; set; }
        public IList<AcessoPaginaViewModel> PaginaList { get; set; }
    }


    public class AcessoPaginaViewModel
    {
        public AcessoPaginaViewModel()
        {
            this.Acoes = new List<AcessoAcaoViewModel>();
        }
        public int id { get; set; }
        public string descricao { get; set; }
        public bool acessa { get; set; }
        public int PK_AcessoPaginas { get; set; }

        public virtual List<AcessoAcaoViewModel> Acoes { get; set; }
    }

    public class AcessoAcaoViewModel
    {
        public int id { get; set; }
        public string descricao { get; set; }
        public bool acessa { get; set; }
        public int FK_AcessoPaginas { get; set; }

        //public virtual Pagina Pagina { get; set; }
    }
}