using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using System.Data;
using System.Web.Services;
using Idioma = Resources.resxIdioma;

namespace MS2000Web.Menu.Processos
{
    public partial class frmFaturaDetalhes : System.Web.UI.Page
    {
        protected static string codigo = string.Empty;
        protected static string processo = string.Empty;

        Fatura objFatura = null;
        static Processo objProcesso = null;

        public frmFaturaDetalhes()
        {
            this.objFatura = new Fatura();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                codigo = (string)Session["codigoFatura"];
                Session.Remove("codigoFatura");

                processo = (string)Session["Processo"];
                Session.Remove("Processo");

                if (!string.IsNullOrEmpty(codigo))
                {
                    objProcesso = new Processo(processo);
                    lblImportador.Text = objProcesso.Importador.RazaoSocial;
                    lblDescricao.Text = objProcesso.Contrato.Descricao;
                    lblIN.Text = objProcesso.Contrato.INs;
                    lblRepetro.Text = Convert.ToBoolean(objProcesso.Contrato.Repetro) ? "Sim" : "Não";         

                    //1 - Solução
                    //var fatura = objProcesso.Fatura.Where(x => x.Codigo == codigo).FirstOrDefault();
                    //2 - Solução
                    var fatura = (from p in objProcesso.Fatura
                                          where p.Codigo == codigo
                                          select p).FirstOrDefault();

                    txtNumFatura.Text = fatura.Codigo;                    
                    PreencherIncoterm();
                    ddlInconterm.SelectedValue = fatura.Incoterm;
                    PreencherExportador();
                    ddlExportador.SelectedValue = fatura.FK_Exportador;
                    txtCodExportador.Text = fatura.FK_Exportador;
                    cbxPesoLibra.Checked = Convert.ToBoolean(fatura.Peso_Libra);
                    txtLocalCondicao.Text = fatura.Condicao;
                    PreencherMoeda();
                    ddlMoeda.SelectedValue = fatura.Moeda;
                    txtCodMoeda.Text = fatura.Moeda;
                    txtValorTotal.Text = fatura.Valor_Total.ToString();
                    txtPesoTotal.Text = fatura.Peso_Total.ToString();
                    txtPesoAcertado.Text = fatura.Peso_Total_Acertado.ToString();
                    PreencherTipoVinculacao();
                    ddlVincImportadorExportador.SelectedValue = fatura.Vinculacao;
                    cbxAcrescimo.Checked = Convert.ToBoolean(fatura.Acrescimos_Reducoes);
                    txtDt_Emissao.Text = fatura.DtEmissao.ToString();
                    Preencherplataformas();
                    ddlPlataforma.SelectedValue = fatura.FK_Plataforma.ToString();
                }
                else
                {
                    PreencherIncoterm();
                    PreencherExportador();
                    PreencherMoeda();
                    PreencherTipoVinculacao();
                    Preencherplataformas();
                }
            }

        }
        protected void PreencherIncoterm()
        {
            SiscomexIncoterm Incoterm = new SiscomexIncoterm();
            ddlInconterm.DataTextField = "Descricao";
            ddlInconterm.DataValueField = "Codigo";
            ddlInconterm.DataSource = Incoterm.Listar().DefaultView;
            ddlInconterm.DataBind();
            ddlInconterm.Items.Insert(0, "");
        }

        protected void PreencherExportador()
        {
            Exportador Exportador = new Exportador();
            ddlExportador.DataTextField = "Razao_Social";
            ddlExportador.DataValueField = "Codigo";
            ddlExportador.DataSource = Exportador.Listar().DefaultView;
            ddlExportador.DataBind();
            ddlExportador.Items.Insert(0, "");
        }

        protected void PreencherMoeda()
        {
            SiscomexMoeda Moeda = new SiscomexMoeda();
            ddlMoeda.DataTextField = "Descricao";
            ddlMoeda.DataValueField = "Codigo";
            ddlMoeda.DataSource = Moeda.Listar().DefaultView;
            ddlMoeda.DataBind();
            ddlMoeda.Items.Insert(0, "");
        }

        protected void PreencherTipoVinculacao()
        {
            TipoVinculacao vinculacao = new TipoVinculacao();
            ddlVincImportadorExportador.DataTextField = "Descricao";
            ddlVincImportadorExportador.DataValueField = "Codigo";
            ddlVincImportadorExportador.DataSource = vinculacao.Listar().DefaultView;
            ddlVincImportadorExportador.DataBind();
            ddlVincImportadorExportador.Items.Insert(0, "");
        }

        protected void Preencherplataformas()
        {
            objProcesso = new Processo(processo);
            ddlPlataforma.DataTextField = "Plataforma";
            ddlPlataforma.DataValueField = "PK_Plataforma";
            ddlPlataforma.DataSource = objProcesso.Importador.Plataforma;
            ddlPlataforma.DataBind();
            ddlPlataforma.Items.Insert(0, "");
        }

        protected void btnGravarFatura_Click(object sender, EventArgs e)
        {
            Fatura Fatura = new Fatura();

            Fatura.FK_Exportador = txtCodExportador.Text;
            Fatura.Incoterm = ddlInconterm.SelectedValue;
            Fatura.Vinculacao = ddlVincImportadorExportador.SelectedValue;
            Fatura.Condicao = txtLocalCondicao.Text;
            // Fatura.Valor_Total = float.Parse(string.IsNullOrEmpty(txtValorTotal.Text) ? "0" : txtValorTotal.Text);
            Fatura.Valor_Total = Convert.ToDouble(txtValorTotal.Text);
            Fatura.Peso_Total = Convert.ToDouble(txtPesoTotal.Text);
            Fatura.Peso_Total_Acertado = Convert.ToDouble(txtPesoAcertado.Text);
            Fatura.Acrescimos_Reducoes = Convert.ToInt16(cbxAcrescimo.Checked);
            Fatura.Moeda = txtCodMoeda.Text;
            Fatura.DtEmissao = Convert.ToDateTime(txtDt_Emissao.Text);
            Fatura.Peso_Libra = Convert.ToInt16(cbxPesoLibra.Checked);
            Fatura.FK_Plataforma = Convert.ToInt16(ddlPlataforma.SelectedValue);
            Fatura.Processo = processo;
            Fatura.Codigo = txtNumFatura.Text;

            if (string.IsNullOrEmpty(codigo))
            {
                // Inclusão 
                if (Fatura.Incluir(Fatura))
                {
                    codigo = Fatura.Codigo;
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_disable", "$('#tabs').tabs({ disabled: [] });", true);
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_inclusao", "$('#modalSucesso').dialog('open');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_inclusao", "$('#modalErro').dialog('open');", true);
                }
            }
            else
            {
                // Edição
                if (Fatura.Alterar(Fatura))
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