using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Idioma = Resources.resxIdioma;

namespace MS2000Web.Menu.Cadastros
{
    public partial class frmCAEIncluirAlterar : System.Web.UI.Page
    {
        protected static string id;
        Cae objCAE = new Cae();
        Usuario objUsuario = new Usuario();
        static bool canAlterar;
        static bool canIncluir;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaIdioma();

                id = string.Empty;
                if (Session["idCAE"] != null)
                    id = Session["idCAE"].ToString();
                Session.Remove("idCAE");
                if (!string.IsNullOrEmpty(id))
                {
                    objCAE.PKCodigo = id;
                    objCAE = objCAE.BuscarCodigo(id);
                    txtCodigo.Text = objCAE.PKCodigo;
                    txtCodigo.Enabled = false;
                    txtDescricao.Text = objCAE.Descricao;
                    txtDescricaoIng.Text = objCAE.DescricaoING;
                    //Permissão
                    canAlterar = objUsuario.AcessoOK(Operacao.Alterar, "frmCAE.aspx");
                    btnSalvar.Enabled = canAlterar;
                    //---
                }
                else
                {
                    canIncluir = objUsuario.AcessoOK(Operacao.Incluir, "frmCAE.aspx");
                    if (!canIncluir)
                    {
                        Response.Redirect(string.Format("~/frmAcessoNegado.aspx?voltar={0}", "~/frmCAE.aspx"));
                    }
                }

            }
        }

        protected void CarregaIdioma()
        {
            lbCodigo.Text = Idioma.codigo;
            lbDescricao.Text = Idioma.descricao;
            lbDescricaoIng.Text = Idioma.descricao_ing;
            btnSalvar.Text = Idioma.salvar;
            btnFechar.Text = Idioma.fechar;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            objCAE.PKCodigo = txtCodigo.Text.ToUpper();
            objCAE.Descricao = txtDescricao.Text.ToUpper();
            objCAE.DescricaoING = txtDescricaoIng.Text.ToUpper();

            if (string.IsNullOrEmpty(id))
            {
                if (objCAE.Incluir(objCAE))
                {
                    id = objCAE.PKCodigo;
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
                if (objCAE.Alterar(objCAE))
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

        protected void btnFechar_Click(object sender, EventArgs e)
        {

        }
    }
}