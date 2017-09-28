using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Resources;
using System.Globalization;
using System.Threading;

namespace MSIndicadores
{
    public partial class frmIndicadorAdesaoLaboral : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorAdesaoLaboral).Assembly);

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
                chtLaboral.Titles[0].Text = resourceManager.GetString("adesaoPrograma");
                chtLaboral.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                chtLaboral.ChartAreas[0].Axes[1].Title = resourceManager.GetString("percentual");
            }

            List<AdesaoLaboral> lt = new List<AdesaoLaboral>();
            lt = AdesaoLaboral.getPercentual();

            chtLaboral.ChartAreas[0].AxisX.Interval = 0;


            foreach (AdesaoLaboral a in lt)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    chtLaboral.Series[0].Points.AddXY(resourceManager.GetString(a.Mes.ToString()), Math.Round(a.Percentual, 2));
                    chtLaboral.Series[1].Points.AddXY(resourceManager.GetString(a.Mes.ToString()), Math.Round(50.0, 2));
                }
                else
                {
                    chtLaboral.Series[0].Points.AddXY(a.Mes.ToString(), Math.Round(a.Percentual, 2));
                    chtLaboral.Series[1].Points.AddXY(a.Mes.ToString(), Math.Round(50.0, 2));
                }

            }

            HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            myLine.AnchorDataPoint = chtLaboral.Series[1].Points[1];
            myLine.LineWidth = 3;
            myLine.LineDashStyle = ChartDashStyle.Dash;
            myLine.LineColor = Color.Green;
            myLine.IsInfinitive = true;
            myLine.ClipToChartArea = chtLaboral.ChartAreas[0].Name;
            chtLaboral.Annotations.Add(myLine);

            RectangleAnnotation myRec = new RectangleAnnotation();
            myRec.AnchorDataPoint = chtLaboral.Series[1].Points[1];
            if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            {
                myRec.Text = resourceManager.GetString("objetivoMaior");
            }
            else
            {
                myRec.Text = "Objetivo: Maior que 50%";
            }
            myRec.AnchorY = 48;
            myRec.X = lt.Count + 0.19;
            myRec.Font = new Font("Verdana", 9);
            chtLaboral.Annotations.Add(myRec);         
              

        }
    }
}