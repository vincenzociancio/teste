using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web
{
    public partial class frmAcessoNegado : System.Web.UI.Page
    {
        static string voltarPara = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            voltarPara = Request.QueryString["voltar"];
        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(voltarPara))
            {
                Response.Redirect("~/MenuPrincipal.aspx");
            }
            else
            {
                Response.Redirect(voltarPara);
            }
        }
    }
}