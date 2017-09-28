using MS2000WEB.Models;
using MS2000WEB.Models.Repository;
using MS2000WEB.Models.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MS2000WEB.Controllers
{
    public class LoginController : Controller
    {
        IUsuarioRepository usuarioRepository;

        public LoginController()
        {
            this.usuarioRepository = new UsuarioRepository(new MS2000AcessoContext());
        }

        public LoginController(IUsuarioRepository usuarioRepository)
        {
            this.usuarioRepository = usuarioRepository;
        }
                
        public ActionResult Index()
        {     
            return View();
        }
                
        [HttpPost]        
        public ActionResult Index(Usuario model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (usuarioRepository.ValidarUsuario(model.Usuario1, model.Senha))
                {
                    FormsAuthentication.SetAuthCookie(model.Usuario1, false);
                    if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                        && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                    {
                        return Redirect(returnUrl);
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", usuarioRepository.Mensagem);
                }
            }
            return View();
        }

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }

        protected override void Dispose(bool disposing)
        {
            usuarioRepository.Dispose();
            base.Dispose(disposing);
        }

    }
}
