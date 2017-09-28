using MS2000WEB.Models.Repository;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS2000WEB.Models.Security
{
    [AttributeUsage(AttributeTargets.Interface, AllowMultiple = true, Inherited = true)]
    public class MSControllerAuthorization : AuthorizeAttribute
    {
        private IAcessoPaginaRepository _acessoPaginaRepository;
        private IAcessoGrupoUsuarioRepository _acessoGrupoUsuarioRepository;
        private readonly string _descricao;

        public MSControllerAuthorization(string descricao)
        {
            this._descricao = descricao;
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext.HttpContext.User.Identity.IsAuthenticated && !string.IsNullOrEmpty(filterContext.HttpContext.User.Identity.Name.ToString()))
            {
                try
                {                     
                    _acessoPaginaRepository = new AcessoPaginaRepository(new MS2000Context());
                    _acessoGrupoUsuarioRepository = new AcessoGrupoUsuarioRepository(new MS2000Context());
                    string _returnPrevious = string.Empty;

                    if (HttpContext.Current.Request.UrlReferrer != null)
                    {
                        _returnPrevious = HttpContext.Current.Request.UrlReferrer.AbsolutePath;
                    }
                    else
                    {
                        _returnPrevious = "/";
                    }

                    string _controllerName = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName;
                    string _userName = filterContext.HttpContext.User.Identity.Name;
                    bool _allowedAccess = false;

                    var _acessoPagina = _acessoPaginaRepository.GetAcessoPaginaByController(_controllerName);

                    if (_acessoPagina == null)
                    {
                        var _novaPagina = new AcessoPagina
                        {
                            Pagina = "",
                            Titulo = _descricao,
                            Controller = _controllerName,
                            Ativa = true
                        };
                        _acessoPaginaRepository.Insert(_novaPagina);
                        _acessoPaginaRepository.Save();
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(_userName))
                        {
                            var _gruposDoUsuario = _acessoGrupoUsuarioRepository.AllIncluding(g => g.AcessoGrupos, a => a.AcessoGrupos.AcessoPaginaGrupoes).Where(x => x.FK_Usuario.ToLower() == _userName.ToLower());

                            foreach (var grupo in _gruposDoUsuario)
                            {
                                var _paginaGrupo = grupo.AcessoGrupos.AcessoPaginaGrupoes.Where(x => x.FK_AcessoPaginas == _acessoPagina.PK_AcessoPaginas);
                                foreach (var pagina in _paginaGrupo)
                                {
                                    _allowedAccess = _allowedAccess || pagina.Acessa;
                                }
                            }
                        }
                    }

                    if (_allowedAccess)
                    {
                        //filterContext.Controller.TempData["AccessDenied"] = "no";
                        base.OnAuthorization(filterContext);
                        return;
                    }
                    else
                    {
                        filterContext.Controller.TempData.Add("AccessDenied", "yes");
                        filterContext.Result = new RedirectResult(_returnPrevious, true);
                        return;
                    }
                }
                finally
                {
                    _acessoPaginaRepository.Dispose();
                    _acessoGrupoUsuarioRepository.Dispose();
                }
            }
            else
            {
                filterContext.Result = new RedirectResult("~/Login/LogOff", true);
            }
        }
    }
}