using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;


namespace MSIndicadores
{
    public partial class frmIndicadorFollow : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Follow_UP> lfollow = new List<Follow_UP>();
                lfollow = Follow_UP.getPendenciaSemanal();

                double percentual = 0;

                chtSemanal.ChartAreas[0].AxisX.Interval = 1;
                foreach (Follow_UP f in lfollow)
                {
                    percentual = Math.Round(f.QtdPendencia / (f.Universo / 100.00), 2);
                    chtSemanal.Series[0].Points.AddXY(util.DescricaoEnum(f.Semana) + "(" + f.DataHora.ToString("dd/MM/yy") + ")", percentual);
                    chtSemanal.Series[1].Points.AddXY(util.DescricaoEnum(f.Semana), 1);
                }

                HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
                myLine.AnchorDataPoint = chtSemanal.Series[1].Points[1];
                myLine.LineWidth = 3;
                myLine.LineDashStyle = ChartDashStyle.Dash;
                myLine.LineColor = Color.Green;
                myLine.IsInfinitive = true;
                myLine.AnchorY = 1;
                myLine.ClipToChartArea = chtSemanal.ChartAreas[0].Name;                
                chtSemanal.Annotations.Add(myLine);

                RectangleAnnotation myRec = new RectangleAnnotation();
                myRec.AnchorDataPoint = chtSemanal.Series[1].Points[1];                
                myRec.Text = "Meta: Menor que 1% ";
                myRec.AnchorY = 0.97;                
                myRec.X = 5.1;
                myRec.Font = new Font("Verdana", 11);
                chtSemanal.Annotations.Add(myRec);
            }
        }
    }
}