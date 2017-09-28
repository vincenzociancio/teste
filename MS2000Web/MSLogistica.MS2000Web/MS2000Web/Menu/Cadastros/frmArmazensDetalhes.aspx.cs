using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System;
using System.Web.UI;
using Idioma = Resources.resxIdioma;

namespace MS2000Web.Menu.Cadastros
{
    public partial class frmArmazensIncluirAlterar : System.Web.UI.Page
    {
        protected static string id;
        Armazem objArmazem = new Armazem();
        Usuario objUsuario = new Usuario();
        static bool canAlterar;
        static bool canIncluir;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaIdioma();
                id = string.Empty;
                if (Session["idArmazem"] != null)
                    id = Session["idArmazem"].ToString();
                Session.Remove("idArmazem");
                if (!string.IsNullOrEmpty(id))
                {
                    objArmazem.Codigo = id;
                    objArmazem = objArmazem.BuscarCodigo(id);
                    txtCodigo.Text = objArmazem.Codigo;
                    txtCodigo.Enabled = false;
                    txtDescricao.Text = objArmazem.Descricao;

                    //Permissão
                    canAlterar = objUsuario.AcessoOK(Operacao.Alterar, "frmArmazens.aspx");
                    btnSalvar.Enabled = canAlterar;
                    //---
                }
                else
                {
                    canIncluir = objUsuario.AcessoOK(Operacao.Incluir, "frmArmazens.aspx");
                    if (!canIncluir)
                    {
                        Response.Redirect(string.Format("~/frmAcessoNegado.aspx?voltar={0}", "~/frmArmazens.aspx"));
                    }
                }
            }
        }

        protected void CarregaIdioma()
        {
            lbCodigo.Text = Idioma.codigo;
            lbDescricao.Text = Idioma.descricao;         
            btnSalvar.Text = Idioma.salvar;
            btnFechar.Text = Idioma.fechar;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            objArmazem.Codigo = txtCodigo.Text.ToUpper();
            objArmazem.Descricao = txtDescricao.Text.ToUpper();
            

            if (string.IsNullOrEmpty(id))
            {
                if (objArmazem.Incluir(objArmazem))
                {
                    id = objArmazem.Codigo;
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK", "$('#modalSucesso').dialog('open');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO", "$('#modalErro').dialog('open');", true);
                }
            }
            else
            {
                // Edição
                if (objArmazem.Alterar(objArmazem))
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_Edicao", "$('#modalSucesso').dialog('open');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_Edicao", "$('#modalErro').dialog('open');", true);
                }
                //----------
            }
        }
    }
}