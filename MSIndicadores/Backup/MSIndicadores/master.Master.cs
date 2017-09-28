using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MSIndicadores
{
    public partial class master : System.Web.UI.MasterPage
    {
        static Queue Q = new Queue();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Q.Enqueue("frmIndicadorAbertura.aspx");
                Q.Enqueue("frmIndicadorCheckIn.aspx");
                Q.Enqueue("frmIndicadorSatisfacao.aspx");
                Q.Enqueue("frmIndicadorHoraExtra.aspx");
                //Q.Enqueue("frmIndicadorTurnover.aspx");
                Q.Enqueue("frmIndicadorConsumoEnergia.aspx");
                Q.Enqueue("frmIndicadorSAC.aspx");
                Q.Enqueue("frmIndicadorFollow.aspx");
                Q.Enqueue("frmIndicadorAdesaoLaboral.aspx");
                Q.Enqueue("frmIndicadorApenc.aspx");
                Q.Enqueue("frmIndicadorArmazenagem.aspx");
                Q.Enqueue("frmIndicadorAcidentes.aspx");
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            string url = Convert.ToString(Q.Dequeue());
            Q.Enqueue(url);
            Response.Redirect(url);
        }
    }
}