using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSIndicadores.Model;
using System.Threading;
using System.Globalization;
using System.Resources;

namespace MSIndicadores
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(WebForm2).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {


            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                chtArmazenagem.Titles[0].Text = resourceManager.GetString("acidentes");
                chtArmazenagem.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                chtArmazenagem.ChartAreas[0].Axes[1].Title = resourceManager.GetString("percentual");
                //chtArmazenagem.Series[0].LegendText = resourceManager.GetString("acidentes");

                chtArmazenagem.Series[0].LegendText = DateTime.Now.Year.ToString();
                chtArmazenagem.Series[1].LegendText = (DateTime.Now.Year - 1).ToString();
                chtArmazenagem.Series[2].LegendText = (DateTime.Now.Year - 2).ToString();
                chtArmazenagem.Annotations.Clear();
            }
            else
            {
                chtArmazenagem.Series[0].LegendText = DateTime.Now.Year.ToString();
                chtArmazenagem.Series[1].LegendText = (DateTime.Now.Year-1).ToString();
                chtArmazenagem.Series[2].LegendText = (DateTime.Now.Year - 2).ToString();
            }

            List<Frequencia_Acidente> fa = new List<Frequencia_Acidente>();
            fa = Acidente.GetRecord();
            chtArmazenagem.ChartAreas[0].AxisX.Interval = 1;

            foreach (Frequencia_Acidente x in fa)
            {
                if (x.Ano == DateTime.Now.Year)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        chtArmazenagem.Series[0].Points.AddXY(resourceManager.GetString(Enum.GetName(typeof(Meses), x.Mes)), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                    }
                    else
                    {
                        chtArmazenagem.Series[0].Points.AddXY(Enum.GetName(typeof(Meses), x.Mes), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                    }
                }
                else
                if (x.Ano == DateTime.Now.Year-1)
                {
                    if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                    {
                        chtArmazenagem.Series[1].Points.AddXY(resourceManager.GetString(Enum.GetName(typeof(Meses), x.Mes)), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                    }
                    else
                    {
                        chtArmazenagem.Series[1].Points.AddXY(Enum.GetName(typeof(Meses), x.Mes), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                    }
                }
                else
                    if (x.Ano == DateTime.Now.Year-2)
                    {
                        if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                        {
                            chtArmazenagem.Series[2].Points.AddXY(resourceManager.GetString(Enum.GetName(typeof(Meses), x.Mes)), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                        }
                        else
                        {
                            chtArmazenagem.Series[2].Points.AddXY(Enum.GetName(typeof(Meses), x.Mes), Math.Round((x.Total_Acidentes * 1000000) / x.Total_Horas, 2));
                        }
                    }

            }
        }
    }
}