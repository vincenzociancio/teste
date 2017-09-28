using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web.Menu.Processos
{
    public partial class frmRMBRDetalhe : System.Web.UI.Page
    {
        static int id;
        RMBR objRMBR = new RMBR();
        Usuario objUsuario = new Usuario();
        static bool canAlterar;
        static bool canIncluir;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = 0;
                if (Session["id_RMBR"] != null)
                    id = Convert.ToInt32(Session["id_RMBR"]);
                Session.Remove("id_RMBR");
                if (id > 0)
                {
                    objRMBR = objRMBR.BuscarID(id);
                    txtProcesso.Text = objRMBR.FK_Processo;
                    txtRMBR.Text = objRMBR.Numero_RMBR;
                    txtDataInicial.Text = objRMBR.DT_Inicial.ToString("dd/MM/yyyy");
                    txtDataFinal.Text = objRMBR.DT_Final.ToString("dd/MM/yyyy");
                    txtDI.Text = objRMBR.Numero_DI;
                    txtDataBaixa.Text = objRMBR.DT_Baixa.ToString();
                    txtDataProrrog.Text = objRMBR.DT_Prorrogacao.ToString();
                    ddlStatus.SelectedValue = objRMBR.Status.ToString();
                    //Permissão
                    canAlterar = objUsuario.AcessoOK(Operacao.Alterar, "frmRMBR.aspx");
                    btnSalvar.Enabled = canAlterar;
                    //---
                }
                else
                {
                    canIncluir = objUsuario.AcessoOK(Operacao.Incluir, "frmRMBR.aspx");
                    if (!canIncluir)
                    {
                        Response.Redirect(string.Format("~/frmAcessoNegado.aspx?voltar={0}", "~/Menu/Processos/frmRMBR.aspx"));
                    }
                }
                ddlStatus.Items.Insert(0, "");
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {            
            if (ExisteProcesso(txtProcesso.Text))
            {
                objRMBR.PK_ID = id;
                objRMBR.FK_Processo = txtProcesso.Text;
                objRMBR.Numero_RMBR = txtRMBR.Text;
                objRMBR.DT_Inicial = Convert.ToDateTime(txtDataInicial.Text);
                objRMBR.DT_Final = Convert.ToDateTime(txtDataFinal.Text);
                objRMBR.Numero_DI = txtDI.Text;
                objRMBR.DT_Baixa = (string.IsNullOrEmpty(txtDataBaixa.Text) ? (DateTime?)null : Convert.ToDateTime(txtDataBaixa.Text));
                objRMBR.DT_Prorrogacao = (string.IsNullOrEmpty(txtDataProrrog.Text) ? (DateTime?)null : Convert.ToDateTime(txtDataProrrog.Text));
                objRMBR.Status = Convert.ToInt32(ddlStatus.SelectedValue);

                if (id <= 0)
                {
                    id = objRMBR.Incluir(objRMBR);
                    if (id > 0)
                    {
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
                    if (objRMBR.Alterar(objRMBR))
                    {
                        ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_Edicao", "$('#modalSucesso').dialog('open');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_Edicao", "$('#modalErro').dialog('open');", true);
                    }
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "_check", "$('#modalCheck').dialog('open');", true);
            }            
        }

        protected bool ExisteProcesso(string arg)
        {
            Processo processo = new Processo();
            return processo.ExisteProcesso(arg);            
        }
    }
}