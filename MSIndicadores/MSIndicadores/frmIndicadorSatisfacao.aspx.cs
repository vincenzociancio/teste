using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;
using System.Resources;
using System.Threading;
using System.Globalization;

namespace MSIndicadores
{
    public partial class frmIndicadorSatisfacao : System.Web.UI.Page
    {

        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorSatisfacao).Assembly);
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregaGrafico();
            #region AreaComentada
            //string[] x = { "1-3", "4-6", ">=7" };

            //foreach (int v in param)
            //{
            //    Chart1.Series[0].Points.AddXY(x[i], v);                
            //    Chart1.Series[i].LegendText = Convert.ToString(x[i]);
            //    i++;
            //}


            //  Chart1.Series[0].Points[2].Color = Color.FromArgb(140, Color.Green); 
            //220; 65; 140; 240

            //HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            //myLine.AnchorDataPoint = Chart1.Series[0].Points[0];
            //myLine.LineWidth = 2;
            //myLine.LineDashStyle = ChartDashStyle.Dash;
            //myLine.LineColor = Color.Green;
            //myLine.IsInfinitive = true;
            //myLine.ClipToChartArea = Chart1.ChartAreas[0].Name;
            //myLine.AnchorY = 90;
            //Chart1.Annotations.Add(myLine);

            #endregion AreaComentada
        }



        private void CarregaGrafico()
        {
            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
            }

            int i = 0;
            Satisfacao sa = new Satisfacao();
            var dados = sa.selectNotas();
            decimal naorespondeu = sa.getNaoRespondeu();
            Chart1.ChartAreas[0].AxisX.Interval = 1;           

            foreach (Satisfacao v in dados)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    Chart1.Series[0].Points.AddXY(resourceManager.GetString(Enum.GetName(typeof(Nota), v.Nota)), v.Percentual);
                    Chart1.Series[v.Nota].LegendText = Convert.ToString(resourceManager.GetString(Enum.GetName(typeof(Nota), v.Nota)));
                    Chart1.Titles[0].Text = resourceManager.GetString("pesquisaSatisfação");
                    Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("notas");
                    Chart1.Annotations.Clear();
                }
                else
                {
                    Chart1.Series[0].Points.AddXY(Enum.GetName(typeof(Nota), v.Nota), v.Percentual);
                    Chart1.Series[i].LegendText = Convert.ToString(Enum.GetName(typeof(Nota), v.Nota));
                }
                i++;
            }

            Chart1.Series[0].Points[0].Color = Color.FromArgb(140, Color.Red);
            Chart1.Series[0].Points[1].Color = Color.FromArgb(140, Color.Yellow);
            Chart1.Series[0].Points[2].Color = Color.FromArgb(140, Color.Blue);
            Chart1.Series[1].Color = Color.FromArgb(200, Color.Yellow);
            Chart1.Series[2].Color = Color.FromArgb(200, Color.Blue);

            Border3DAnnotation myRec = new Border3DAnnotation();
            var excelentemaisbom = dados.Where(c => c.Nota != 1).Sum(s => s.Percentual);
            var ruim = dados.Where(c => c.Nota == 1).Sum(s => s.Percentual);
            myRec.Alignment = ContentAlignment.TopLeft;
            myRec.X = 75;
            myRec.Y = 40;
            myRec.Width = 25;
            myRec.Height = 30;
            myRec.Text = string.Format("Resultado:\t\n\t\nExcelente + Bom: {0}%\t\nRuim: {1}%\t\nNão respondeu: {2}%", excelentemaisbom, ruim, naorespondeu);
            myRec.Font = new Font("Verdana", 11);
            Chart1.Annotations.Add(myRec);
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}