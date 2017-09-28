using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Threading;
using System.Globalization;
using System.Resources;

namespace MSIndicadores
{
    public partial class frmIndicadorHoraExtra : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorHoraExtra).Assembly);

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

            List<HoraExtra> listHE = new List<HoraExtra>();
            listHE = HoraExtra.getHoraExtra();

            Chart1.ChartAreas[0].AxisX.Interval = 1;
            Chart1.Series[0].LegendText = DateTime.Now.Year.ToString();
            Chart1.Series[1].LegendText = (DateTime.Now.Year - 1).ToString();
            Chart1.Series[2].LegendText = (DateTime.Now.Year - 2).ToString();

            foreach (HoraExtra hx in listHE)
            {
                if (DateTime.Now.Year == hx.Ano)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        Chart1.Series[0].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), hx.Horas);
                        //Chart1.Series[1].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), 2000);
                    }
                    else
                    {
                        Chart1.Series[0].Points.AddXY(hx.Mes.ToString(), hx.Horas);
                        //Chart1.Series[1].Points.AddXY(hx.Mes.ToString(), 2000);
                    }
                }
                else
                    if (DateTime.Now.Year - 1 == hx.Ano)
                    {
                        if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                        {
                            Chart1.Series[1].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), hx.Horas);
                            //Chart1.Series[1].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), 2000);
                        }
                        else
                        {
                            Chart1.Series[1].Points.AddXY(hx.Mes.ToString(), hx.Horas);
                            //Chart1.Series[1].Points.AddXY(hx.Mes.ToString(), 2000);
                        }
                    }
                    else
                        if (DateTime.Now.Year - 2 == hx.Ano)
                        {
                            if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                            {
                                Chart1.Series[2].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), hx.Horas);
                                //Chart1.Series[1].Points.AddXY(resourceManager.GetString(hx.Mes.ToString()), 2000);
                            }
                            else
                            {
                                Chart1.Series[2].Points.AddXY(hx.Mes.ToString(), hx.Horas);
                                //Chart1.Series[1].Points.AddXY(hx.Mes.ToString(), 2000);
                            }
                        }

            }
            //HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            //myLine.AnchorDataPoint = Chart1.Series[0].Points[0];
            //myLine.LineWidth = 3;
            //myLine.LineDashStyle = ChartDashStyle.Dash;
            //myLine.LineColor = Color.Green;
            //myLine.IsInfinitive = true;
            //myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
            //Chart1.Annotations.Add(myLine);

            ////RectangleAnnotation myRec = new RectangleAnnotation();
            ////myRec.AnchorDataPoint = Chart1.Series[1].Points[1];
            //if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            //{
            //    myRec.Text = resourceManager.GetString("objetivo");
            //    Chart1.Titles[0].Text = resourceManager.GetString("horaExtra");
            //    Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
            //    Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("quantidadeHoraMes");
            //}
            //else
            //{
            //    myRec.Text = "Objetivo: Baixo de 2000 horas";
            //}
            //myRec.AnchorY = 1930;
            //myRec.X = listHE.Count + 0.1;

            //myRec.Font = new Font("Verdana", 9);
            //Chart1.Annotations.Add(myRec);

        }
    }
}