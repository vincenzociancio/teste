using MS2000WEB.Models.Repository;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MS2000WEB.Models.Security
{
    [AttributeUsage(AttributeTargets.Interface, AllowMultiple = false, Inherited = true)]
    public class MSActionAuthorization : ActionFilterAttribute, IActionFilter
    {
        private IAcessoAcaoEspecificaRepository _acessoAcaoEspecificaRepository;
        private IAcessoGrupoUsuarioRepository _acessoGrupoUsuarioRepository;
        private IAcessoPaginaRepository _acessoPaginaRepository;
        private readonly string _descricao;
        /// <summary>
        /// Descrição completa da ação. Ex: <nome da página>+<ação>
        /// </summary>
        /// <param name="descricao">Descrição</param>
        /// 
        public MSActionAuthorization(string descricao)
        {
            this._descricao = descricao;
        }

        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (filterContext.HttpContext.User.Identity.IsAuthenticated && !string.IsNullOrEmpty(filterContext.HttpContext.User.Identity.Name.ToString()))
            {
                //filterContext.Controller.TempData.Remove("AccessDenied");
                string _returnPrevious = HttpContext.Current.Request.UrlReferrer.AbsolutePath;
                string _controllerName = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName;
                string _actionName = filterContext.ActionDescriptor.ActionName;
                string _userName = filterContext.HttpContext.User.Identity.Name;
                int _pkAcessoPagina = 0;
                bool _allowedAccess = false;

                #region verificando o acesso a pagina pagina
                try
                {
                    _acessoPaginaRepository = new AcessoPaginaRepository(new MS2000Context());
                    var _pagina = _acessoPaginaRepository.GetAcessoPaginaByController(_controllerName);
                    if (_pagina == null)
                    {
                        filterContext.Controller.TempData["AccessDenied"] = "yes";
                        filterContext.Result = new RedirectResult(_returnPrevious, true);
                        return;
                    }
                    else
                    {
                        _pkAcessoPagina = _pagina.PK_AcessoPaginas;
                    }
                }
                finally
                {
                    _acessoPaginaRepository.Dispose();
                }
                #endregion

                #region verificando permissões para ação
                try
                {
                    _acessoAcaoEspecificaRepository = new AcessoAcaoEspecificaRepository(new MS2000Context());
                    _acessoGrupoUsuarioRepository = new AcessoGrupoUsuarioRepository(new MS2000Context());

                    var _acaoEspecifica = _acessoAcaoEspecificaRepository.GetAcessoAcaoEspecificaByChaveBusca(_controllerName, _actionName);

                    if (_acaoEspecifica == null)
                    {
                        // insert acesso acao especifica
                        var _novaAcao = new AcessoAcaoEspecifica
                        {
                            Descricao = _descricao,
                            FK_AcessoPaginas = _pkAcessoPagina,
                            Controller = _controllerName,
                            Action = _actionName,
                            Chave_Busca = "nada"
                        };

                        _acessoAcaoEspecificaRepository.Insert(_novaAcao);
                        _acessoAcaoEspecificaRepository.Save();
                        //---
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(_userName))
                        {
                            var _gruposDoUsuario = _acessoGrupoUsuarioRepository.AllIncluding(g => g.AcessoGrupos, a => a.AcessoGrupos.AcessoAcaoEspecificaGrupoes).Where(x => x.FK_Usuario.ToLower() == _userName.ToLower());

                            foreach (var grupo in _gruposDoUsuario)
                            {
                                var _acaoEspecificaGrupo = grupo.AcessoGrupos.AcessoAcaoEspecificaGrupoes.Where(x => x.FK_AcaoEspecifica == _acaoEspecifica.PK_AcaoEspecifica);
                                foreach (var acao in _acaoEspecificaGrupo)
                                {
                                    _allowedAccess = _allowedAccess || acao.Acessa;
                                }
                            }
                        }
                    }

                    if (_allowedAccess)
                    {
                        //filterContext.Controller.TempData["AccessDenied"] = "no";
                        base.OnActionExecuting(filterContext);
                        //return;
                    }
                    else
                    {
                        
                //        filterContext.Result =
                //new RedirectToRouteResult(
                //    new RouteValueDictionary(
                //        new { controller = "acessogrupos", action = "index", TempData = Temp }));

                        //filterContext.Controller.TempData.Add("AccessDenied","yes");
                        //HttpContext.Current.Request



                        //filterContext.Result = new  ViewResult
                        //{
                            
                        //    ViewName = "acessogrupos",
                        //     = "Index",
                        //    TempData = Temp
                        //};



                        filterContext.Controller.TempData.Add("AccessDenied", "yes");
                        filterContext.Result = new RedirectResult(_returnPrevious);
                        
                        //return;

                        //filterContext.Result = RedirectToRouteResult
                    }
                }
                finally
                {
                    _acessoAcaoEspecificaRepository.Dispose();
                    _acessoGrupoUsuarioRepository.Dispose();
                }
                #endregion
            }
            else
            {
                filterContext.Result = new RedirectResult("~/Login/LogOff", true);
            }
        }

        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
            //The action filter logic - after
        }


    }
}