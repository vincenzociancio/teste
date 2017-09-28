using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSIndicadores
{
    public partial class frmIndicadorTurnover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Turnover> list = new List<Turnover>();

                list = Turnover.getTurnover();
                Chart1.ChartAreas[0].AxisX.Interval = 1;
                Chart1.Series[0].LegendText = String.Format("Admissão");
                Chart1.Series[1].LegendText = String.Format("Demissão");
                foreach (Turnover contr in list)
                {
                    Chart1.Series[0].Points.AddXY(contr.Mes.ToString(), contr.Contratado);
                }
                                
                foreach (Turnover disp in list)
                {
                    Chart1.Series[1].Points.AddXY(disp.Mes.ToString(), disp.Dispensado);
                }
            }
        }
    }
}