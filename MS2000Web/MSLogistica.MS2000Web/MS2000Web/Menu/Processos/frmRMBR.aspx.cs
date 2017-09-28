using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MS2000Web.Menu.Processos
{
    public partial class frmRMBR : System.Web.UI.Page
    {
        Usuario objUsuario = new Usuario();
        static bool canApagar;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                canApagar = objUsuario.AcessoOK(Operacao.Apagar, this.Page);
            }
        }

        protected void btnAbrir_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = sender as ImageButton;

            if (!string.IsNullOrEmpty(btn.CommandArgument))
            {
                Session.Add("id_RMBR", btn.CommandArgument);
                this.Response.Redirect("~/Menu/Processos/frmRMBRDetalhes.aspx");
            }
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

        protected void odsRMBR_Filtering(object sender, ObjectDataSourceFilteringEventArgs e)
        {
            //    if (txtFiltrar.Text != "")
            //    {
            //        e.ParameterValues.Clear();
            //        odsRMBR.FilterParameters.Clear();
            //        odsRMBR.FilterExpression = "Numero_RMBR = '{0}'";
            //        e.ParameterValues.Add("Numero_RMBR", txtFiltrar.Text);
            //    }
            //    else
            //        if (txtDT01.Text != "" && txtDT02.Text != "")
            //        {
            //            e.ParameterValues.Clear();
            //            e.ParameterValues.Add("DT_Final01", txtDT01.Text);
            //            e.ParameterValues.Add("DT_Final02", txtDT02.Text);

            //        }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            //Processo p = new Processo("02220/11");

            //var x1 = p.Contrato.Descricao;
            //var x2 = p.Contrato.Descricao;
            //var x3 = p.Contrato.Descricao;
            //var x4 = p.Contrato.Descricao;
            //var x5 = p.Contrato.Descricao;
            txtFiltrar.Text = string.Empty;
            txtDT01.Text = string.Empty;
            txtDT02.Text = string.Empty;
            odsRMBR.FilterParameters.Clear();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            if (txtFiltrar.Text != "")
            {
                odsRMBR.FilterParameters.Clear();
                odsRMBR.FilterExpression = "Numero_RMBR = '{0}'";
                odsRMBR.FilterParameters.Add("Numero_RMBR", txtFiltrar.Text);
            }
            else
                if (txtDT01.Text != "" && txtDT02.Text != "")
                {
                    odsRMBR.FilterParameters.Clear();
                    odsRMBR.FilterExpression = "DT_Final >= '" + txtDT01.Text + "' and DT_Final <= '" + txtDT02.Text + "'";
                }
        }

        protected void btnRelatorio_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDT01.Text) && !string.IsNullOrEmpty(txtDT02.Text))
            {
                Session.Add("sDataInicial", txtDT01.Text);
                Session.Add("sDataFinal", txtDT02.Text);
                Response.Redirect("~/Relatorios/rptRMBR.aspx");
            }
        }

    }
}