using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using System.Text;
using MSBiblioteca.Constante;
using MSBiblioteca.MSUtil;
using System.Web.Routing;

namespace MS2000Web.Componentes
{
    public partial class AutorizarLeituraDePagina : System.Web.UI.UserControl
    {
        public string PaginaTitulo { get; set; }
        private string PaginaNome { get; set; }
        public bool PaginaAtiva { get; set; }
        readonly AcessoPagina _acessoPagina;
        readonly Usuario _usuario;

        public AutorizarLeituraDePagina()
        {
            _acessoPagina = new AcessoPagina();
            _usuario = new Usuario();
            PaginaTitulo = "Não informado pelo programador!";
            PaginaNome = System.IO.Path.GetFileName(System.Web.HttpContext.Current.Request.Url.AbsolutePath);            
            PaginaAtiva = false; 
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["PreviousPage"] = Request.UrlReferrer;
            _acessoPagina.Titulo = PaginaTitulo;
            _acessoPagina.Pagina = PaginaNome;
            _acessoPagina.Ativa = PaginaAtiva;
            int paginaId;

            if (_acessoPagina.Existe(_acessoPagina, out paginaId))
            {
                if (!_usuario.AcessoOK(Operacao.Leitura, Page))
                {
                    Response.Redirect("~/frmAcessoNegado.aspx");
                }
            }
            else
            {
                _acessoPagina.Incluir(_acessoPagina);
                Response.Redirect("~/frmAcessoNegado.aspx");
            }
        }
    }
}