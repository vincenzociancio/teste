using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MSIndicadores
{
    public partial class frmIndicadorSAC : System.Web.UI.Page
    {
        struct sSac
        {
            public string PK;
            public string Nome;
            public int QTD;
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            List<SAC> lSac;
            List<SAC> lNew = new List<SAC>();
            List<sSac> newList = new List<sSac>();
                        
            newList.Add(new sSac { PK = "Elogios", Nome = "Elogios", QTD = 0 });            
            newList.Add(new sSac { PK = "Outros", Nome = "Outros", QTD = 0 });
            newList.Add(new sSac { PK = "Criticas", Nome = "Críticas", QTD = 0 });
            newList.Add(new sSac { PK = "Reclamacoes", Nome = "Reclamações", QTD = 0 });


            //Pegando na base
            lSac = SAC.getSAC();
            int i = 0;
            A:
            foreach (SAC ls in lSac)
            {
                i = 0;
                foreach (sSac ln in newList)
                {
                    if (ls.Assunto == ln.PK && ln.QTD == 0)
                    {                        
                        newList.RemoveAt(i);
                        newList.Insert(i, new sSac { PK=ls.Assunto, Nome=ln.Nome, QTD=ls.Quantidade});
                        goto A;
                    }
                    i++;
                }
            }

            // Totalizando
            foreach (SAC stotal in lSac)
            {
                total += stotal.Quantidade;

            }
            //-----

            //foreach (SAC sac in lSac)            
            foreach (sSac sac in newList)
            {
                chtSAC.Series[0].Points.AddXY(sac.Nome, Math.Round(sac.QTD / (total / 100.00), 2));
            }
        }
    }
}