using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace MSIndicadores
{
    public partial class frmIndicadorArmazenagem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Armazenagem.CalcularArmazenagem();

            List<Armazenagem.Mes> sim = new List<Armazenagem.Mes>();
            List<Armazenagem.Mes> nao = new List<Armazenagem.Mes>();
            sim = Armazenagem.SimPrimeiraArmazenagem;
            nao = Armazenagem.NaoPrimeiraArmazenagem;

            chtArmazenagem.ChartAreas[0].AxisX.Interval = 1;
            chtArmazenagem.Series[0].LegendText = "Primeira";
            chtArmazenagem.Series[1].LegendText = "Outros";

            int sim_cont = 0;
            int nao_cont = 0;

            foreach (Meses m in Enum.GetValues(typeof(Meses)))
            {
                switch (m)
                {
                    case Meses.Janeiro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Janeiro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Janeiro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Janeiro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Janeiro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                        }
                        break;
                    case Meses.Fevereiro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Fevereiro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Fevereiro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Fevereiro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Fevereiro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));

                        }
                        break;
                    case Meses.Março:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Março)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Março)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Março", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Março", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                        }
                        break;
                    case Meses.Abril:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Abril)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Abril)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Abril", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Abril", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                        }
                        break;
                    case Meses.Maio:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Maio)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Maio)
                                {
                                    nao_cont++;
                                }
                            }

                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Maio", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Maio", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));

                        }
                        break;
                    case Meses.Junho:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Junho)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Junho)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            chtArmazenagem.Series[0].Points.AddXY("Junho", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            chtArmazenagem.Series[1].Points.AddXY("Junho", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));

                        }
                        break;
                    case Meses.Julho:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Julho)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Julho)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Julho", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Julho", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            }
                        }
                        break;
                    case Meses.Agosto:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Agosto)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Agosto)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Agosto", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Agosto", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            }
                        }
                        break;
                    case Meses.Setembro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Setembro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Setembro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Setembro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Setembro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            }
                        }
                        break;
                    case Meses.Outubro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Outubro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Outubro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Outubro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Outubro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            }
                        }
                        break;
                    case Meses.Novembro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Novembro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Novembro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Novembro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Novembro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));
                            }
                        }
                        break;
                    case Meses.Dezembro:
                        {
                            // sim primeira
                            sim_cont = 0;
                            foreach (Armazenagem.Mes s in sim)
                            {
                                if (s.descricao == Meses.Dezembro)
                                {
                                    sim_cont++;
                                }
                            }

                            // não primeira
                            nao_cont = 0;
                            foreach (Armazenagem.Mes n in nao)
                            {
                                if (n.descricao == Meses.Dezembro)
                                {
                                    nao_cont++;
                                }
                            }
                            // gráfico
                            if (sim_cont > 0 || nao_cont > 0)
                            {
                                chtArmazenagem.Series[0].Points.AddXY("Dezembro", Math.Round(sim_cont / ((sim_cont + nao_cont) / 100.00), 2));
                                chtArmazenagem.Series[1].Points.AddXY("Dezembro", Math.Round(nao_cont / ((sim_cont + nao_cont) / 100.00), 2));

                            }
                        }
                        break;
                    default:
                        break;
                }
            }

            HorizontalLineAnnotation myLine = new HorizontalLineAnnotation();
            myLine.AnchorDataPoint = chtArmazenagem.Series[0].Points[1];
            myLine.LineWidth = 3;
            myLine.LineDashStyle = ChartDashStyle.Dash;
            myLine.LineColor = Color.Green;
            myLine.IsInfinitive = true;
            myLine.AnchorY = 40;
            myLine.ClipToChartArea = chtArmazenagem.ChartAreas[0].Name;
            chtArmazenagem.Annotations.Add(myLine);

            RectangleAnnotation myRec = new RectangleAnnotation();
            myRec.AnchorDataPoint = chtArmazenagem.Series[1].Points[1];
            myRec.Text = "Meta: 40%";
            myRec.AnchorY = 38;
            myRec.X = DateTime.Now.Month + 0.5;
            myRec.Font = new Font("Verdana", 11);
            chtArmazenagem.Annotations.Add(myRec);

        }
    }
}