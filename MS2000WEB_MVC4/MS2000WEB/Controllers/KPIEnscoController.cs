using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using MSBiblioteca.MSUtil;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class KPIEnscoController : Controller
    {
        private MS2000Context db = new MS2000Context();
        //
        //
        // GET: /KPIEnsco/
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

        public List<EnscoGraficoViewModel> BuscarDados(string data, string tipo, string declaracao, string canal, string local)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "SELECT P.CODIGO, P.DT_DESEMBARACO, C.Data_Chegada_URF_Cheg, U.DESCRICAO, C.URF_Despacho " +
                            "FROM Processos P " +
                            "INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo " +
                            "INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho " +
                            "WHERE P.importador in('344','348') AND MONTH(DT_DESEMBARACO)=@Mes AND YEAR(DT_DESEMBARACO)=@Ano AND " +
                            "TIPO=@Tipo AND CANAL=@Canal AND Tipo_Declaracao=@TipoDeclaracao AND C.URF_Despacho = @local  ";

                var dadosProcesso = ctx.Database.SqlQuery<EnscoGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano),
                    new SqlParameter("@Tipo", tipo),
                    new SqlParameter("@Canal", canal),
                    new SqlParameter("@TipoDeclaracao", declaracao),
                    new SqlParameter("@local", local)).ToList();

                var lista = new List<EnscoGraficoViewModel>();

                int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0;

                foreach (var i in dadosProcesso.ToList())
                {

                    DateTime inicio = Convert.ToDateTime(i.Data_Chegada_URF_Cheg);
                    DateTime fim = Convert.ToDateTime(i.DT_DESEMBARACO);
                    TimeSpan diff;
                    diff = fim.Subtract(inicio);

                    if (diff.Days >= 0 && diff.Days <= 5)
                    {
                        a += 1;
                    }
                    else
                        if (diff.Days >= 6 && diff.Days <= 10)
                        {
                            b += 1;
                        }
                        else

                            if (diff.Days >= 11 && diff.Days <= 15)
                            {
                                c += 1;
                            }
                            else
                                if (diff.Days >= 16 && diff.Days <= 20)
                                {
                                    d += 1;
                                }
                                else
                                    if (diff.Days >= 21 && diff.Days <= 36)
                                    {
                                        e += 1;
                                    }
                                    else//>=37
                                    {
                                        f += 1;
                                    }

                }

                lista.Add(new EnscoGraficoViewModel { Dia = "00-05 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = a });
                lista.Add(new EnscoGraficoViewModel { Dia = "06-10 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = b });
                lista.Add(new EnscoGraficoViewModel { Dia = "11-15 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = c });
                lista.Add(new EnscoGraficoViewModel { Dia = "16-20 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = d });
                lista.Add(new EnscoGraficoViewModel { Dia = "21-36 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = e });
                lista.Add(new EnscoGraficoViewModel { Dia = "37 days or more", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = f });

                return lista;
            }
        }

        public List<EnscoGraficoViewModel> BuscarDadosMaritimo(string data, string tipo, string declaracao, string canal)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            // DataTable dt = _objDal.BuscarDados(mes, ano, tipo, declaracao, canal);

            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "SELECT P.CODIGO, P.DT_DESEMBARACO, C.Data_Chegada_URF_Cheg, U.DESCRICAO, C.URF_Despacho " +
                            "FROM Processos P " +
                            "INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo " +
                            "INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho " +
                            "WHERE P.importador in('344','348') AND MONTH(DT_DESEMBARACO)=@Mes AND YEAR(DT_DESEMBARACO)=@Ano AND " +
                            "TIPO=@Tipo AND CANAL=@Canal AND Tipo_Declaracao=@TipoDeclaracao  ";

                var dadosProcesso = ctx.Database.SqlQuery<EnscoGraficoViewModel>(query, new SqlParameter("@Mes", mes),
                    new SqlParameter("@Ano", ano),
                    new SqlParameter("@Tipo", tipo),
                    new SqlParameter("@Canal", canal),
                    new SqlParameter("@TipoDeclaracao", declaracao)).ToList();

                var lista = new List<EnscoGraficoViewModel>();

                int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0;

                foreach (var i in dadosProcesso.ToList())
                {

                    DateTime inicio = Convert.ToDateTime(i.Data_Chegada_URF_Cheg);
                    DateTime fim = Convert.ToDateTime(i.DT_DESEMBARACO);
                    TimeSpan diff;
                    diff = fim.Subtract(inicio);

                    if (diff.Days >= 0 && diff.Days <= 5)
                    {
                        a += 1;
                    }
                    else
                        if (diff.Days >= 6 && diff.Days <= 10)
                        {
                            b += 1;
                        }
                        else

                            if (diff.Days >= 11 && diff.Days <= 15)
                            {
                                c += 1;
                            }
                            else
                                if (diff.Days >= 16 && diff.Days <= 20)
                                {
                                    d += 1;
                                }
                                else
                                    if (diff.Days >= 21 && diff.Days <= 36)
                                    {
                                        e += 1;
                                    }
                                    else//>=37
                                    {
                                        f += 1;
                                    }

                }

                lista.Add(new EnscoGraficoViewModel { Dia = "00-05 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = a });
                lista.Add(new EnscoGraficoViewModel { Dia = "06-10 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = b });
                lista.Add(new EnscoGraficoViewModel { Dia = "11-15 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = c });
                lista.Add(new EnscoGraficoViewModel { Dia = "16-20 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = d });
                lista.Add(new EnscoGraficoViewModel { Dia = "21-36 days", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = e });
                lista.Add(new EnscoGraficoViewModel { Dia = "37 days or more", Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(mes)), TotalValor = f });

                return lista;
            }
        }

        public List<EnscoGraficoViewModel> BuscarMediaDias(string data, string tipo)
        {
            string mes = data.Substring(0, 2);
            string ano = data.Substring(3, 4);
            using (MS2000Context ctx = new MS2000Context())
            {
                var query = "SELECT cast(MONTH(DT_DESEMBARACO) as varchar) as Mes, convert(decimal(10,2),(sum(convert(float, DATEDIFF(DD, c.Data_Chegada_URF_Cheg ,DT_DESEMBARACO)))/ count(p.Codigo))) as days  " +
                            "FROM Processos P " +
                            "INNER JOIN Conhecimento_Processo C on P.Codigo = C.Processo " +
                            "INNER JOIN TAB_URF U ON U.CODIGO = C.URF_Despacho " +
                            "WHERE P.importador in('344','348') AND YEAR(DT_DESEMBARACO)=@Ano AND  " +
                            "TIPO=@Tipo AND CANAL in ('D','V','L') AND Tipo_Declaracao in ('01','05','12') " +
                            "group by MONTH(DT_DESEMBARACO) ";

                var dadosProcesso = ctx.Database.SqlQuery<EnscoGraficoViewModel>(query, new SqlParameter("@Ano", ano),
                    new SqlParameter("@Tipo", tipo)).ToList();

                var lista = new List<EnscoGraficoViewModel>();

                foreach (var item in dadosProcesso.ToList())
                {
                    lista.Add(new EnscoGraficoViewModel
                    {
                        Mes = Enum.GetName(typeof(Meses), Convert.ToInt16(item.Mes)),
                        MediaDias = Convert.ToDouble(item.days),
                        MesNumero = Convert.ToInt16(item.Mes)
                    });
                }
                return lista;
            }
        }


        public ActionResult Graficos(string data)
        {
            ViewBag.Data = data;
            return PartialView("Graficos");
        }

        public ActionResult CaboFrioAereoConsumoVerde(string data)
        {
            var model = BuscarDados(data, "11", "01", "D", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Green)
                   .AddTitle("Cabo Frio - Aéreo - Consumo - Verde")
                   .AddSeries(
                    name: "CaboFrioAereoConsumoVerde",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                    .GetBytes("png");
            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoConsumoVerde(string data)
        {
            var model = BuscarDados(data, "11", "01", "D", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Green)

                   .AddTitle("Galeão - Aéreo - Consumo - Verde")
                   .AddSeries(
                    name: "GaleaoAereoConsumoVerde",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoConsumoAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "01", "V", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Cabo Frio - Aéreo - Consumo - Amarelo")
                   .AddSeries(
                    name: "CaboFrioAereoConsumoAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())

                .GetBytes("png");



            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoConsumoAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "01", "V", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Galeão - Aéreo - Consumo - Amarelo")
                   .AddSeries(
                    name: "GaleaoAereoConsumoAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoConsumoVermelho(string data)
        {
            var model = BuscarDados(data, "11", "01", "L", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Cabo Frio - Aéreo - Consumo - Vermelho")
                   .AddSeries(
                    name: "CaboFrioAereoConsumoVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoConsumoVermelho(string data)
        {
            var model = BuscarDados(data, "11", "01", "L", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Galeão - Aéreo - Consumo - Vermelho")
                   .AddSeries(
                    name: "GaleaoAereoConsumoVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "05", "V", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Cabo Frio - Aéreo - Admissão Temporaria - Amarelo")
                   .AddSeries(

                    name: "CaboFrioAereoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "05", "V", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Galeão - Aéreo - Admissão Temporaria - Amarelo")
                   .AddSeries(
                    name: "GaleaoAereoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDados(data, "11", "05", "L", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Cabo Frio - Aéreo - Admissão Temporaria - Vermelho")
                   .AddSeries(
                    name: "CaboFrioAereoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDados(data, "11", "05", "L", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Galeão - Aéreo - Admissão Temporaria - Vermelho")
                   .AddSeries(
                    name: "GaleaoAereoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoConsumoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "12", "V", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Cabo Frio - Aéreo - Consumo e Admissão Temporária - Amarelo")
                   .AddSeries(
                    name: "CaboFrioAereoConsumoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoConsumoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDados(data, "11", "12", "V", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Galeão - Aéreo - Consumo e Admissão Temporária - Amarelo")
                   .AddSeries(
                    name: "GaleaoAereoConsumoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult CaboFrioAereoConsumoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDados(data, "11", "12", "L", "0710200");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Cabo Frio - Aéreo - Consumo e Admissão Temporária - Vermelho")
                   .AddSeries(
                    name: "CaboFrioAereoConsumoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult GaleaoAereoConsumoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDados(data, "11", "12", "L", "0717700");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Galeão - Aéreo - Consumo e Admissão Temporária - Vermelho")
                   .AddSeries(
                    name: "GaleaoAereoConsumoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoConsumoVerde(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "01", "D");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Green)
                   .AddTitle("Marítimo - Consumo - Verde")
                   .AddSeries(
                    name: "MaritimoConsumoVerde",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoConsumoAmarelo(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "01", "V");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Marítimo - Consumo - Amarelo")
                   .AddSeries(
                    name: "MaritimoConsumoAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoConsumoVermelho(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "01", "L");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Marítimo - Consumo - Vermelho")
                   .AddSeries(
                    name: "MaritimoConsumoVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }
        public ActionResult MaritimoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "05", "V");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Marítimo - Admissão Temporária - Amarelo")
                   .AddSeries(
                    name: "MaritimoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "05", "L");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Marítimo - Admissão Temporária - Vermelho")
                   .AddSeries(
                    name: "MaritimoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoConsumoAdmissaoTemporariaAmarelo(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "12", "V");

            var Chart = new Chart(width: 600, height: 400, theme: ChartTheme.Yellow)
                   .AddTitle("Marítimo - Consumo e Admissão Temporária - Amarelo")
                   .AddSeries(
                    name: "MaritimoConsumoAdmissaoTemporariaAmarelo",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoConsumoAdmissaoTemporariaVermelho(string data)
        {
            var model = BuscarDadosMaritimo(data, "12", "12", "L");

            var Chart = new Chart(width: 600, height: 400, theme: myTheme)
                   .AddTitle("Marítimo - Consumo e Admissão Temporária - Vermelho")
                   .AddSeries(
                    name: "MaritimoConsumoAdmissaoTemporariaVermelho",
                    xValue: model.Select(y => y.Dia).ToArray(),
                    yValues: model.Select(y => y.TotalValor).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult AereoMediaDias(string data)
        {
            var model = BuscarMediaDias(data, "11");

            var Chart = new Chart(width: 600, height: 400)
                  .AddTitle("Aéreo - Média de Dias")
                   .AddSeries(
                    chartType: "line",
                    name: "AereoMediaDias",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.MediaDias).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }

        public ActionResult MaritimoMediaDias(string data)
        {
            var model = BuscarMediaDias(data, "12");

            var Chart = new Chart(width: 600, height: 400)
                   .AddTitle("Marítimo - Média de Dias")
                   .AddSeries(
                    chartType: "line",
                    name: "MaritimoMediaDias",
                    xValue: model.Select(y => y.Mes).ToArray(),
                    yValues: model.Select(y => y.MediaDias).ToArray())
                .GetBytes("png");

            return File(Chart, "image/png");

        }     

    }
}
