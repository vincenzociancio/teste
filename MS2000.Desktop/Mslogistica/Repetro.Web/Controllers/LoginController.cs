using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Repetro.Web.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string usuario, string senha, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                var sql = "SELECT * FROM Usuarios WHERE Usuario =@Usuario AND Senha =@Senha ";
                using (var conn = new SqlConnection())
                {
                    using (var cmd = new SqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@Usuario", usuario);
                        cmd.Parameters.AddWithValue("@Senha", senha);
                    }
                }


                /*
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
                    //ModelState.AddModelError("", usuarioRepository.Mensagem);
                }*/
            }
            return View();
        }

    }
}