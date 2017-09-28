using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using Idioma = Resources.resxIdioma;
using MSBiblioteca.BLL;
using System.Data;
using MSBiblioteca.Constante;

namespace MS2000Web.Menu.Cadastros
{
    public partial class frmArmazens : System.Web.UI.Page
    {
        Usuario objUsuario = null;
        
        static bool canAlterar;
        static bool canApagar;
        static bool canIncluir;

        //Construtor
        public frmArmazens()
        {
            this.objUsuario = new Usuario();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregandoPerfilAcesso();
                CarregaIdioma();
                CarregarGrView();
            }
        }

        /// <summary>
        /// Carregando idioma nos componentes
        /// </summary>
        protected void CarregaIdioma()
        {
            lbDescricaoPesq.Text = Idioma.descricao;
            btnPesquisar.Text = Idioma.pesquisar;
            btnVoltar.Text = Idioma.voltar;
            btnIncluir.Text = Idioma.incluir;
            lbTitulo.Text = Idioma.armazens;       
        }

        protected void CarregarGrView()
        {
            Armazem objArmazem = new Armazem();            
            grvArmazens.DataSource = objArmazem.Buscar();
            grvArmazens.DataBind();
        }

        protected void CarregandoPerfilAcesso()
        {
            // Autorização
            canAlterar = objUsuario.AcessoOK(Operacao.Alterar, this.Page);
            canApagar = objUsuario.AcessoOK(Operacao.Apagar, this.Page);
            canIncluir = objUsuario.AcessoOK(Operacao.Incluir, this.Page);
            // controles
            btnIncluir.Enabled = canIncluir;
        }

        protected void PesquisarProcurador()
        {
            Armazem objArmazem = new Armazem();
            grvArmazens.DataSource = objArmazem.BuscarDescricao(txtParametro.Text.ToUpper());
            grvArmazens.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            PesquisarProcurador();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            txtParametro.Text = string.Empty;
            CarregarGrView();
        }

        protected void grvArmazens_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvArmazens.PageIndex = e.NewPageIndex;
            CarregarGrView();
        }

        protected void grvArmazens_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.abrir;
                e.Row.Cells[1].Text = Idioma.apagar;
                e.Row.Cells[2].Text = Idioma.codigo;
                e.Row.Cells[3].Text = Idioma.descricao;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Enabled = canAlterar;
                e.Row.Cells[1].Enabled = canApagar;
                //Permissão para Apagar
                var imageButton = e.Row.FindControl("btnApagar") as ImageButton;
                if (imageButton == null)
                    return;
                imageButton.Enabled = canApagar;

                //Permissão para Alterar
                var imageButton2 = e.Row.FindControl("btnAbrir") as ImageButton;
                if (imageButton2 == null)
                    return;
                imageButton2.Enabled = canAlterar;
            }
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            Armazem armazem = new Armazem();
            ImageButton btn = (ImageButton)sender;
            string id = btn.CommandArgument;
            armazem.Codigo = id;
            armazem.Excluir(armazem.Codigo);
            CarregarGrView();
        }

        protected void btnAbrir_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;

            if (!string.IsNullOrEmpty(btn.CommandArgument))
            {
                Session.Add("idArmazem", btn.CommandArgument);
                this.Response.Redirect("~/Menu/Cadastros/frmArmazensDetalhes.aspx");
            }
        } 
    }
}