using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Resources;
using System.Threading;
using System.Globalization;


namespace MSIndicadores
{
    public partial class frmIndicadorFollow : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorFollow).Assembly);

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
                chtSemanal.Titles[0].Text = resourceManager.GetString("pendenciasDiarias");
                chtSemanal.ChartAreas[0].Axes[0].Title = resourceManager.GetString("diasSemana");
                chtSemanal.ChartAreas[0].Axes[1].Title = resourceManager.GetString("percentual");
            }

            List<Follow_UP> lfollow = new List<Follow_UP>();
            lfollow = Follow_UP.getPendenciaSemanal();

            double percentual = 0;

            chtSemanal.ChartAreas[0].AxisX.Interval = 1;
            foreach (Follow_UP f in lfollow)
            {
                percentual = Math.Round(f.QtdPendencia / (f.Universo / 100.00), 2);
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    chtSemanal.Series[0].Points.AddXY(resourceManager.GetString(f.Semana.ToString()) + "    (" + f.DataHora.ToString("dd/MM/yy") + ")", percentual);
                    chtSemanal.Series[1].Points.AddXY(resourceManager.GetString(f.Semana.ToString()), 1);
                }
                else
                {
                    chtSemanal.Series[0].Points.AddXY(util.DescricaoEnum(f.Semana) + "(" + f.DataHora.ToString("dd/MM/yy") + ")", percentual);
                    chtSemanal.Series[1].Points.AddXY(util.DescricaoEnum(f.Semana), 1);
                }
            }
        }
    }
}