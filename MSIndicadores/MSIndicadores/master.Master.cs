using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Threading;
using System.Resources;

namespace MSIndicadores
{
    public partial class master : System.Web.UI.MasterPage
    {
        static Queue Q = new Queue();
        ResourceManager resourceManager = new ResourceManager("MSIndicadores.Idiomas.res", typeof(master).Assembly);

        protected void Page_Load(object sender, EventArgs e)
        {
            // if (!IsPostBack)
            // {
            //if (Thread.CurrentThread.CurrentUICulture.NativeName == "English (United States)")
            //{
            //    Q.Clear();
            //}
            //}
            if (Q.Count == 0)
            {
                Q.Clear();

                Q.Enqueue("frmIndicadorCheckIn.aspx");
                Q.Enqueue("frmIndicadorSatisfacao.aspx");
                //Q.Enqueue("frmIndicadorHoraExtra.aspx");
                //Q.Enqueue("frmIndicadorConsumoEnergia.aspx");
                Q.Enqueue("frmIndicadorSAC.aspx");
                Q.Enqueue("frmIndicadorFollow.aspx");
                Q.Enqueue("frmIndicadorAdesaoLaboralNew.aspx");
                Q.Enqueue("frmIndicadorApenc.aspx");
                Q.Enqueue("frmIndicadorArmazenagem.aspx");
                //Q.Enqueue("frmIndicadorAcidentes.aspx");
                //Q.Enqueue("frmIndicadorRejeicaoVsAnalisados.aspx");

            }
            if (!IsPostBack)
            {
                if (Request.QueryString["cmd"] == "en-US")
                {
                    Menu1.Items[0].NavigateUrl = "frmIndicadorCheckIn.aspx?cmd=" + Request.QueryString["cmd"];

                    Menu1.Items[2].NavigateUrl = "frmIndicadorAbertura.aspx?cmd=" + Request.QueryString["cmd"];
                    Menu1.Items[2].Text = "Open Process";

                    Menu1.Items[4].NavigateUrl = "frmIndicadorSatisfacao.aspx?cmd=" + Request.QueryString["cmd"];
                    Menu1.Items[4].Text = "Satisfaction Survey";

                    //Menu1.Items[6].NavigateUrl = "frmIndicadorHoraExtra.aspx?cmd=" + Request.QueryString["cmd"];
                    //Menu1.Items[6].Text = "OverTime";

                    //Menu1.Items[8].NavigateUrl = "frmIndicadorConsumoEnergia.aspx?cmd=" + Request.QueryString["cmd"];
                    //Menu1.Items[8].Text = "Energy Consumption";

                    Menu1.Items[10].NavigateUrl = "frmIndicadorSAC.aspx?cmd=" + Request.QueryString["cmd"];
                    Menu1.Items[10].Text = "Costumer Service Support";

                    Menu1.Items[12].NavigateUrl = "frmIndicadorFollow.aspx?cmd=" + Request.QueryString["cmd"];

                    Menu1.Items[14].NavigateUrl = "frmIndicadorAdesaoLaboralNew.aspx?cmd=" + Request.QueryString["cmd"];
                    Menu1.Items[14].Text = "Joining Stretch-Break";

                    Menu1.Items[16].NavigateUrl = "frmIndicadorApenc.aspx?cmd=" + Request.QueryString["cmd"];

                    Menu1.Items[18].NavigateUrl = "frmIndicadorArmazenagem.aspx?cmd=" + Request.QueryString["cmd"];
                    Menu1.Items[18].Text = "Storage";

                    //Menu1.Items[20].NavigateUrl = "frmIndicadorAcidentes.aspx?cmd=" + Request.QueryString["cmd"];
                    //Menu1.Items[20].Text = "Accident Rate";

                    //Menu1.Items[22].NavigateUrl = "frmIndicadorRejeicaoVsAnalisados.aspx?cmd=" + Request.QueryString["cmd"];
                    //Menu1.Items[22].Text = "Rejection";

                    Timer1.Enabled = false;
                }
            }
            //}
        }

        public void Timer1_Tick(object sender, EventArgs e)
        {
                string url = Convert.ToString(Q.Dequeue());
                Q.Enqueue(url);
                Response.Redirect(url);
        }
    }
}