using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace MSIndicadores
{
    public partial class frmIndicadorApenc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<ApenC> lApenC = new List<ApenC>();    
                lApenC = ApenC.getApenC();
                Chart1.ChartAreas[0].AxisX.Interval = 1;
                double percentual = 0;
                Chart1.Series[0].LegendText = String.Format("% de Acertos");
                Chart1.Series[1].LegendText = String.Format("% de Erros");

                foreach (ApenC ap in lApenC)
                {
                    percentual = Math.Round(ap.OK/(ap.Universo / 100.00),2);
                    Chart1.Series[0].Points.AddXY(ap.Mes.ToString(), percentual);
                    Chart1.Series[1].Points.AddXY(ap.Mes.ToString(), Math.Round((100.00-percentual),2));
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


                RectangleAnnotation myRec = new RectangleAnnotation();
                myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
                myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;
                myRec.Text = "Meta: 90% de acertos";
                myRec.AnchorY = 0.2;
                myRec.AnchorX = 86;
                myRec.Font = new Font("Verdana", 10);
                Chart1.Annotations.Add(myRec);
            }
        }
    }
}