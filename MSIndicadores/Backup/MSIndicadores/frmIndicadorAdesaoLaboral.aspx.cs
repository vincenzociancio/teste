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
    public partial class frmIndicadorAdesaoLaboral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<AdesaoLaboral> lt = new List<AdesaoLaboral>();
                lt = AdesaoLaboral.getPercentual();

                chtLaboral.ChartAreas[0].AxisX.Interval = 0;


                foreach (AdesaoLaboral a in lt)
                {                    
                    chtLaboral.Series[0].Points.AddXY(a.Mes.ToString(), Math.Round(a.Percentual, 2));
                   // chtLaboral.Series[1].Points.AddXY(a.Mes.ToString(), Math.Round(a.Percentual, 2));
                    chtLaboral.Series[1].Points.AddXY(a.Mes.ToString(), Math.Round(50.0, 2)); 
                    
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
                //myRec.ClipToChartArea = chtLaboral.ChartAreas[0].Name;
                myRec.Text = "Meta: Maior que 50%";
                myRec.AnchorY = 48;
                //myRec.AnchorX = 50;
                myRec.X = lt.Count+0.19;
                myRec.Font = new Font("Verdana", 11);
                chtLaboral.Annotations.Add(myRec);         
              
            }
        }
    }
}