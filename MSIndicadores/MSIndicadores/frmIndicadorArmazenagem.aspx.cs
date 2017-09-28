using System;
using System.Collections.Generic;
using System.Globalization;
using System.Resources;
using System.Threading;

namespace MSIndicadores
{
    public partial class frmIndicadorArmazenagem : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorArmazenagem).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                Chart1.Titles[0].Text = resourceManager.GetString("armazenagem");
                Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("percentual");                
            }
            else
            {
                Chart1.Series[0].LegendText = "Cons. Marítimo: 1ª Armazenagem";
                Chart1.Series[1].LegendText = "Adm. Marítimo: 2ª Armazenagem";
                Chart1.Series[2].LegendText = "Cons. Aéreo: 2ª Armazenagem";
                Chart1.Series[3].LegendText = "Adm. Aéreo: 3ª Armazenagem";
            }

            Chart1.ChartAreas[0].AxisX.Interval = 1;

            List<Armazenagem> dados = new List<Armazenagem>();
            dados = Armazenagem.SelectAllProcessos();

            if (dados.Count > 0)
            {                
                foreach (Armazenagem d in dados)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        Chart1.Series[0].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Consumo_Maritimo_Primeira_Armazenagem);
                        Chart1.Series[1].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Admissao_Maritimo_Segunda_Armazenagem);
                        Chart1.Series[2].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Consumo_Aereo_Segunda_Armazenagem);
                        Chart1.Series[3].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Admissao_Aereo_Terceira_Armazenagem);
                    }
                    else
                    {
                        Chart1.Series[0].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Consumo_Maritimo_Primeira_Armazenagem);
                        Chart1.Series[1].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Admissao_Maritimo_Segunda_Armazenagem);
                        Chart1.Series[2].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Consumo_Aereo_Segunda_Armazenagem);
                        Chart1.Series[3].Points.AddXY(Enum.GetName(typeof(Meses), d.Mes), d.Admissao_Aereo_Terceira_Armazenagem);
                    }
                }
            }

            //HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            //myLine.AnchorDataPoint = chtArmazenagem.Series[0].Points[1];
            //myLine.LineWidth = 3;
            //myLine.LineDashStyle = ChartDashStyle.Dash;
            //myLine.LineColor = Color.Green;
            //myLine.IsInfinitive = true;
            //myLine.AnchorY = 40;
            //myLine.ClipToChartArea = chtArmazenagem.ChartAreas[0].Name;
            //chtArmazenagem.Annotations.Add(myLine);

            //RectangleAnnotation myRec = new RectangleAnnotation();
            //myRec.AnchorDataPoint = chtArmazenagem.Series[1].Points[1];
            //myRec.Text = "Meta: 40%";
            //myRec.AnchorY = 38;
            //myRec.X = DateTime.Now.Month + 0.5;
            //myRec.Font = new Font("Verdana", 11);
            //chtArmazenagem.Annotations.Add(myRec);

        }
    }
}