using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Data;
using System.Resources;
using System.Threading;
using System.Globalization;

namespace MSIndicadores
{
    public partial class frmIndicadorRejeicaoVsAnalisados : System.Web.UI.Page
    {
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(frmIndicadorRejeicaoVsAnalisados).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CriaGrafico();
            }
        }

        protected void ChartRj_Load(object sender, EventArgs e)
        {

        }

        private void CriaGrafico()
        {

            if (this.Request.QueryString["cmd"] == "en-US")
            {
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
                ChartRj.Titles[0].Text = resourceManager.GetString("indicadorRejeição");
                ChartRj.ChartAreas[0].Axes[0].Title = resourceManager.GetString("meses");
                ChartRj.ChartAreas[0].Axes[1].Title = resourceManager.GetString("quantidadeProcessos");
                ChartRj.ChartAreas[0].Axes[3].Title = resourceManager.GetString("percentualRejeição");
                ChartRj.Series[0].LegendText = String.Format(resourceManager.GetString("processosAbertos"));
                ChartRj.Series[1].LegendText = String.Format(resourceManager.GetString("analisados"));
                ChartRj.Series[2].LegendText = String.Format(resourceManager.GetString("abertosRejeitados"));
            }
            else
            {
                ChartRj.Series[0].LegendText = String.Format("Processos abertos");
                ChartRj.Series[1].LegendText = String.Format("% Analisados x Rejeitados");
                ChartRj.Series[2].LegendText = String.Format("% P. Abertos x Rejeitados");
            }

            ChartRj.ChartAreas[0].AxisX.Interval = 1;

            RejeicaoVsAnalisados rejeicao = new RejeicaoVsAnalisados();
            DataTable dt = new DataTable();

            dt = rejeicao.getDadosGraficoRejeicao();


            int i = 0;
            foreach (DataRow r in dt.Rows)
            {
                if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
                {
                    ChartRj.Series[0].Points.AddXY(resourceManager.GetString(r["MES"].ToString()), r["ABERTOS"].ToString());
                    ChartRj.Series[1].Points.AddXY(resourceManager.GetString(r["MES"].ToString()), Convert.ToDouble(r["PERCENTE_REJEITADO_ANALISADO"]));
                    ChartRj.Series[1].Points[i].Label = string.Format("{0}% - {1}", Convert.ToDouble(r["PERCENTE_REJEITADO_ANALISADO"]),
                        Convert.ToDouble(r["ACEITE"]));
                }
                else
                {
                    ChartRj.Series[0].Points.AddXY(r["MES"].ToString(), r["ABERTOS"].ToString());
                    ChartRj.Series[1].Points.AddXY(r["MES"].ToString(), Convert.ToDouble(r["PERCENTE_REJEITADO_ANALISADO"]));
                    ChartRj.Series[1].Points[i].Label = string.Format("{0}% - {1}", Convert.ToDouble(r["PERCENTE_REJEITADO_ANALISADO"]),
                        Convert.ToDouble(r["ACEITE"]));
                }
                ChartRj.Series[2].Points.AddXY(r["MES"].ToString(), Convert.ToDouble(r["PERCENTE_REJEITADO_ABERTOS"]));
                i++;
            }   
        }
    }
}