using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using MSBiblioteca.BLL;
using MSBiblioteca.MSUtil;
using Microsoft.Reporting.WebForms;
using System.Web.UI;
using System.IO;

namespace MS2000Web.Menu.Relatorios
{
    public partial class KPIensco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["NotEndSession"] = true;
            }
        }

        [WebMethod]
        public static void RemoveSession()
        {
           HttpContext.Current.Session.Remove("NotEndSession");
        }
   
        protected void btnProcessar_Click(object sender, EventArgs e)
        {
            pnlProcessos.Visible = false;
            if (txtMesAno.Text.Length >= 7)
            {
                //GRÁFICO {Aéreo - Consumo - verde}
                //0710200 - CABO FRIO
                var grafico01Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "01", "D", "0710200");
                foreach (var item in grafico01Cf.AsEnumerable())
                {
                    Chart1.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart1.Series[0].LegendText = item.Mes;
                }
                Chart1.Series[0].IsVisibleInLegend = true;
                Chart1.Titles[0].Visible = true;
                txtGrafico01.Visible = true;

                //0717700 - GALEAO
                var grafico01G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "01", "D", "0717700");
                foreach (var item in grafico01G.AsEnumerable())
                {
                    Chart1.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart1.Series[1].LegendText = item.Mes;
                }
                Chart1.Series[1].IsVisibleInLegend = true;
                Chart1.Titles[1].Visible = true;
                //---------------------------------------


                //GRÁFICO {Aéreo - Consumo - Amarelo}
                //0710200 - CABO FRIO
                var grafico02Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "01", "V", "0710200");

                foreach (var item in grafico02Cf.AsEnumerable())
                {
                    Chart2.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart2.Series[0].LegendText = item.Mes;
                }
                Chart2.Series[0].IsVisibleInLegend = true;
                Chart2.Titles[0].Visible = true;
                txtGrafico02.Visible = true;
                //0717700 - GALEAO
                var grafico02G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "01", "V", "0717700");

                foreach (var item in grafico02G.AsEnumerable())
                {
                    Chart2.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart2.Series[1].LegendText = item.Mes;
                }
                Chart2.Series[1].IsVisibleInLegend = true;
                Chart2.Titles[1].Visible = true;
                //----------------------------------


                //GRÁFICO {Aéreo - Consumo - Vermelho}
                //0710200 - CABO FRIO
                var grafico03Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "01", "L", "0710200");

                foreach (var item in grafico03Cf.AsEnumerable())
                {
                    Chart3.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart3.Series[0].LegendText = item.Mes;
                }
                Chart3.Series[0].IsVisibleInLegend = true;
                Chart3.Titles[0].Visible = true;
                txtGrafico03.Visible = true;
                //0717700 - GALEAO
                var grafico03G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                               "11", "01", "L", "0717700");

                foreach (var item in grafico03G.AsEnumerable())
                {
                    Chart3.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart3.Series[1].LegendText = item.Mes;
                }
                Chart3.Series[1].IsVisibleInLegend = true;
                Chart3.Titles[1].Visible = true;
                //--------------------------

                //GRÁFICO {Aéreo - Admissão Temporaria - Amarelo}
                //0710200 - CABO FRIO
                var grafico04Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "05", "V", "0710200");

                foreach (var item in grafico04Cf.AsEnumerable())
                {
                    Chart4.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart4.Series[0].LegendText = item.Mes;
                }
                Chart4.Series[0].IsVisibleInLegend = true;
                Chart4.Titles[0].Visible = true;
                txtGrafico04.Visible = true;
                //0717700 - GALEAO
                var grafico04G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                               "11", "05", "V", "0717700");
                foreach (var item in grafico04G.AsEnumerable())
                {
                    Chart4.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart4.Series[1].LegendText = item.Mes;
                }
                Chart4.Series[1].IsVisibleInLegend = true;
                Chart4.Titles[1].Visible = true;
                //------------------------------

                //GRÁFICO {Aéreo - Admissão Temporaria - Vermelho}-
                var grafico05Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "05", "L", "0710200");
                foreach (var item in grafico05Cf.AsEnumerable())
                {
                    Chart5.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart5.Series[0].LegendText = item.Mes;
                }
                Chart5.Series[0].IsVisibleInLegend = true;
                Chart5.Titles[0].Visible = true;
                txtGrafico05.Visible = true;
                var grafico05G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                               "11", "05", "L", "0717700");
                foreach (var item in grafico05G.AsEnumerable())
                {
                    Chart5.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart5.Series[1].LegendText = item.Mes;
                }
                Chart5.Series[1].IsVisibleInLegend = true;
                Chart5.Titles[1].Visible = true;
                //-------------------------------

                //GRÁFICO {Aéreo - Consumo e Admissão Temporária - Amarelo}
                var grafico06Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "12", "V", "0710200");

                foreach (var item in grafico06Cf.AsEnumerable())
                {
                    Chart6.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart6.Series[0].LegendText = item.Mes;
                }
                Chart6.Series[0].IsVisibleInLegend = true;
                Chart6.Titles[0].Visible = true;
                txtGrafico06.Visible = true;
                var grafico06G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                               "11", "12", "V", "0717700");

                foreach (var item in grafico06G.AsEnumerable())
                {
                    Chart6.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart6.Series[1].LegendText = item.Mes;
                }
                Chart6.Series[1].IsVisibleInLegend = true;
                Chart6.Titles[1].Visible = true;
                //----------------------------

                //GRÁFICO {Aéreo - Consumo e Admissão Temporária - Vermelho}
                var grafico07Cf = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "11", "12", "L", "0710200");
                foreach (var item in grafico07Cf.AsEnumerable())
                {
                    Chart7.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart7.Series[0].LegendText = item.Mes;
                }
                Chart7.Series[0].IsVisibleInLegend = true;
                Chart7.Titles[0].Visible = true;
                txtGrafico07.Visible = true;
                var grafico07G = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                "11", "12", "L", "0717700");
                foreach (var item in grafico07G.AsEnumerable())
                {
                    Chart7.Series[1].Points.AddXY(item.Dia, item.TotalValor);
                    Chart7.Series[1].LegendText = item.Mes;
                }
                Chart7.Series[1].IsVisibleInLegend = true;
                Chart7.Titles[1].Visible = true;
                //----------------------------

                //GRÁFICO {Marítimo - Consumo - Verde}
                var grafico08 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "01", "D");

                foreach (var item in grafico08.AsEnumerable())
                {
                    Chart8.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart8.Series[0].LegendText = item.Mes;
                }
                Chart8.Series[0].IsVisibleInLegend = true;
                Chart8.Titles[0].Visible = true;
                txtGrafico08.Visible = true;

                //GRÁFICO {Marítimo - Consumo - Amarelo}
                var grafico09 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "01", "V");

                foreach (var item in grafico09.AsEnumerable())
                {
                    Chart9.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart9.Series[0].LegendText = item.Mes;
                }
                Chart9.Series[0].IsVisibleInLegend = true;
                Chart9.Titles[0].Visible = true;
                txtGrafico09.Visible = true;

                //GRÁFICO {Marítimo - Consumo - Vermelho}
                var grafico10 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "01", "L");

                foreach (var item in grafico10.AsEnumerable())
                {
                    Chart10.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart10.Series[0].LegendText = item.Mes;
                }
                Chart10.Series[0].IsVisibleInLegend = true;
                Chart10.Titles[0].Visible = true;
                txtGrafico10.Visible = true;

                //GRÁFICO {Marítimo - Admissão Temporária - Amarelo}
                var grafico11 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "05", "V");

                foreach (var item in grafico11.AsEnumerable())
                {
                    Chart11.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart11.Series[0].LegendText = item.Mes;
                }
                Chart11.Series[0].IsVisibleInLegend = true;
                Chart11.Titles[0].Visible = true;
                txtGrafico11.Visible = true;

                //GRÁFICO {Marítimo - Admissão Temporária - Vermelho}
                var grafico12 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "05", "L");

                foreach (var item in grafico12.AsEnumerable())
                {
                    Chart12.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart12.Series[0].LegendText = item.Mes;
                }
                Chart12.Series[0].IsVisibleInLegend = true;
                Chart12.Titles[0].Visible = true;
                txtGrafico12.Visible = true;

                //GRÁFICO {Marítimo - Consumo e Admissão Temporária - Amarelo}
                var grafico13 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "12", "V");

                foreach (var item in grafico13.AsEnumerable())
                {
                    Chart13.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart13.Series[0].LegendText = item.Mes;
                }
                Chart13.Series[0].IsVisibleInLegend = true;
                Chart13.Titles[0].Visible = true;
                txtGrafico13.Visible = true;

                //GRÁFICO {Marítimo - Consumo e Admissão Temporária - Vermelho}
                var grafico14 = new EnscoGrafico().BuscarDados(txtMesAno.Text,
                                                               "12", "12", "L");

                foreach (var item in grafico14.AsEnumerable())
                {
                    Chart14.Series[0].Points.AddXY(item.Dia, item.TotalValor);
                    Chart14.Series[0].LegendText = item.Mes;
                }
                Chart14.Series[0].IsVisibleInLegend = true;
                Chart14.Titles[0].Visible = true;
                txtGrafico14.Visible = true;

                //GRÁFICO {Aéreo - Geral}
                var grafico15 = new EnscoGrafico().BuscarMediaDias(txtMesAno.Text, "11");

                Chart15.ChartAreas[0].AxisX.Interval = 1;

                foreach (var item in grafico15.AsEnumerable())
                {
                    Chart15.Series[0].Points.AddXY(item.Mes, item.MediaDias);
                    Chart15.Series[0].LegendText = item.Mes;
                }
                Chart15.Series[0].IsVisibleInLegend = true;
                Chart15.Titles[0].Visible = true;

                //GRÁFICO {Marítimo - Geral}
                var grafico16 = new EnscoGrafico().BuscarMediaDias(txtMesAno.Text, "12");

                Chart16.ChartAreas[0].AxisX.Interval = 1;

                foreach (var item in grafico16.AsEnumerable())
                {
                    Chart16.Series[0].Points.AddXY(item.Mes, item.MediaDias);
                    Chart16.Series[0].LegendText = item.Mes;
                }
                Chart16.Series[0].IsVisibleInLegend = true;
                Chart16.Titles[0].Visible = true;
                pnlProcessos.Visible = true;
            }
            //GRÁFICO { Aéreo - Consumo - Verde}
            ddlselecaoProcesso_SelectedIndexChanged(null, null);
        }

        protected void btnRelatorio_Click(object sender, EventArgs e)
        {
            pnlLoad.Visible = true;
            if (txtMesAno.Text.Length >= 7)
            {
                Session.Add("sMesAno", txtMesAno.Text);
                var obslist = new List<string>
                    {
                        txtGrafico01.Text,
                        txtGrafico02.Text,
                        txtGrafico03.Text,
                        txtGrafico04.Text,
                        txtGrafico05.Text,
                        txtGrafico06.Text,
                        txtGrafico07.Text,
                        txtGrafico08.Text,
                        txtGrafico09.Text,
                        txtGrafico10.Text,
                        txtGrafico11.Text,
                        txtGrafico12.Text,
                        txtGrafico13.Text,
                        txtGrafico14.Text
                    };

                Session.Add("sObsLista", obslist);
                //Response.Redirect("~/Relatorios/rptKPIensco.aspx");
                ExportPdf();
            }
            pnlLoad.Visible = false;
        }

        private void ExportPdf()
        {
            var rv = new ReportViewer();
            rv.Reset();
            //BindingSource Bs = new BindingSource();
            //var rds = new ReportDataSource();

            var lista = (List<string>)Session["sObsLista"];
            var obsGrafico01 = lista[0];
            var obsGrafico02 = lista[1];
            var obsGrafico03 = lista[2];
            var obsGrafico04 = lista[3];
            var obsGrafico05 = lista[4];
            var obsGrafico06 = lista[5];
            var obsGrafico07 = lista[6];
            var obsGrafico08 = lista[7];
            var obsGrafico09 = lista[8];
            var obsGrafico10 = lista[9];
            var obsGrafico11 = lista[10];
            var obsGrafico12 = lista[11];
            var obsGrafico13 = lista[12];
            var obsGrafico14 = lista[13];

            string mes = Enum.GetName(typeof(Meses), Convert.ToInt16(Session["sMesAno"].ToString().Substring(0, 2)));
            string mesAno = "KPI - " + mes + " - " + Session["sMesAno"].ToString().Substring(3, 4);
            var rp = new List<ReportParameter>
                    {
                        new ReportParameter("pDescricaoCapa",mesAno , true),
                        new ReportParameter("pObsGrafico01", obsGrafico01, true),
                        new ReportParameter("pObsGrafico02", obsGrafico02, true),
                        new ReportParameter("pObsGrafico03", obsGrafico03, true),
                        new ReportParameter("pObsGrafico04", obsGrafico04, true),
                        new ReportParameter("pObsGrafico05", obsGrafico05, true),
                        new ReportParameter("pObsGrafico06", obsGrafico06, true),
                        new ReportParameter("pObsGrafico07", obsGrafico07, true),
                        new ReportParameter("pObsGrafico08", obsGrafico08, true),
                        new ReportParameter("pObsGrafico09", obsGrafico09, true),
                        new ReportParameter("pObsGrafico10", obsGrafico10, true),
                        new ReportParameter("pObsGrafico11", obsGrafico11, true),
                        new ReportParameter("pObsGrafico12", obsGrafico12, true),
                        new ReportParameter("pObsGrafico13", obsGrafico13, true),
                        new ReportParameter("pObsGrafico14", obsGrafico14, true)
                    };

            // rv.LocalReport.SetParameters(rp);

            rv.LocalReport.DataSources.Clear();
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds01", ObjectDataSource1));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds02", ObjectDataSource2));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds03", ObjectDataSource3));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds04", ObjectDataSource4));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds05", ObjectDataSource5));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds06", ObjectDataSource6));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds07", ObjectDataSource7));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds08", ObjectDataSource8));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds09", ObjectDataSource9));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds10", ObjectDataSource10));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds11", ObjectDataSource11));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds12", ObjectDataSource12));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds13", ObjectDataSource13));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds14", ObjectDataSource14));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds15", ObjectDataSource15));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds16", ObjectDataSource16));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds17", ObjectDataSource17));

            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0102", ObjectDataSource18));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0202", ObjectDataSource19));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0302", ObjectDataSource20));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0402", ObjectDataSource21));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0502", ObjectDataSource22));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0602", ObjectDataSource23));
            rv.LocalReport.DataSources.Add(new ReportDataSource("ds0702", ObjectDataSource24));

            rv.ProcessingMode = ProcessingMode.Local;
            rv.LocalReport.ReportPath = @"Relatorios\rptKPIensco.rdlc";
            rv.LocalReport.SetParameters(rp);
            //rv.DataBind();
            rv.LocalReport.Refresh();
            rv.ShowReportBody = true;


            //Warning[] warnings;
            //string[] streamids;
            //string mimeType;
            //string encoding;
            //string extension;

            //byte[] bytes = rv.LocalReport.Render(
            //"Pdf", null, out mimeType, out encoding,
            // out extension,
            //out streamids, out warnings);
            //var fs = new FileStream(@"c:\temp\output.pdf", FileMode.Create);
            //fs.Write(bytes, 0, bytes.Length);
            //fs.Close();
            //System.Diagnostics.Process.Start(@"c:\temp\output.pdf");

            string mimeType;
            string encoding;
            string fileNameExtension;
            Warning[] warnings;
            string[] streamids;
            byte[] exportBytes = rv.LocalReport.Render("PDF", null, out mimeType, out encoding,
                                                       out fileNameExtension, out streamids, out warnings);
            var response = HttpContext.Current.Response;
            response.Clear();
            response.AddHeader("Content-Type", "binary/octet-stream");
            Response.AddHeader("content-disposition",
                               "attachment; filename=pdf" + DateTime.Now.ToString("MM-dd-yyyy hh-mm-ss") + "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(exportBytes);
            response.Flush();
            response.End();

        }

        protected void ddlselecaoProcesso_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (txtMesAno.Text.Length < 7) return;
            var graficoProcessos = new EnscoGrafico();
            var tabela = new DataTable();

            switch (ddlselecaoProcesso.SelectedValue)
            {
                case "1":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "D", "0710200");
                    break;
                case "2":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "D", "0717700");
                    break;
                case "3":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "V", "0710200");
                    break;
                case "4":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "V", "0717700");
                    break;
                case "5":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "L", "0710200");
                    break;
                case "6":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "01", "L", "0717700");
                    break;
                case "7":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "05", "V", "0710200");
                    break;
                case "8":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "05", "V", "0717700");
                    break;
                case "9":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "05", "L", "0710200");
                    break;
                case "10":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "05", "L", "0717700");
                    break;
                case "11":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "12", "V", "0710200");
                    break;
                case "12":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "12", "V", "0717700");
                    break;
                case "13":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "12", "L", "0710200");
                    break;
                case "14":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "11", "12", "L", "0717700");
                    break;
                case "15":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "01", "D");
                    break;
                case "16":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "01", "V");
                    break;
                case "17":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "01", "L");
                    break;
                case "18":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "05", "V");//
                    break;
                case "19":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "05", "L");
                    break;
                case "20":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "12", "V");
                    break;
                case "21":
                    tabela = graficoProcessos.BuscarProcessosAereoMaritimo(txtMesAno.Text, "12", "12", "L");
                    break;
            }
            //-------------------------------

            var list = new List<object>();

            foreach (var i in tabela.AsEnumerable())
            {
                var inicio = (DateTime)i["Data_Chegada_Urf_Cheg"];
                var fim = (DateTime)i["Dt_Desembaraco"];
                TimeSpan diff;
                diff = fim.Subtract(inicio);

                list.Add(new
                {
                    Codigo = i["Codigo"].ToString(),
                    Data_Chegada_URF_Cheg = (DateTime)i["Data_Chegada_Urf_Cheg"],
                    DT_DESEMBARACO = (DateTime)i["Dt_Desembaraco"],
                    Dias = diff.Days
                });
            }

            //-------------------------------
            grdProcessos.DataSource = list;
            grdProcessos.DataBind();
            if (sender != null)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), Guid.NewGuid().ToString(), "$(document).ready(iniciaJquery);", true);
            }

        }
    }
}