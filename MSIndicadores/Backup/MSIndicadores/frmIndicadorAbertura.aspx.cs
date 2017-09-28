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
    public partial class frmIndicadorAbertura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
               
                abertura a = new abertura();
                DataSet dsAtual = new DataSet();
                DataSet dsAnterior = new DataSet();

                dsAtual = a.selectAnoAtual();
                dsAnterior = a.selectAnoAnterior();

                Chart1.ChartAreas[0].AxisX.Interval = 1;

                foreach (DataRow x in dsAnterior.Tables[0].Rows)
                {                    
                    Chart1.Series["Series1"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series1"].LegendText = Convert.ToString(x[0]);
                }
                                
                foreach (DataRow x in dsAtual.Tables[0].Rows)
                {
                    Chart1.Series["Series2"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series2"].LegendText = Convert.ToString(x[0]);
                }

                HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
                myLine.AnchorDataPoint = Chart1.Series[1].Points[0];
                myLine.LineWidth = 2;
                myLine.LineDashStyle = ChartDashStyle.Dash;
                myLine.LineColor = Color.Green;
                myLine.IsInfinitive = true;
                myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
                myLine.AnchorY = 1500;
                Chart1.Annotations.Add(myLine);

                RectangleAnnotation myRec = new RectangleAnnotation();
                myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
                //myRec.ClipToChartArea = Chart1.ChartAreas[0].Name;                
                myRec.Text = "Meta: 1500 abertos";
                myRec.AnchorY = 1450;                
                //myRec.AnchorX = 13;
                myRec.X = 12.5;
                myRec.Font = new Font("Verdana", 11);
                Chart1.Annotations.Add(myRec);
                
            }

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
 
    }
}