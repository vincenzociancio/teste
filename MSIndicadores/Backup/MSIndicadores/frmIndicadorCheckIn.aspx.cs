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
    public partial class frmIndicadorCheckIn : System.Web.UI.Page
    {
        string[] Mes = { "", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkin c = new checkin();
                DataSet dsFeitos = new DataSet();
                DataSet dsUniverso = new DataSet();

                dsFeitos = c.selectFeitos();
                dsUniverso = c.selectUniverso();      

                Chart1.ChartAreas[0].AxisX.Interval = 1;

                foreach (DataRow x in dsFeitos.Tables[0].Rows)
                {
                    double Universo = 0;
                    double Feitos = 0;
                    double percentual = 0;
                    DataRow[] dr;                    
                    try
                    {
                        dr = dsUniverso.Tables[0].Select("MES=" + Convert.ToInt16(x[0]));
                        Universo = Convert.ToInt16(dr[0][2]);
                    }
                    catch
                    {
                        return;
                    }
                    Feitos = Convert.ToInt16(x[1]);
                    
                    percentual = Math.Round(Feitos/(Universo / 100.00),2);                    
                    // Feitos
                    Chart1.Series["Series1"].Points.AddXY(Mes[Convert.ToInt16(x[0])], percentual);                    
                    Chart1.Series["Series1"].LegendText = "Feitos";

                    // Faltantes
                    //Chart1.Series["Series2"].Points.AddXY(Mes[Convert.ToInt16(x[0])], 100.00-percentual);
                    //Chart1.Series["Series2"].LegendText = "Faltantes";

                    Chart1.Series[1].Points.AddXY(Mes[Convert.ToInt16(x[0])], 40.0);
                }

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
                myRec.Text = "Meta: 40% feitos";
                myRec.AnchorY = 38.5;
                //myRec.AnchorX = 0.8;
                myRec.X = DateTime.Now.Month + 0.5;
                myRec.Font = new Font("Verdana", 11);
                Chart1.Annotations.Add(myRec);
     
            }
        }
    }
}