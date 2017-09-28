using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace MSIndicadores
{
    public partial class frmIndicadorHoraExtra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<HoraExtra> listHE = new List<HoraExtra>();
                listHE = HoraExtra.getHoraExtra();

                Chart1.ChartAreas[0].AxisX.Interval = 1;
                Chart1.Series[0].LegendText = String.Format("Ano: {0}", Convert.ToString(listHE[0].Ano));
                                
                foreach (HoraExtra hx in listHE)
                {                    
                    Chart1.Series[0].Points.AddXY(hx.Mes.ToString(), hx.Horas);
                    //invisible
                    Chart1.Series[1].Points.AddXY(hx.Mes.ToString(), 2000);
                
                }

                //Chart1.Series[1].LegendText = "Meta: < 2000 Hs";

                HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
                myLine.AnchorDataPoint = Chart1.Series[1].Points[1];
                myLine.LineWidth = 3;
                myLine.LineDashStyle = ChartDashStyle.Dash;
                myLine.LineColor = Color.Green;
                myLine.IsInfinitive = true;
                myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
                Chart1.Annotations.Add(myLine);

                RectangleAnnotation myRec = new RectangleAnnotation();
                myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
                //myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;
                myRec.Text = "Meta: 2000 horas";
                myRec.AnchorY = 1930;
                //myRec.AnchorX = 0.8;
                myRec.X = listHE.Count+0.2;
                myRec.Font = new Font("Verdana", 11);
                Chart1.Annotations.Add(myRec);
            }
        }
    }
}