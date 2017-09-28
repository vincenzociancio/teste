using Microsoft.Reporting.WebForms;
using MSBiblioteca.BLL;
using System;
using System.Collections.Generic;
using System.Web;

namespace MS2000Web.Relatorios
{
    public partial class rptAMB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                string Endereco = "";
                Processo proc = new Processo(Session["ssProcesso"].ToString());               
                List<ReportParameter> rp = new List<ReportParameter>();
                Endereco = proc.Importador.Endereco + " " +
                    proc.Importador.Numero + " - " +
                    proc.Importador.Complemento + " - " +
                    proc.Importador.Bairro + " - " +
                    proc.Importador.Cep + " - " +
                    proc.Importador.Cidade + " - " +
                    proc.Importador.Uf;
                rp.Add(new ReportParameter("pNomeImportador", proc.Importador.RazaoSocial, true));
                rp.Add(new ReportParameter("pCNPJ_Importador", proc.Importador.CnpjCpfCompleto, true));
                rp.Add(new ReportParameter("pEnd_Importador", Endereco, true));
                rp.Add(new ReportParameter("pProcessoRCR", Session["ssProcessoRCR"].ToString(), true));
                rp.Add(new ReportParameter("pIdentificacao", Session["ssIdentificacao"].ToString(), true));

                switch (Session["ssVia"].ToString())
                {
                    case "T":
                        rp.Add(new ReportParameter("pTerrestre", "X", true));
                        break;
                    case "M":
                        rp.Add(new ReportParameter("pMaritima", "X", true));
                        break;
                    case "A":
                        rp.Add(new ReportParameter("pAerea", "X", true));
                        break;
                    default:
                        rp.Add(new ReportParameter("pOutros", "X", true));
                        break;
                }
                ReportViewer1.LocalReport.SetParameters(rp);
                ReportViewer1.DataBind();
                ReportViewer1.LocalReport.Refresh();
                ReportViewer1.ShowReportBody = true;
            }
        }
        
    }
}