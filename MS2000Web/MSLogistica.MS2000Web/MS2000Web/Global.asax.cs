using System;
using System.Web;
using System.Threading;
using System.Globalization;
using System.Web.Routing;
using System.Web.Security;


namespace MS2000Web
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //RegisterRouters(RouteTable.Routes);
        }

        void RegisterRouters(RouteCollection routes)
        {
            //routes.MapPageRoute("grupos", "Menu/Sistema/Grupos", "~/Menu/Sistema/frmGrupos.aspx");            
            //routes.MapPageRoute("gruposInclusao", "Menu/Sistema/Grupos/Inclusao", "~/Menu/Sistema/frmGruposIncluirAlterar.aspx");
            //routes.MapPageRoute("gruposEdicao", "Menu/Sistema/Grupos/Edicao/{*Id}", "~/Menu/Sistema/frmGruposIncluirAlterar.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //var context = HttpContext.Current;
            //if (context.Session != null && context.Session["NotEndSession"] != null)
            //{
            //    var goOn = context.Session["NotEndSession"];
            //    if (goOn != null)
            //    {
            //        if ((bool)goOn)
            //        {
            //            Session.Timeout = 1;
            //        }
            //    }
            //}
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["CultureInfo"];
            if (cookie != null && cookie.Value != null)
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(cookie.Value);
                Thread.CurrentThread.CurrentCulture = new CultureInfo(cookie.Value);
            }
            else
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("pt-BR");
                Thread.CurrentThread.CurrentCulture = new CultureInfo("pt-BR");
            }
        }
        
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            //HttpContext ctx = HttpContext.Current;
            //Exception ex = ctx.Server.GetLastError();
            //if (ex != null)
            //    Response.Redirect("/frmErro.aspx?Error=" + ex.InnerException.Message);            
            //ctx.Server.ClearError();
            //ctx.Response.Clear();
            //ctx.Response.End();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            //var context = HttpContext.Current;
            //if (context.Session != null && context.Session["NotEndSession"] != null)
            //{
            //    var goOn = context.Session["NotEndSession"];
            //    if (goOn != null)
            //    {
            //        if ((bool)goOn)
            //        {
                        //FormsAuthentication.RenewTicketIfOld().RedirectFromLoginPage(Session["Usuario"].ToString(), false);
            //            RenewCurrentUser();
            //        }
            //    }
            //}
        }
        
        protected void Application_End(object sender, EventArgs e)
        {

        }

        void context_AcquireRequestState(object sender, EventArgs e)
        {
            HttpContext ctx = HttpContext.Current;
            ResetAuthCookie(ctx);
        }

        private void ResetAuthCookie(HttpContext ctx)
        {
            HttpCookie authCookie = ctx.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie == null)
                return;

            FormsAuthenticationTicket ticketOld = FormsAuthentication.Decrypt(authCookie.Value);
            if (ticketOld == null)
                return;

            if (ticketOld.Expired)
                return;

            FormsAuthenticationTicket ticketNew = null;
            if (FormsAuthentication.SlidingExpiration)
                ticketNew = FormsAuthentication.RenewTicketIfOld(ticketOld);

            if (ticketNew != ticketOld)
                StoreNewCookie(ticketNew, authCookie, ctx);
        }

        private void StoreNewCookie(FormsAuthenticationTicket ticketNew, HttpCookie authCookie, HttpContext ctx)
        {
            string hash = FormsAuthentication.Encrypt(ticketNew);
            if (ticketNew.IsPersistent)
                authCookie.Expires = ticketNew.Expiration;

            authCookie.Value = hash;
            authCookie.HttpOnly = true;

            ctx.Response.Cookies.Add(authCookie);
        }

    }
}