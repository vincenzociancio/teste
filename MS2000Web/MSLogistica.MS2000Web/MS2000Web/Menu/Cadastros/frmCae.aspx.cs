using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using Idioma = Resources.resxIdioma;
using MSBiblioteca.Constante;
using System.Collections.Generic;

namespace MS2000Web.Menu.Cadastros
{
    public partial class frmCAE : System.Web.UI.Page
    {
        Usuario objUsuario = null;
        static List<Cae> objCae = new List<Cae>();
        static bool canAlterar;
        static bool canApagar;
        static bool canIncluir;

        public frmCAE()
        {
            this.objUsuario = new Usuario();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregandoPerfilAcesso();
                CarregaIdioma();
            }
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

        /// <summary>
        /// Carregando idioma nos componentes
        /// </summary>
        protected void CarregaIdioma()
        {
            lbPesqCodigo.Text = Idioma.codigo;
            lbPesqDescricao.Text = Idioma.descricao;
            btnPesquisar.Text = Idioma.pesquisar;
            btnVoltar.Text = Idioma.voltar;
            lbTitulo.Text = Idioma.atividade_economica;
            btnIncluir.Text = Idioma.incluir;
            btnRelatorio.Value = Idioma.relatorio;
            //GridView
            BoundField bfDescricao = new BoundField();
            bfDescricao.DataField = Idioma.db_descricao;
            bfDescricao.HeaderText = Idioma.descricao;
            grvCAE.Columns.Add(bfDescricao);
            //
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            //string codigoCAE = string.Empty;
            //ImageButton objbtn = sender as ImageButton;
            //codigoCAE = objbtn.CommandArgument.ToString();
            Cae cae = new Cae();
            ImageButton btn = (ImageButton)sender;
            string id = btn.CommandArgument;
            cae.PKCodigo = id;
            cae.Excluir(cae.PKCodigo);
            grvCAE.DataSourceID = null;
            grvCAE.DataSource = odsGrid;
            grvCAE.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            Cae cae = new Cae();
            if (!string.IsNullOrEmpty(txtPesqCodigo.Text)) 
            {                                  
                objCae.Add(cae.BuscarCodigo(txtPesqCodigo.Text.ToUpper()));                
            }
            else
            if (!string.IsNullOrEmpty(txtPesqDescricao.Text))
            {   
                objCae = cae.BuscarDescricao(txtPesqDescricao.Text.ToUpper());                
            }
            grvCAE.DataSourceID = null;
            grvCAE.DataSource = objCae;
            grvCAE.DataBind();
        }

        protected void txtPesqDescricao_TextChanged(object sender, EventArgs e)
        {
            txtPesqCodigo.Text = string.Empty;
        }

        protected void txtPesqCodigo_TextChanged(object sender, EventArgs e)
        {
            txtPesqDescricao.Text = string.Empty;
        }

        protected void grvCAE_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.abrir;
                e.Row.Cells[1].Text = Idioma.apagar;
                e.Row.Cells[2].Text = Idioma.codigo;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
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

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            objCae.Clear();
            grvCAE.DataSourceID = null;
            grvCAE.DataSource = odsGrid;
            grvCAE.DataBind();
        }

        protected void btnAbrir_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;

            if (!string.IsNullOrEmpty(btn.CommandArgument))
            {
                Session.Add("idCAE", btn.CommandArgument);
                this.Response.Redirect("~/Menu/Cadastros/frmCaeDetalhes.aspx");
            }
        } 

        protected void grvCAE_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (objCae.Count > 0)
            {
                grvCAE.PageIndex = e.NewPageIndex;
                grvCAE.DataSource = objCae;
                grvCAE.DataBind();
            }
        }

    }
}