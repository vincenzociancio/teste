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
    public partial class frmIndicadorConsumoEnergia : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Consumo_Energia> list = new List<Consumo_Energia>();

                list = Consumo_Energia.getConsumo();
                Chart1.ChartAreas[0].AxisX.Interval = 1;
                Chart1.Series[0].LegendText = String.Format("Ano: {0}", list[0].Ano);                
                foreach (Consumo_Energia con in list)
                {
                    Chart1.Series[0].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                    Chart1.Series[1].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                }

                HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
                myLine.AnchorDataPoint = Chart1.Series[1].Points[1];
                myLine.LineWidth = 3;
                myLine.LineDashStyle = ChartDashStyle.Dash;
                myLine.LineColor = Color.Green;
                myLine.IsInfinitive = true;
                myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
                myLine.AnchorY = 180;
                Chart1.Annotations.Add(myLine);

                RectangleAnnotation myRec = new RectangleAnnotation();
                myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
                //myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;
                myRec.Text = "Meta: Menor 180 kwh";
                myRec.AnchorY = 174;
                //myRec.AnchorX = 0.8;
                myRec.X = list.Count+0.15;
                myRec.Font = new Font("Verdana", 11);
                Chart1.Annotations.Add(myRec);
          
            }
        }
    }
}