using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Resources;
using System.Threading;
using System.Globalization;

namespace MSIndicadores
{
    public partial class frmIndicadorConsumoEnergia : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorConsumoEnergia).Assembly);

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
            }

            List<Consumo_Energia> list = new List<Consumo_Energia>();
            list = Consumo_Energia.getConsumo();

            if (list.Count > 0)
            {
                Chart1.ChartAreas[0].AxisX.Interval = 1;
                Chart1.Series[0].LegendText = DateTime.Now.Year.ToString();
                Chart1.Series[1].LegendText = (DateTime.Now.Year - 1).ToString();
                Chart1.Series[2].LegendText = (DateTime.Now.Year - 2).ToString();
                foreach (Consumo_Energia con in list)
                {
                    if (DateTime.Now.Year == con.Ano)
                    {
                        if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                        {
                            Chart1.Series[0].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                            //Chart1.Series[1].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                        }
                        else
                        {
                            Chart1.Series[0].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                            //Chart1.Series[1].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                        }
                    }
                    else
                        if (DateTime.Now.Year - 1 == con.Ano)
                        {
                            if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                            {
                                Chart1.Series[1].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                                //Chart1.Series[1].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                            }
                            else
                            {
                                Chart1.Series[1].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                                //Chart1.Series[1].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                            }
                        }
                        else
                            if (DateTime.Now.Year - 2 == con.Ano)
                            {
                                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                                {
                                    Chart1.Series[2].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                                    //Chart1.Series[1].Points.AddXY(resourceManager.GetString(con.Mes.ToString()), con.Efetivo);
                                }
                                else
                                {
                                    Chart1.Series[2].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                                    //Chart1.Series[1].Points.AddXY(con.Mes.ToString(), con.Efetivo);
                                }
                            }
                }
            }

            //HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            //myLine.AnchorDataPoint = Chart1.Series[1].Points[1];
            //myLine.LineWidth = 3;
            //myLine.LineDashStyle = ChartDashStyle.Dash;
            //myLine.LineColor = Color.Green;
            //myLine.IsInfinitive = true;
            //myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
            //myLine.AnchorY = 180;
            //Chart1.Annotations.Add(myLine);

            //RectangleAnnotation myRec = new RectangleAnnotation();
            //myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
            //if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            //{
            //    myRec.Text = resourceManager.GetString("metaMenor");
            //    Chart1.Titles[0].Text = resourceManager.GetString("consumoEspecifico");
            //    Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
            //    Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("consumoEnergia");
            //}
            //else
            //{
            //    myRec.Text = "Meta: Menor 180 kwh";
            //}
            //myRec.AnchorY = 174;
            //myRec.X = list.Count + 0.15;
            //myRec.Font = new Font("Verdana", 9);
            //Chart1.Annotations.Add(myRec);
        }
    }
}