using System;
using System.Web.UI;
using System.Web.Security;
using System.Web;
using Idioma = Resources.resxIdioma;
using System.Threading;
using System.Globalization;

namespace MS2000Web
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string cultura = "pt-BR";
                HttpCookie cookie = Request.Cookies["CultureInfo"];
                if (cookie != null && cookie.Value != null)
                {
                    cultura = cookie.Value;
                }

                if (Thread.CurrentThread.CurrentCulture.Name == "pt-BR")
                {
                    btnTrocaIdioma.ImageUrl = "~/Layout/Imagens/en.png";
                    btnTrocaIdioma.AlternateText = "English";
                }
                else
                {
                    btnTrocaIdioma.ImageUrl = "~/Layout/Imagens/pt.png";
                    btnTrocaIdioma.AlternateText = "Português(Brasil)";
                }

                lbHoraAtual.Text = DateTime.Now.ToString("dddd, dd 'de' MMMM 'de' yyyy", System.Globalization.CultureInfo.GetCultureInfo(Thread.CurrentThread.CurrentCulture.Name));
                lbUsuario.Text = string.Format("{0}, {1}, {2}.", Idioma.ola, Session["Usuario"].ToString(), Idioma.seja_bem_vindo);
                lbBotton.Text = string.Format("Copyright © 2000-{0} MS Logística Aduaneira Ltda. - {1}", DateTime.Now.Year, Idioma.todos_direitos_reservados);
                lbtnSair.Text = Idioma.sair;
            }
            // Verifica se existe usuário autenticado
            if (Request.IsAuthenticated == false)
            {
                Response.Redirect("~/frmAcesso.aspx", false);
            }
        }

        protected void lbtnSair_Click(object sender, EventArgs e)
        {
            // Sai do sistema
            FormsAuthentication.SignOut();
            Response.Redirect("~/frmAcesso.aspx", false);
        }

        protected void btnTrocaIdioma_Click(object sender, ImageClickEventArgs e)
        {
            var cookie = new HttpCookie("CultureInfo");
            cookie.Value = Thread.CurrentThread.CurrentCulture.Name == "pt-BR" ? "en-US" : "pt-BR";
            Response.Cookies.Add(cookie);
            if (cookie.Value == "pt-BR")
            {
                btnTrocaIdioma.ImageUrl = "~/Layout/Imagens/en.png";
                btnTrocaIdioma.AlternateText = "English";
            }
            else
            {
                btnTrocaIdioma.ImageUrl = "~/Layout/Imagens/pt.png";
                btnTrocaIdioma.AlternateText = "Português(Brasil)";
            }

            Thread.CurrentThread.CurrentCulture = new CultureInfo(cookie.Value);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(cookie.Value);
            Server.Transfer(Request.Path);
        }
    }
}