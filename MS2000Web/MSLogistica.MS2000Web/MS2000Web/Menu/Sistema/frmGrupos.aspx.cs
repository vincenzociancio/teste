using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System.IO;

namespace MS2000Web.Menu.Sistema
{
    public partial class frmGrupos : System.Web.UI.Page
    {
        Usuario objUsuario = null;
        static bool canApagar;
        static bool canIncluir;

        // Construtor
        public frmGrupos()
        {
            this.objUsuario = new Usuario();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                canApagar = objUsuario.AcessoOK(Operacao.Apagar, this.Page);
                canIncluir = objUsuario.AcessoOK(Operacao.Incluir, this.Page);
                // Controles
                btnIncluir.Enabled = canIncluir;
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            odbGrupos.FilterParameters.Clear();
            odbGrupos.FilterExpression = "descricao LIKE '{0}%'";
            odbGrupos.FilterParameters.Add("descricao", txtFiltrarNome.Text.ToUpper());
        }

        protected void btnApagar_Click(object sender, ImageClickEventArgs e)
        {
            AcessoGrupo grupos = new AcessoGrupo();
            ImageButton btn = (ImageButton)sender;
            int id = Int32.Parse(btn.CommandArgument);
            grupos.PK_AcessoGrupo = id;
            grupos.Excluir(grupos);
            grdGrupos.DataBind();
        }

        protected void grdGrupos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var imageButton = e.Row.FindControl("btnApagar") as ImageButton;
                if (imageButton == null)
                    return;
                imageButton.Enabled = canApagar;
            }
        }

        protected void btnAbrir_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;         

            if (!string.IsNullOrEmpty(btn.CommandArgument))
            {
                Session.Add("idGrupo", btn.CommandArgument);
                this.Response.Redirect("~/Menu/Sistema/frmGruposDetalhes.aspx");                
            }
        }
    }
}