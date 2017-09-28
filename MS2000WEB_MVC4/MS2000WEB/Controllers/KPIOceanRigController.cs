using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using MSBiblioteca.MSUtil;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class KPIOceanRigController : Controller
    {
        private MS2000Context db = new MS2000Context();
        //
        //
        public string myTheme =
             @"<Chart BackColor=""#ff0000"" BackGradientStyle=""TopBottom"" BackSecondaryColor=""White"" BorderColor=""26, 59, 105"" BorderlineDashStyle=""Solid"" BorderWidth=""2"" Palette=""BrightPastel"">
                  <ChartAreas>
                     <ChartArea Name=""Default"" _Template_=""All"" BackColor=""Transparent"" BackGradientStyle=""TopBottom"" BackSecondaryColor=""White"" BorderColor=""64, 64, 64, 64"" BorderDashStyle=""Solid"" ShadowColor=""Transparent"" /> 
                  </ChartAreas>
                 <Legends>
                     <Legend _Template_=""All"" BackColor=""Transparent"" Font=""Trebuchet MS, 8.25pt, style=Bold"" IsTextAutoFit=""False"" /> 
                 </Legends>
                 <BorderSkin SkinStyle=""Emboss"" /> 
              </Chart>";

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string Data)
        {
            if (string.IsNullOrEmpty(Data))
            {
                return View();
            }
            else
            {
                //ViewBag.teste1 = BuscarDados(Data, "11", "01", "D", "0710200");
                // Graficos(Data);                
                //_parametro_data = Data;
                //return PartialView("Graficos"); //View(ViewBag.teste1);
                return View();
            }
        }

        public List<OceanGraficoViewModel> BuscarDadosGrafico1(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "SELECT " +
                            "YEAR(DT_DESEMBARACO) AS 'ANO',  " +
                            "MES =  " +
                            "MONTH(DT_DESEMBARACO), " +                         
                            "COUNT(DT_DESEMBARACO) AS 'Tot_Desembaracado' " +
                            "FROM  " +
                            "Processos " +
                            "WHERE  " +
                            "(SUBSTRING(DT_REGISTRO_DI, 5, 4)) = @Ano  and Importador = '358'  and Tipo in ('11','12','14','15') and not DT_DESEMBARACO is null " +
                            "GROUP BY  " +
                            "YEAR(DT_DESEMBARACO), MONTH(DT_DESEMBARACO) " +
                            "ORDER BY " +
                            "YEAR(DT_DESEMBARACO)," +
                            "MONTH(DT_DESEMBARACO)";

                var dadosProcesso = ctx.Database.SqlQuery<OceanGraficoViewModel>(query,  new SqlParameter("@Ano", ano)).ToList();

                var query1 = "SELECT " +
                            "MES1 = " +
                            "CASE (SUBSTRING(DT_REGISTRO_DI, 3, 2))   " +
                            "WHEN '01' THEN '1'"+
                            "WHEN '02' THEN '2'"+
                            "WHEN '03' THEN '3'"+
                            "WHEN '04' THEN '4'"+
                            "WHEN '05' THEN '5'"+
                            "WHEN '06' THEN '6'"+
                            "WHEN '07' THEN '7'"+
                            "WHEN '08' THEN '8'" +
                            "WHEN '09' THEN '9'" +
                            "End,"  +                            
                            "COUNT(DT_REGISTRO_DI) AS 'Tot_registrada'  " +
                            "FROM  " +
                            "Processos " +
                            "WHERE  " +
                            "(SUBSTRING(DT_REGISTRO_DI, 5, 4)) = @Ano  and Importador = '358'  and Tipo in ('11','12','14','15') and not DT_DESEMBARACO is null " +
                            "GROUP BY  " +
                            "(SUBSTRING(DT_REGISTRO_DI, 5, 4)), (SUBSTRING(DT_REGISTRO_DI, 3, 2)) " +
                            "ORDER BY " +
                            "(SUBSTRING(DT_REGISTRO_DI, 5, 4))," +
                            "(SUBSTRING(DT_REGISTRO_DI, 3, 2)) ";

                var dadosProcesso1 = ctx.Database.SqlQuery<OceanGraficoViewModel>(query1, new SqlParameter("@Ano", ano)).ToList();

                var lista = new List<OceanGraficoViewModel>();


                foreach (var i in dadosProcesso.ToList())
                {
                    lista.Add(new OceanGraficoViewModel { Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(i.MES1)), TotalDesembaracado = i.Tot_Desembaracado});
                }

                   foreach (var i in dadosProcesso1.ToList())
                {
                    lista.Add(new OceanGraficoViewModel {TotalDi = i.Tot_registrada });
                }

                
                return lista;
            }
        }

        public List<OceanGraficoViewModel> BuscarDadosGrafico2(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "select distinct(Tipo_Declaracao), count(Tipo_Declaracao)as Total_tipo_Declaracao, td.Descricao As Nome_Declaracao " +
                            "from Processos P inner join TAB_TIPO_DECLARACAO TD on P.Tipo_Declaracao = TD.Codigo " +
                            "Where SUBSTRING(DT_REGISTRO_DI, 3, 2) = @Mes  and  " +
                            "SUBSTRING(DT_REGISTRO_DI, 5, 4)=@Ano and Importador = '358' and Tipo in ('11','12','14','15') " +
                            " group by Tipo_Declaracao,td.Descricao";
                var dadosProcesso = ctx.Database.SqlQuery<OceanGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano)).ToList();

                var lista = new List<OceanGraficoViewModel>();


                foreach (var i in dadosProcesso.ToList())
                {
                    lista.Add(new OceanGraficoViewModel { Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotaltipoDeclaracao = i.Total_tipo_Declaracao });

                }
                return lista;
            }
        }

        public List<OceanGraficoViewModel> BuscarDadosGrafico3(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "select TP.DESCRICAO as Tipo_Processo,  count(Tipo)as Total_tipo ,AVG(TOT_DEB_103)as Frete_aereo ,AVG(TOT_DEB_104) as Frete_Maritimo,AVG(CAST(Peso_Bruto AS decimal(15,2))) AS Peso_Bruto " +
                            "from Processos P inner join  Processos_Visao_Geral PVG on P.Codigo = PVG.Processo inner join Tipos_de_Processos TP on P.Tipo = TP.CODIGO " +
                            "where SUBSTRING(DT_REGISTRO_DI, 3, 2) = @Mes and   " +
                            "SUBSTRING(DT_REGISTRO_DI, 5, 4)=@Ano and P.Importador = '358' and P.Tipo in ('11','12','14','15') " +
                            "group by TP.DESCRICAO";
                var dadosProcesso = ctx.Database.SqlQuery<OceanGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano)).ToList();

                var lista = new List<OceanGraficoViewModel>();


                foreach (var i in dadosProcesso.ToList())
                {
                    lista.Add(new OceanGraficoViewModel { Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), Totaltipo = i.Total_tipo, Freteaereo = i.Frete_aereo, FreteMaritimo = i.FreteMaritimo, PesoBruto = i.Peso_Bruto });
                }
                return lista;
            }
        }

        public List<OceanGraficoViewModel> BuscarDadosGrafico4(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "select avg(DATEDIFF(DAY,pvg.Data_Chegada,pvg.Data_Registro)) as Media_Chegada_DI, avg(DATEDIFF(DAY,pvg.Data_Registro,pvg.Data_Desembaraco)) as Media_DI_Desembaraco " +
                            "from Processos P inner join Processos_Visao_Geral pvg on P.Codigo = pvg.Processo " +
                            "where SUBSTRING(DT_REGISTRO_DI, 3, 2) = @Mes and " +
                            "SUBSTRING(DT_REGISTRO_DI, 5, 4)=@Ano and P.Importador = '358'  and Tipo in ('11','12','14','15') ";

                var dadosProcesso = ctx.Database.SqlQuery<OceanGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano)).ToList();

                var lista = new List<OceanGraficoViewModel>();


                foreach (var i in dadosProcesso.ToList())
                {
                    lista.Add(new OceanGraficoViewModel { Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), MediaChegadaDI = i.Media_Chegada_DI, MediaDIDesembaraco = i.Media_DI_Desembaraco });

                }
                return lista;
            }
        }

        public List<OceanGraficoViewModel> BuscarDadosGrafico5(string data)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "select Count(P.Codigo)as Tot_registrada ,Sum(pvg.TOTAL_VALOR_FOB) As Valor_Total_FOB " +
                            "from Processos P inner join Processos_Visao_Geral pvg on P.Codigo = pvg.Processo " +
                            "where SUBSTRING(DT_REGISTRO_DI, 3, 2) = @Mes and " +
                            "SUBSTRING(DT_REGISTRO_DI, 5, 4)=@Ano and P.Importador = '358'  and Tipo in ('11','12','14','15') ";

                var dadosProcesso = ctx.Database.SqlQuery<OceanGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano)).ToList();

                var lista = new List<OceanGraficoViewModel>();


                foreach (var i in dadosProcesso.ToList())
                {
                    lista.Add(new OceanGraficoViewModel { Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalDi = i.Tot_registrada, ValorTotalFOB = i.Valor_Total_FOB });

                }
                return lista;
            }
        }

        public ActionResult Graficos(string data)
        {
            ViewBag.Data = data;
            return PartialView("Graficos");
        }

        public ActionResult Grafico1(string data)
        {
            var model = BuscarDadosGrafico1(data);

            var Chart = new Chart(width: 800, height: 400, theme: ChartTheme.Green)
                   .AddTitle("")
                   .AddLegend("")
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "Total Desembaraçado",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.TotalDesembaracado).ToArray())
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "Total DI",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.TotalDi).ToArray())
                   .GetBytes("png");
            return File(Chart, "image/png");

        }

        public ActionResult Grafico2(string data)
        {
            var model = BuscarDadosGrafico2(data);

            var Chart = new Chart(width: 800, height: 400, theme: ChartTheme.Green)
                   .AddTitle("")
                   .AddLegend("")
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "CONSUMO",
                    xValue: model.Select(y => y.Mes).Skip(0).Take(1).ToArray(),
                    yValues: model.Select(y => y.TotaltipoDeclaracao).Skip(0).Take(1).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    name: "ADMISSÃO TEMPORARIA",
                    xValue: model.Select(y => y.Mes).Skip(1).Take(1).ToArray(),
                    yValues: model.Select(y => y.TotaltipoDeclaracao).Skip(1).Take(1).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    name: "CONSUMO E ADMISSAO TEMPORARIA",
                    xValue: model.Select(y => y.Mes).Skip(2).Take(1).ToArray(),
                    yValues: model.Select(y => y.TotaltipoDeclaracao).Skip(2).Take(1).ToArray())
                   .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult Grafico3(string data)
        {
            var model = BuscarDadosGrafico3(data);

            var Chart = new Chart(width: 800, height: 400, theme: ChartTheme.Green)
                   .AddTitle("")
                   .AddLegend("")
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "Total Processo",
                    xValue: model.Select(y => y.Mes).Skip(0).Take(1).ToArray(),
                    yValues: model.Select(y => y.Totaltipo).Skip(0).Take(1).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    name: "Valor Frete",
                    xValue: model.Select(y => y.Mes).Skip(0).Take(2).ToArray(),
                    yValues: model.Select(y => y.Freteaereo).Skip(0).Take(2).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    name: "Media Peso",
                    xValue: model.Select(y => y.Mes).Skip(0).Take(4).ToArray(),
                    yValues: model.Select(y => y.PesoBruto).Skip(0).Take(4).ToArray())
                    .AddSeries(
                    xValue: model.Select(y => y.Mes).Skip(1).Take(1).ToArray(),
                    yValues: model.Select(y => y.Totaltipo).Skip(1).Take(1).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    xValue: model.Select(y => y.Mes).Skip(1).Take(3).ToArray(),
                    yValues: model.Select(y => y.FreteMaritimo).Skip(1).Take(3).ToArray())
                    .AddSeries(
                    chartType: "StackedColumn",
                    xValue: model.Select(y => y.Mes).Skip(1).Take(4).ToArray(),
                    yValues: model.Select(y => y.PesoBruto).Skip(1).Take(4).ToArray())
                   .GetBytes("png");

            return File(Chart, "image/png");

        }
        public ActionResult Grafico4(string data)
        {
            var model = BuscarDadosGrafico4(data);

            var Chart = new Chart(width: 800, height: 400, theme: ChartTheme.Green)
                   .AddTitle("")
                   .AddLegend("")
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "Media Data de Chegada x Registro DI",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.MediaChegadaDI).ToArray())
                   .AddSeries(
                    chartType: "StackedColumn",
                    name: "Media Registro DI x Data de Desembaraço",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.MediaDIDesembaraco).ToArray())
                   .GetBytes("png");
            return File(Chart, "image/png");

        }
        public ActionResult Grafico5(string data)
        {
            var model = BuscarDadosGrafico5(data);

            var Chart = new Chart(width: 800, height: 400, theme: ChartTheme.Green)
                   .AddTitle("")
                   .AddLegend("")
                   .AddSeries(
                    name: "Total DI",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.TotalDi).ToArray())
                   .AddSeries(
                    name: "Valor Total",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.ValorTotalFOB).ToArray())
                   .GetBytes("png");
            return File(Chart, "image/png");

        }

    }
}
