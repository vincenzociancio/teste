using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Resources;
using System.Threading;
using System.Globalization;

namespace MSIndicadores
{
    public partial class frmIndicadorCheckIn : System.Web.UI.Page
    {
        string[] Mes = { "", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorCheckIn).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CriaGrafico();
            }
        }

        private void CriaGrafico()
        {
            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("percentual");
                Chart1.Titles[0].Text = "Check in";
            }

            checkin c = new checkin();
            DataSet dsFeitos = new DataSet();
            DataSet dsUniverso = new DataSet();

            dsFeitos = c.selectFeitos();
            dsUniverso = c.selectUniverso();

            Chart1.ChartAreas[0].AxisX.Interval = 1;

            foreach (DataRow x in dsFeitos.Tables[0].Rows)
            {
                double Universo = 0;
                double Feitos = 0;
                double percentual = 0;
                DataRow[] dr;
                try
                {
                    dr = dsUniverso.Tables[0].Select("MES=" + Convert.ToInt16(x[0]));
                    Universo = Convert.ToInt16(dr[0][2]);
                }
                catch
                {
                    return;
                }
                Feitos = Convert.ToInt16(x[1]);

                percentual = Math.Round(Feitos / (Universo / 100.00), 2);
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    Chart1.Series["Series1"].Points.AddXY(resourceManager.GetString(Mes[Convert.ToInt16(x[0])]), percentual);
                    Chart1.Series["Series1"].LegendText = "Done";
                    Chart1.Series[1].Points.AddXY(resourceManager.GetString(Mes[Convert.ToInt16(x[0])]), 40.0);
                }
                else
                {
                    Chart1.Series["Series1"].Points.AddXY(Mes[Convert.ToInt16(x[0])], percentual);
                    Chart1.Series["Series1"].LegendText = "Feitos";
                    Chart1.Series[1].Points.AddXY(Mes[Convert.ToInt16(x[0])], 40.0);
                }
            }
        }
    }
}