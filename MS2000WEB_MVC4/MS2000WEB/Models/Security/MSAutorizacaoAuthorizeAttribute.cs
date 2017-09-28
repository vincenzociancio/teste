using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using System.Data.SqlClient;

namespace MS2000WEB.Models.Security
{
    [AttributeUsage(AttributeTargets.Method, Inherited = true, AllowMultiple = false)]
    public class MSAutorizacaoAuthorizeAttribute : AuthorizeAttribute
    {
        private readonly string _descricao;
        private readonly bool _pagina_liberada;

        /// <summary>
        /// Valida e/ou criar acessos para páginas/ações do sistema.
        /// </summary>
        /// <param name="descricao">Descrição página/ação</param>
        /// <param name="pagina_liberada">Padrão False = Acesso não liberado diretamente a página. True = Libera o acesso a página independente de perfil de acesso.</param>
        public MSAutorizacaoAuthorizeAttribute(string descricao, bool pagina_liberada = false)
        {
            this._descricao = descricao;
            this._pagina_liberada = pagina_liberada;
        }

        protected override HttpValidationStatus OnCacheAuthorization(HttpContextBase httpContext)
        {
            return base.OnCacheAuthorization(httpContext);
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if ((filterContext.HttpContext.User.Identity.IsAuthenticated) &&
                (!string.IsNullOrEmpty(filterContext.HttpContext.User.Identity.Name.ToString())))
            {
                MS2000Context db = new MS2000Context();
                try
                {
                    //Declarações                   
                    var _returnPrevious = string.Empty;
                    var _controllerName = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName;
                    var _actionName = filterContext.ActionDescriptor.ActionName;
                    var _userName = filterContext.HttpContext.User.Identity.Name;
                    var _iP = filterContext.HttpContext.Request.UserHostAddress;
                    var _data = filterContext.HttpContext.Timestamp;
                    var _allowedAccessPage = _pagina_liberada;//false;
                    var _allowedAccessAction = false;
                    var _pkAcessoPagina = 0;  

                    //**********************************************Registrando o Usuario Log***************************************************//
                    //var usuariolognovo = new Usuario_Log();
                    //usuariolognovo.Empresa = "1";
                    //usuariolognovo.Filial = "RJO";
                    //usuariolognovo.Usuario = _userName;
                    //usuariolognovo.Data  = DateTime.Now.Date;
                    //usuariolognovo.Hora = DateTime.Now.Hour;
                    //usuariolognovo.IP = _iP;
                    //usuariolognovo.Controller = _controllerName;
                    //usuariolognovo.Metodo = _actionName;
                    //usuariolognovo.Descricao = _descricao;
                    //db.Usuario_Log.Add(usuariolognovo);
                    //db.SaveChanges();

                    //pegando a url de referencia
                    if (HttpContext.Current.Request.UrlReferrer != null && HttpContext.Current.Request.UrlReferrer.AbsolutePath != "/")
                    {
                        _returnPrevious = HttpContext.Current.Request.UrlReferrer.AbsolutePath;
                    }
                    else
                    {
                        _returnPrevious = "~/Home";
                    }

                    //**********************************************Verificando permissão de página***************************************************//

                    var _pagina = db.AcessoPaginas.FirstOrDefault(c => c.Controller.ToLower() == _controllerName.ToLower());
                    // "_pagina" for igual a null insert nova página
                    if (_pagina == null)
                    {
                        var _novaPagina = new AcessoPagina
                        {
                            Pagina = "",
                            Titulo = _descricao,
                            Controller = _controllerName,
                            Ativa = true
                        };
                        db.AcessoPaginas.Add(_novaPagina);
                        db.SaveChanges();
                    }
                    else
                    {
                        // Atribuindo chave
                        _pkAcessoPagina = _pagina.PK_AcessoPaginas;

                        var query = "select pg.Acessa from " +
                                    "AcessoGrupoUsuario gu " +
                                    "inner join AcessoPaginaGrupo pg on " +
                                    "( Lower(gu.FK_Usuario) = @Usuario )and " +
                                    "( pg.FK_AcessoPaginas = @Pk_pagina ) and " +
                                    "( gu.FK_AcessoGrupo = pg.FK_AcessoGrupo )";

                        var _paginasDosGruposDoUsuario = db.Database.SqlQuery<bool>(query, new SqlParameter("@Usuario", _userName.ToLower()),
                                                                                     new SqlParameter("@Pk_pagina", _pagina.PK_AcessoPaginas)).ToList();

                        foreach (var acessa in _paginasDosGruposDoUsuario)
                        {
                            _allowedAccessPage = _allowedAccessPage || acessa;
                        }
                    }

                    //*********************************************************Verificando acões***************************************************************//

                    if (_actionName.ToLower() != "index")
                    {
                        var _acoes = db.AcessoAcaoEspecificas.FirstOrDefault(c => c.Controller.ToLower() == _controllerName.ToLower() && c.Action.ToLower() == _actionName.ToLower());

                        if (_acoes == null)
                        {
                            if (_pkAcessoPagina > 0)
                            {
                                var _novaAcao = new AcessoAcaoEspecifica
                               {
                                   Descricao = _descricao,
                                   FK_AcessoPaginas = _pkAcessoPagina,
                                   Controller = _controllerName,
                                   Action = _actionName,
                                   Chave_Busca = "nada"
                               };
                                db.AcessoAcaoEspecificas.Add(_novaAcao);
                                db.SaveChanges();
                            }
                        }
                        else
                        {
                            var query = "select ag.Acessa from " +
                                    "AcessoGrupoUsuario gu " +
                                    "inner join AcessoAcaoEspecificaGrupo ag on " +
                                    "( Lower(gu.FK_Usuario) = @Usuario )and " +
                                    "( ag.FK_AcaoEspecifica = @Pk_acao ) and " +
                                    "( gu.FK_AcessoGrupo = ag.FK_Grupo )";

                            var _acoesDosGruposDoUsuario = db.Database.SqlQuery<bool>(query, new SqlParameter("@Usuario", _userName.ToLower()),
                                                                                         new SqlParameter("@Pk_acao", _acoes.PK_AcaoEspecifica)).ToList();

                            foreach (var acessa in _acoesDosGruposDoUsuario)
                            {
                                _allowedAccessAction = _allowedAccessAction || acessa;
                            }
                        }
                    }
                    else { _allowedAccessAction = true; }

                    if (_allowedAccessPage && _allowedAccessAction)
                    {
                        // acesso permitido                        
                        
                        //filterContext.Result = new RedirectResult(filterContext.HttpContext.Request.Url.AbsolutePath);
                        base.OnAuthorization(filterContext);
                        //filterContext.HttpContext.Response.Redirect(filterContext.HttpContext.Request.Url.AbsolutePath, true);
                        return;
                    }
                    else
                    {
                        if (_actionName.ToLower() == "index")
                        {
                            _returnPrevious = "~/Home";
                        }
                        filterContext.Controller.TempData["AccessDenied"] = true;                        
                        filterContext.Result = new RedirectResult(_returnPrevious);                        
                        return;
                    }
                }
                finally
                {
                    if (db != null)
                    {
                        db.Dispose();
                    }
                }
            }
            else
            {
                filterContext.Result = new RedirectResult("~/Login/LogOff", true);
            }
        }
    }
}