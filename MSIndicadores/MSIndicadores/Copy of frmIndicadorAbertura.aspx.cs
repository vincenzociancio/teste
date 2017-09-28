using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

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
                    //Chart1.Series["Series1"].LegendText = "2012";
                    Chart1.Series["Series1"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series1"].LegendText = Convert.ToString(x[0]);
                }

                //Chart1.Series["Series2"].LegendText = dsAtual.Tables[0].Rows[0].ToString();
                foreach (DataRow x in dsAtual.Tables[0].Rows)
                {
                    Chart1.Series["Series2"].Points.AddXY(x[1], x[2]);
                    Chart1.Series["Series2"].LegendText = Convert.ToString(x[0]);
                }


       /*
                Random random = new Random();
                for (int pointIndex = 0; pointIndex < 10; pointIndex++)
                {
                    Chart1.Series["Series1"].Points.AddY(random.Next(45, 95));
                    Chart1.Series["Series2"].Points.AddY(random.Next(5, 75));
                }
                
                */
                //string[] Mes ={"", "Janeiro", "F", "Mar","Abril","Maio","Junho","Julho","Agos","Setem", "Out", "Novemb","Dez"};

                
                /*
                for (int i = 1; i <= 12; i++ )
                {
                    //Chart1.Series["Series1"].XValueType = ChartValueType.String;
                    Chart1.Series["Series1"].Points.AddXY(Mes[i], i);
                }

                Chart1.Legends[0].Enabled = false;
                Chart1.ChartAreas[0].AxisY.IsStartedFromZero = false;
                */

               


            
               // Chart1.Series[0].LegendText = "#AXISLABEL";

               // Chart1.Series["Series1"].Legend = "2012";

                /*
                Chart1.Series[0].LegendText = "2012";
                Chart1.Series[0].Points.DataBind(dsAtual.Tables[0].Rows, "mes", "qtd", "qtd=qtd");
                Chart1.Series[0].Label = "#VALY";

                Chart1.Series[1].LegendText = "2011";
                Chart1.Series[1].Points.DataBind(dsAnterior.Tables[0].Rows, "mes", "qtd", "qtd=qtd");
                Chart1.Series[1].Label = "#VALY";

                */
                //Chart1.ChartAreas["ChartArea1"].AxisX.LabelStyle.Angle = 90;

                /*
                Chart1.DataSource = dsAtual;
                Chart1.Series["Series1"].XValueMember = "MES";
                Chart1.Series["Series1"].YValueMembers = "QTD";
                Chart1.DataBind();

                Chart1.DataSource = dsAnterior;
                Chart1.Series["Series2"].XValueMember = "MES";
                Chart1.Series["Series2"].YValueMembers = "QTD";
                Chart1.DataBind();
               
                
                Chart1.Series.Add("Series2");
                Chart1.Series["Series2"].ChartType = SeriesChartType.Column;
                Chart1.Series["Series2"].Points.AddY(20);
                Chart1.Series["Series2"].ChartArea = "ChartArea1";    
               
                Chart1.ChartAreas["Default"].Area3DStyle.Enable3D = true;
                Chart1.ChartAreas["Default"].Area3DStyle.Inclination = 45;
                Chart1.ChartAreas["Default"].Area3DStyle.Rotation = 45;
                Chart1.ChartAreas["Default"].AxisY.LabelStyle.Format = "C";
                Chart1.Series["Series1"].Label = "Y = #VALY\nX = #VALX";
                     */
            }

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
 
    }
}