using System;
using MSBiblioteca.BLL;
using System.Web.Security;
using System.Threading;
using System.Web;
using System.Globalization;
using Idioma = Resources.resxIdioma;

namespace MS2000Web
{
    public partial class frmAcesso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {                
                ddlIdioma.SelectedValue = Thread.CurrentThread.CurrentCulture.Name;                
                CarregaIdioma();
            }
        }

        /// <summary>
        /// Carregando idioma nos componentes
        /// </summary>
        protected void CarregaIdioma()
        {
            lbTitAcesso.Text = Idioma.tela_de_acesso;
            lbUsuario.Text = string.Format("{0}:", Idioma.usuario);
            lbSenha.Text = string.Format("{0}:", Idioma.senha);
            btnEntrar.Text = Idioma.entrar;
            lbIdioma.Text = string.Format("{0}:",Idioma.idioma);
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                var objUsuario = new Usuario();
                if (objUsuario.ValidarUsuario(txtUsuario.Text, txtSenha.Text))
                {
                    FormsAuthentication.RedirectFromLoginPage(txtUsuario.Text, false);
                    Session["Usuario"] = txtUsuario.Text.ToUpper();
                }
                else
                {
                    lbMsg.Text = "Acesso negado!";
                    FormsAuthentication.SignOut();
                }
            }
            catch (Exception ex)
            {
                lbMsg.Text = ex.Message;
            }
        }

        protected void ddlIdioma_SelectedIndexChanged(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("CultureInfo");
            cookie.Value = ddlIdioma.SelectedValue;
            Response.Cookies.Add(cookie);

            Thread.CurrentThread.CurrentCulture = new CultureInfo(ddlIdioma.SelectedValue);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(ddlIdioma.SelectedValue);
            Server.Transfer(Request.Path);
        }
    }
}