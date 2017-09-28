using System.IO;
using System.Web;
using Microsoft.Reporting.WebForms;
using MSBiblioteca.MSUtil;
using System;
using System.Collections.Generic;

namespace MS2000Web.Relatorios
{
    public partial class rptKPIEnsco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lista = (List<string>)Session["sObsLista"];


                var obsGrafico01 = lista[0];
                var obsGrafico02 = lista[1];
                var obsGrafico03 = lista[2];
                var obsGrafico04 = lista[3];
                var obsGrafico05 = lista[4];
                var obsGrafico06 = lista[5];
                var obsGrafico07 = lista[6];
                var obsGrafico08 = lista[7];
                var obsGrafico09 = lista[8];
                var obsGrafico10 = lista[9];
                var obsGrafico11 = lista[10];
                var obsGrafico12 = lista[11];
                var obsGrafico13 = lista[12];
                var obsGrafico14 = lista[13];

             
                string mes = Enum.GetName(typeof(Meses), Convert.ToInt16(Session["sMesAno"].ToString().Substring(0, 2)));
                string mesAno = ("KPI - " + mes + " - " + Session["sMesAno"].ToString().Substring(3, 4));
                var rp = new List<ReportParameter>
                    {
                        new ReportParameter("pDescricaoCapa",mesAno , true),
                        new ReportParameter("pObsGrafico01", obsGrafico01, true),
                        new ReportParameter("pObsGrafico02", obsGrafico02, true),
                        new ReportParameter("pObsGrafico03", obsGrafico03, true),
                        new ReportParameter("pObsGrafico04", obsGrafico04, true),
                        new ReportParameter("pObsGrafico05", obsGrafico05, true),
                        new ReportParameter("pObsGrafico06", obsGrafico06, true),
                        new ReportParameter("pObsGrafico07", obsGrafico07, true),
                        new ReportParameter("pObsGrafico08", obsGrafico08, true),
                        new ReportParameter("pObsGrafico09", obsGrafico09, true),
                        new ReportParameter("pObsGrafico10", obsGrafico10, true),
                        new ReportParameter("pObsGrafico11", obsGrafico11, true),
                        new ReportParameter("pObsGrafico12", obsGrafico12, true),
                        new ReportParameter("pObsGrafico13", obsGrafico13, true),
                        new ReportParameter("pObsGrafico14", obsGrafico14, true)
                    };
            
                ReportViewer2.LocalReport.SetParameters(rp);
                ReportViewer2.DataBind();
                ReportViewer2.LocalReport.Refresh();
                ReportViewer2.ShowReportBody = true;

            }
        }

    }
}