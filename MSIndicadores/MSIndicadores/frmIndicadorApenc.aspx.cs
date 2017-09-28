using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Threading;
using System.Resources;
using System.Globalization;

namespace MSIndicadores
{
    public partial class frmIndicadorApenc : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorApenc).Assembly);

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
                Chart1.Titles[0].Text = resourceManager.GetString("APENC");
                Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("percentual");
                Chart1.ChartAreas[0].AxisX.Title = resourceManager.GetString("meses") + "(" + DateTime.Now.Year.ToString() + ")";

                Chart1.ChartAreas[1].Axes[0].Title = resourceManager.GetString("percentual");
                Chart1.ChartAreas[1].AxisX.Title = resourceManager.GetString("meses") + "(" + (DateTime.Now.Year - 1).ToString() + ")";
                
                Chart1.Series[0].LegendText = resourceManager.GetString("acertos");
                Chart1.Series[1].LegendText = resourceManager.GetString("erros");
                Chart1.Series[2].LegendText = resourceManager.GetString("acertos");
                Chart1.Series[3].LegendText = resourceManager.GetString("erros");
            }
            else
            {
                Chart1.ChartAreas[0].AxisX.Title = "Meses(" + DateTime.Now.Year.ToString() + ")";
                Chart1.ChartAreas[1].AxisX.Title = "Meses(" + (DateTime.Now.Year - 1).ToString() + ")";
                Chart1.Series[0].LegendText = String.Format("% de Acertos");
                Chart1.Series[1].LegendText = String.Format("% de Erros");
                Chart1.Series[2].LegendText = String.Format("% de Acertos");
                Chart1.Series[3].LegendText = String.Format("% de Erros");

            }

            List<ApenC> lApenC = new List<ApenC>();
            lApenC = ApenC.getApenC();
            Chart1.ChartAreas[0].AxisX.Interval = 1;
            Chart1.ChartAreas[1].AxisX.Interval = 1;
            double percentual = 0;



            foreach (ApenC ap in lApenC)
            {
                percentual = Math.Round(ap.OK / (ap.Universo / 100.00), 2);

                if (DateTime.Now.Year == ap.Ano)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        Chart1.Series[0].Points.AddXY(resourceManager.GetString(ap.Mes.ToString()), percentual);
                        Chart1.Series[1].Points.AddXY(resourceManager.GetString(ap.Mes.ToString()), Math.Round((100.00 - percentual), 2));
                    }
                    else
                    {
                        Chart1.Series[0].Points.AddXY(ap.Mes.ToString(), percentual);
                        Chart1.Series[1].Points.AddXY(ap.Mes.ToString(), Math.Round((100.00 - percentual), 2));
                    }
                }
                else if (DateTime.Now.Year - 1 == ap.Ano)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        Chart1.Series[2].Points.AddXY(resourceManager.GetString(ap.Mes.ToString()), percentual);
                        Chart1.Series[3].Points.AddXY(resourceManager.GetString(ap.Mes.ToString()), Math.Round((100.00 - percentual), 2));
                    }
                    else
                    {
                        Chart1.Series[2].Points.AddXY(ap.Mes.ToString(), percentual);
                        Chart1.Series[3].Points.AddXY(ap.Mes.ToString(), Math.Round((100.00 - percentual), 2));
                    }
                }
            }

            VerticalLineAnnotation myLine = new VerticalLineAnnotation();
            myLine.AnchorDataPoint = Chart1.Series[1].Points[1];
            myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
            myLine.LineWidth = 3;
            myLine.LineDashStyle = ChartDashStyle.Dash;
            myLine.LineColor = Color.Green;
            myLine.IsInfinitive = true;
            myLine.AnchorX = 90;
            Chart1.Annotations.Add(myLine);



            VerticalLineAnnotation myLine2 = new VerticalLineAnnotation();
            myLine2.AnchorDataPoint = Chart1.Series[3].Points[1];
            myLine2.ClipToChartArea = Chart1.ChartAreas[1].Name;
            myLine2.LineWidth = 3;
            myLine2.LineDashStyle = ChartDashStyle.Dash;
            myLine2.LineColor = Color.Red;
            myLine2.IsInfinitive = true;
            myLine2.AnchorX = 90;
            Chart1.Annotations.Add(myLine2);


            RectangleAnnotation myRec = new RectangleAnnotation();
            myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
            myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;
            if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            {
                myRec.Text = resourceManager.GetString("metaAcertos");
            }
            else
            {
                myRec.Text = "Parâmetro: 90% de acertos";
            }
            myRec.AnchorY = 0.2;
            myRec.AnchorX = 77;
            myRec.Font = new Font("Verdana", 10);
            Chart1.Annotations.Add(myRec);

            RectangleAnnotation myRec2 = new RectangleAnnotation();
            myRec2.AnchorDataPoint = Chart1.Series[3].Points[1];
            myRec2.ClipToChartArea = Chart1.ChartAreas[1].Name;
            if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            {
                myRec.Text = resourceManager.GetString("metaAcertos");
            }
            else
            {
                myRec.Text = "Parâmetro: 90% de acertos";
            }
            myRec2.AnchorY = 0.2;
            myRec2.AnchorX = 77;
            myRec2.Font = new Font("Verdana", 10);
            Chart1.Annotations.Add(myRec2);
        }
    }
}