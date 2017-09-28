using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;

namespace MSIndicadores
{
    public partial class frmIndicadorSatisfacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            string[] x = { "1-3", "4-6", ">=7" };
            int i = 0;
            Satisfacao sa = new Satisfacao();
            int[] param = new int[3];            
            sa.selectNotas(ref param);
            Chart1.ChartAreas[0].AxisX.Interval = 1;

            int total = param.Sum();            

            foreach (int v in param)
            {
                Chart1.Series[0].Points.AddXY(x[i], Math.Round(v / (total / 100.00), 2));
                Chart1.Series[i].LegendText = Convert.ToString(x[i]);
                i++;
            }

            //foreach (int v in param)
            //{
            //    Chart1.Series[0].Points.AddXY(x[i], v);                
            //    Chart1.Series[i].LegendText = Convert.ToString(x[i]);
            //    i++;
            //}
            
            Chart1.Series[0].Points[0].Color = Color.FromArgb(140, Color.Red);
            Chart1.Series[0].Points[1].Color = Color.FromArgb(140, Color.Yellow);
            Chart1.Series[0].Points[2].Color = Color.FromArgb(140, Color.Blue); 
            //220; 65; 140; 240
            Chart1.Series[1].Color = Color.FromArgb(200, Color.Yellow);
            Chart1.Series[2].Color = Color.FromArgb(200, Color.Blue);

            HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            myLine.AnchorDataPoint = Chart1.Series[0].Points[0];
            myLine.LineWidth = 2;
            myLine.LineDashStyle = ChartDashStyle.Dash;
            myLine.LineColor = Color.Green;
            myLine.IsInfinitive = true;
            myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
            myLine.AnchorY = 90;
            Chart1.Annotations.Add(myLine);


            RectangleAnnotation myRec = new RectangleAnnotation();
            myRec.AnchorDataPoint = Chart1.Series[0].Points[0];
            //myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;
            myRec.Text = "Meta: 90%";
            myRec.AnchorY = 87;
            myRec.AnchorX = 3.9;
            myRec.Font = new Font("Verdana", 10);
            Chart1.Annotations.Add(myRec);
        }
    }
}