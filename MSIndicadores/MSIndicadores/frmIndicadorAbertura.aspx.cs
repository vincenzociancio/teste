using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Globalization;
using System.Threading;
using System.Resources;

namespace MSIndicadores
{
    public partial class frmIndicadorAbertura : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorAbertura).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaGrafico();
            }
          


        }
        private void CarregaGrafico()
        {

            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                Chart1.Titles[0].Text = resourceManager.GetString("processosAbertos");
                Chart1.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                Chart1.ChartAreas[0].Axes[1].Title = resourceManager.GetString("quantidadeProcessos");
            }
            
            abertura a = new abertura();
            DataSet dsAtual = new DataSet();
            DataSet dsAnterior = new DataSet();
            DataSet dsAnteriorAnterior = new DataSet();

            dsAtual = a.selectAnoAtual();
            dsAnterior = a.selectAnoAnterior();
            dsAnteriorAnterior = a.selectAnoAnteriorAnterior();

            Chart1.ChartAreas[0].AxisX.Interval = 1;

            foreach (DataRow x in dsAtual.Tables[0].Rows)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    Chart1.Series["Series2"].Points.AddXY(resourceManager.GetString(x[1].ToString()), x[2]);
                    Chart1.Series["Series2"].LegendText = Convert.ToString(x[0]);
                }
                else
                {
                    Chart1.Series["Series2"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series2"].LegendText = Convert.ToString(x[0]);
                }
            }

            foreach (DataRow x in dsAnterior.Tables[0].Rows)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    Chart1.Series["Series1"].Points.AddXY(resourceManager.GetString(x[1].ToString()), x[2]);
                    Chart1.Series["Series1"].LegendText = Convert.ToString(x[0]);
                }
                else
                {
                    Chart1.Series["Series1"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series1"].LegendText = Convert.ToString(x[0]);
                }

            }

            foreach (DataRow x in dsAnteriorAnterior.Tables[0].Rows)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    Chart1.Series["Series3"].Points.AddXY(resourceManager.GetString(x[1].ToString()), x[2]);
                    Chart1.Series["Series3"].LegendText = Convert.ToString(x[0]);
                }
                else
                {
                    Chart1.Series["Series3"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series3"].LegendText = Convert.ToString(x[0]);
                }
            }
        }
        protected void Chart1_Load(object sender, EventArgs e)
        {
            
        }

    }
}