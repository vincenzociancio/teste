using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MS2000Web.Relatorios
{
    public partial class rptProcuradores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //BindReportViewer();
        }

        private void BindReportViewer()
        {
            //ReportViewer1.Visible = true;

            //Invoke Stored procedure With Input parameter to it.
            //DataSet dsReport = objSP.GetTable(storedProcedure,txtParameter.Text));
            //Hardcoded Values.
            //IList >Customer< customerList = new List>Customer<();
            //customerList.Add(new Customer(1,"Santosh Poojari"));
            //customerList.Add(new Customer(2, "Santosh Poojari1"));
            //customerList.Add(new Customer(3, "Santosh Poojari2"));


            //ReportParameter[] param = new ReportParameter[1];
            //param[0] = new ReportParameter("Report_Parameter_0",txtParameter.Text);
            //ReportViewer1.LocalReport.SetParameters(param);

            //MSBiblioteca.BLL.Procurador p = new MSBiblioteca.BLL.Procurador();

            //ReportDataSource rds = new ReportDataSource("dtSetProcuradores", p.BuscarTodos());
            //ReportViewer1.LocalReport.DataSources.Clear();
            //ReportViewer1.LocalReport.DataSources.Add(rds);
            //ReportViewer1.LocalReport.Refresh();
            //ReportViewer1.ShowReportBody = true;
        }
    }
}