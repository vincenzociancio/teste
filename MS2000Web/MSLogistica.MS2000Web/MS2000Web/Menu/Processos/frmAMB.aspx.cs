using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web.Menu.Processos
{
    public partial class frmAMB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            Session.Add("ssProcessoRCR", txtProcessoRCR.Text);
            Session.Add("ssIdentificacao", txtIdentificacao.Text);
            Session.Add("ssProcesso", txtProcesso.Text);
            Session.Add("ssVia",rblVia.SelectedValue);
            Response.Redirect("~/Relatorios/rptAMB.aspx");
        }
    }
}