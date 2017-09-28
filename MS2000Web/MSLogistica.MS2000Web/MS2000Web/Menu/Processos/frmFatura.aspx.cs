using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using System.Data;
using System.Web.Services;
using Idioma = Resources.resxIdioma;
namespace MS2000Web.Menu.Processos
{
    public partial class frmFatura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["tabGrid"] != null)
                {
                    //grdFatura.DataSource = (DataTable)Session["tabGrid"];
                    //grdFatura.DataBind();                    
                }
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {

            Processo processo = new Processo(txtFiltrarProcesso.Text);
            if(string.IsNullOrEmpty(processo.Codigo))
            {
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "_Processo_Nao_Encontrado", "$('#modalNaoExisteProcesso').dialog('open');", true);
            }
            else
            {
                grdFatura.DataSource = processo.Fatura;
                grdFatura.DataBind();
            }
        }

        protected void btnIncluir_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            Session.Add("Processo", txtFiltrarProcesso.Text);
            this.Response.Redirect("~/Menu/Processos/frmFaturaDetalhes.aspx");
        }

        protected void btnAbrir_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string[] arg = btn.CommandArgument.Split(',');
            string codigo = arg[0];
            string processo = arg[1];

            if (!string.IsNullOrEmpty(btn.CommandArgument))
            {
                Session.Add("codigoFatura", codigo);
                Session.Add("Processo", processo);
                this.Response.Redirect("~/Menu/Processos/frmFaturaDetalhes.aspx");                
            }
        }

        protected void btnApagar_Click(object sender, ImageClickEventArgs e)
        {
            Fatura fatura = new Fatura();
            ImageButton btn = (ImageButton)sender;
            string[] arg = btn.CommandArgument.Split(',');
            string codigo = arg[0];
            string processo = arg[1];

            fatura.Codigo = codigo;
            fatura.Processo = processo;
            fatura.Excluir(fatura);
            grdFatura.DataSource = fatura.BuscarPorProcesso(processo);
            grdFatura.DataBind();
        }

        protected void grdFatura_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

    }
}