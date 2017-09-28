using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using MS2000Web.Menu.Sistema;

namespace MS2000Web
{
    public partial class frmGruposIncluirAlterar : System.Web.UI.Page
    {
        protected static int id;
        AcessoGrupo grupo = null;
        AcessoPaginaGrupo paginasGrupo = null;
        Usuario objUsuario = null;
        AcessoAcaoEspecificaGrupo objAcaoEspecifica = null;
        static bool canAlterar;
        static bool canIncluir;

        // Construtor
        public frmGruposIncluirAlterar()
        {
            this.paginasGrupo = new AcessoPaginaGrupo();
            this.objUsuario = new Usuario();
            this.objAcaoEspecifica = new AcessoAcaoEspecificaGrupo();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = 0;
                if (Session["idGrupo"] != null)
                    id = Convert.ToInt32(Session["idGrupo"]);
                Session.Remove("idGrupo");
                if (id > 0)
                {
                    CarregarGridAcessos(id);
                    grupo = new AcessoGrupo();
                    grupo.PK_AcessoGrupo = id;
                    txtDescricao.Text = grupo.BuscarGrupoId(grupo).Descricao;

                    //Permissão
                    canAlterar = objUsuario.AcessoOK(Operacao.Alterar, "frmGrupos.aspx");
                    btnGravarGrupo.Enabled = canAlterar;
                    //---
                }
                else
                {
                    canIncluir = objUsuario.AcessoOK(Operacao.Incluir, "frmGrupos.aspx");
                    if (!canIncluir)
                    {
                        Response.Redirect(string.Format("~/frmAcessoNegado.aspx?voltar={0}", "~/Menu/Processos/Sistema/frmGrupos.aspx"));
                    }
                }
            }
        }

        protected void CarregarGridAcessos(int fk_grupo)
        {
            grdAcessos.DataSource = paginasGrupo.BuscarPaginaGrupoFK(id);
            grdAcessos.DataBind();

            // Grid ação especifica
            grdAcao.DataSource = objAcaoEspecifica.BuscarAcaoEspecificaGrupoFK(fk_grupo);
            grdAcao.DataBind();
        }

        protected void btnGravarGrupo_Click(object sender, EventArgs e)
        {
            grupo = new AcessoGrupo();
            grupo.Descricao = txtDescricao.Text.ToUpper();

            if (id <= 0)
            {
                id = grupo.Incluir(grupo);
                if (id > 0)
                {
                    CarregarGridAcessos(id);
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
                if (grupo.Alterar(grupo) && GravarAcessos())
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

        protected bool GravarAcessos()
        {
            AcessoPaginaGrupo acesso = null;
            AcessoAcaoEspecificaGrupo acaoEspGrupo = null;
            bool GoOn = true;

            foreach (GridViewRow grdRow in grdAcessos.Rows)
            {
                acesso = new AcessoPaginaGrupo();
                acesso.PK_PaginaGrupo = Convert.ToInt32(((HiddenField)grdRow.FindControl("hdPK")).Value);
                acesso.C = (((CheckBox)grdRow.FindControl("chkIncluir")).Checked);
                acesso.R = (((CheckBox)grdRow.FindControl("chkConsultar")).Checked);
                acesso.U = (((CheckBox)grdRow.FindControl("chkEditar")).Checked);
                acesso.D = (((CheckBox)grdRow.FindControl("chkExcluir")).Checked);
                GoOn = GoOn && acesso.Alterar(acesso);
            }

            foreach (GridViewRow grd in grdAcao.Rows)
            {
                acaoEspGrupo = new AcessoAcaoEspecificaGrupo();
                acaoEspGrupo.PK_AcaoEspecificaGrupo = Convert.ToInt32(((HiddenField)grd.FindControl("hdPK")).Value);
                acaoEspGrupo.Acessa = (((CheckBox)grd.FindControl("chkAcessa")).Checked);
                GoOn = GoOn && acaoEspGrupo.Alterar(acaoEspGrupo);
            }

            return GoOn;
        }

        protected void grdAcessos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    GridView gv = (GridView)e.Row.FindControl("grdAcao");
            //    HiddenField hf1 = e.Row.FindControl("hdFkGrupo") as HiddenField;
            //    AcessoAcaoEspecificaGrupo obj = new AcessoAcaoEspecificaGrupo();
            //    gv.DataSource = obj.BuscarAcaoEspecificaGrupoFK(Convert.ToInt32(hf1.Value));
            //    gv.DataBind();
            //}
        }
    }
}