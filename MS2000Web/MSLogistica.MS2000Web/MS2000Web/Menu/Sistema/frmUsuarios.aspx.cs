using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;

namespace MS2000Web.Menu.Sistema
{
    public partial class frmUsuarios : System.Web.UI.Page
    {
        Usuario objUsuario = null;
        static bool canIncluir = false;
        static bool canApagar = false;

        public frmUsuarios()
        {
            this.objUsuario = new Usuario();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                canApagar = objUsuario.AcessoOK(Operacao.Apagar, this.Page);
                canIncluir = objUsuario.AcessoOK(Operacao.Incluir, this.Page);
                btnIncluir.Enabled = canIncluir;
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            odsGrid.FilterParameters.Clear();
            odsGrid.FilterExpression = "nome_completo LIKE '{0}%'";
            odsGrid.FilterParameters.Add("nome_completo", txtFiltrarNome.Text.ToUpper());            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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
            ImageButton botao = sender as ImageButton;

            if (!string.IsNullOrEmpty(botao.CommandArgument))
            {                
                Session.Add("idUsuario", botao.CommandArgument);
                this.Response.Redirect("~/Menu/Sistema/frmUsuariosDetalhes.aspx");    
            }

        }

        protected void btnIncluir_Click(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            odsGrid.FilterParameters.Clear();
        }
          
    }
}