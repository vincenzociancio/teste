using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSIndicadores.Model;

namespace MSIndicadores
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Frequencia_Acidente> fa = new List<Frequencia_Acidente>();

            fa = Acidente.GetRecord();

            chtArmazenagem.ChartAreas[0].AxisX.Interval = 1;
            chtArmazenagem.Series[0].LegendText = "Acidente(s)";
            foreach (Frequencia_Acidente x in fa)
            {
                chtArmazenagem.Series[0].Points.AddXY(Enum.GetName(typeof(Meses), x.Mes), Math.Round((x.Total_Acidentes*1000000)/x.Total_Horas, 2));
            }
        }
    }
}