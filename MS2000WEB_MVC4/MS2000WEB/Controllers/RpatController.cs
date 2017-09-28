using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;

namespace MS2000WEB.Controllers
{
    //public class RpatController : Controller
    //{
    //    private MS2000Context db = new MS2000Context();

    //    public ActionResult Index(string processo, string Codigo)
    //    {
    //        if (string.IsNullOrEmpty(Codigo))
    //        {
    //            if (string.IsNullOrEmpty(processo))
    //            {
    //                return View();
    //            }
    //            else
    //            {
    //                using (MS2000Context ctx = new MS2000Context())
    //                {
    //                    var model = (from r in ctx.RPATs
    //                                 where r.Fk_Processo == processo
    //                                 orderby r.ID descending
    //                                 select new RpatViewModel
    //                                 {
    //                                     ID = r.ID,
    //                                     Fk_Importador = r.Fk_Importador,
    //                                     Fk_Processo = r.Fk_Processo,
    //                                     Numero_RCR = r.Numero_RCR,
    //                                     Data_Inicial = r.Data_Inicial,
    //                                     Data_Final = r.Data_Final,
    //                                     Dt_Prorrogacao = r.Dt_Prorrogacao,
    //                                     Justificativa = r.Justificativa,
    //                                     Observacao = r.Observacao,
    //                                     Data_Criacao = r.Data_Criacao
    //                                 }).ToList();
    //                    return View(model);
    //                }
    //            }                    
    //        }
    //        else
    //        {
    //            using (MS2000Context ctx = new MS2000Context())
    //            {
    //                var model = (from r in ctx.RPATs
    //                             where r.Fk_Processo == Codigo
    //                             orderby r.ID descending
    //                             select new RpatViewModel
    //                             {
    //                                 ID = r.ID,
    //                                 Fk_Importador = r.Fk_Importador,
    //                                 Fk_Processo = r.Fk_Processo,
    //                                 Numero_RCR = r.Numero_RCR,
    //                                 Data_Inicial = r.Data_Inicial,
    //                                 Data_Final = r.Data_Final,
    //                                 Dt_Prorrogacao = r.Dt_Prorrogacao,
    //                                 Justificativa = r.Justificativa,
    //                                 Observacao = r.Observacao,
    //                                 Data_Criacao = r.Data_Criacao
    //                             }).ToList();
    //                return View(model);
    //            }
    //        }           
    //    }

    //    public ActionResult Create()
    //    {
    //        return View();
    //    }

    //    //
    //    // POST: /Default1/Create

    //    [HttpPost]
    //    public ActionResult Create(RPAT rpat)
    //    {
    //        if (ModelState.IsValid)
    //        {
    //            using (MS2000Context ctx = new MS2000Context())
    //            {
    //                var model = (from p in ctx.Processos
    //                             from i in ctx.Importadores
    //                             from c in ctx.Contratos
    //                             where p.Importador == i.Codigo &&
    //                                 p.Contrato == c.Contrato1 &&
    //                                 p.Importador == c.Importador &&
    //                                 p.Codigo == rpat.Fk_Processo
    //                             select new
    //                                 {
    //                                     Processo = p.Codigo,
    //                                     RCR = p.Numero_RCR,
    //                                     CodigoImporador = i.Codigo,
    //                                     c.Vigencia_inicial,
    //                                     c.Vigencia_final,
    //                                     c.Data_prorrogacao,
    //                                     p.RCR_LOCAL
    //                                 }).First();

    //                rpat.Data_Criacao = DateTime.Now.Date;
    //                rpat.Data_Inicial = model.Vigencia_inicial;
    //                if (model.Data_prorrogacao.ToString() == "")
    //                {
    //                    rpat.Data_Final = model.Vigencia_final;
    //                }
    //                else
    //                {
    //                    rpat.Data_Final = model.Data_prorrogacao;
    //                }
    //                rpat.Dt_Prorrogacao = model.Data_prorrogacao;
    //                rpat.Numero_RCR = model.RCR;
    //                rpat.Fk_Importador = model.CodigoImporador;
    //            }
    //            db.RPATs.Add(rpat);
    //            db.SaveChanges();
    //            return RedirectToAction("Index", new { processo = rpat.Fk_Processo });
    //        }

    //        return View(rpat);
    //    }


    //    //public RpatViewModel getDadosProcesso(string processo)
    //    //{
    //    //    using (MS2000Context ctx = new MS2000Context())
    //    //    {
    //    //        //var model = (from p in ctx.Processos
    //    //        //             join i in ctx.Importadores on p.Importador equals i.Codigo
    //    //        //             where p.Codigo == processo
    //    //        //             select new RpatViewModel
    //    //        //             {
    //    //        //                 Id = p.Codigo,
    //    //        //                 RCR = p.Numero_RCR,
    //    //        //                 CNPJ = i.CNPJ_CPF_COMPLETO,
    //    //        //                 RazaoSocial = i.Razao_Social
    //    //        //             }).First();
    //    //        var query = "select p.Codigo,p.Numero_RCR, i.CNPJ_CPF_COMPLETO,i.Razao_Social ,c.Vigencia_inicial,c.Vigencia_final,c.Data_prorrogacao,p.RCR_LOCAL " +
    //    //            "from Importadores i inner join Processos p on p.Importador = i.Codigo inner join Contratos c on P.Contrato = c.Contrato and P.Importador = c.Importador where p.Codigo  = @processo";
    //    //        var model = ctx.Database.SqlQuery<RpatViewModel>(query, new SqlParameter("@processo", processo)).First();

    //    //        return model;
    //    //    }
    //    //}

    //    public ActionResult PrintReport(int Id)
    //    {
    //        using (MS2000Context ctx = new MS2000Context())
    //        {
    //            var dadosProcesso = (from p in ctx.Processos
    //                                 from i in ctx.Importadores
    //                                 from r in ctx.RPATs
    //                                 where i.Codigo == r.Fk_Importador &&
    //                                      p.Codigo == r.Fk_Processo &&
    //                                 r.ID == Id
    //                                 select new RpatViewModel
    //                                 {
    //                                     ID = r.ID,
    //                                     Fk_Importador = r.Fk_Importador,
    //                                     Fk_Processo = r.Fk_Processo,
    //                                     Numero_RCR = r.Numero_RCR,
    //                                     Data_Inicial = r.Data_Inicial,
    //                                     Data_Final = r.Data_Final,
    //                                     Dt_Prorrogacao = r.Dt_Prorrogacao,
    //                                     Justificativa = r.Justificativa,
    //                                     Observacao = r.Observacao,
    //                                     Data_Criacao = r.Data_Criacao,
    //                                     RCR_LOCAL = p.RCR_LOCAL,
    //                                     Razao_Social = i.Razao_Social,
    //                                     Cnpj_Cpf_Completo = i.CNPJ_CPF_COMPLETO
    //                                 }).First();

    //            LocalReport localReport = new LocalReport();
    //            localReport.ReportPath = Server.MapPath("~/Views/Rpat/rptRPAT.rdlc");

    //            IList<ReportParameter> parametros = new List<ReportParameter>();

    //            parametros.Add(new ReportParameter("Justificativa", dadosProcesso.Justificativa));
    //            parametros.Add(new ReportParameter("Observacao", dadosProcesso.Observacao));
    //            parametros.Add(new ReportParameter("RCR", dadosProcesso.Numero_RCR));
    //            parametros.Add(new ReportParameter("VigenciaInicial", string.IsNullOrEmpty(dadosProcesso.Data_Inicial.ToString()) ? null : dadosProcesso.Data_Inicial.ToString()));
    //            parametros.Add(new ReportParameter("VigenciaFinal", string.IsNullOrEmpty(dadosProcesso.Data_Final.ToString()) ? null : dadosProcesso.Data_Final.ToString()));
    //            parametros.Add(new ReportParameter("DataProrrogacao", string.IsNullOrEmpty(dadosProcesso.Dt_Prorrogacao.ToString()) ? null : dadosProcesso.Dt_Prorrogacao.ToString()));
    //            if (!string.IsNullOrEmpty(dadosProcesso.RCR_LOCAL))
    //            {
    //                parametros.Add(new ReportParameter("Local", dadosProcesso.RCR_LOCAL));
    //            }
    //            else
    //            {
    //                parametros.Add(new ReportParameter("Local", "RIO DE JANEIRO"));
    //            }
    //            parametros.Add(new ReportParameter("RazaoSocial", dadosProcesso.Razao_Social));
    //            parametros.Add(new ReportParameter("CNPJ", dadosProcesso.Cnpj_Cpf_Completo));
    //            localReport.SetParameters(parametros);

    //            string reportType = "PDF";
    //            string mimeType;
    //            string encoding;
    //            string fileNameExtension;
    //            //The DeviceInfo settings should be changed based on the reportType             
    //            //http://msdn2.microsoft.com/en-us/library/ms155397.aspx             
    //            //string deviceInfo =
    //            //    "<DeviceInfo>" +
    //            //    "  <OutputFormat>PDF</OutputFormat>" +
    //            //    "  <PageWidth>8.5in</PageWidth>" +
    //            //    "  <PageHeight>11in</PageHeight>" +
    //            //    "  <MarginTop>0.5in</MarginTop>" +
    //            //    "  <MarginLeft>1in</MarginLeft>" +
    //            //    "  <MarginRight>1in</MarginRight>" +
    //            //    "  <MarginBottom>0.5in</MarginBottom>" +
    //            //    "</DeviceInfo>";
    //            Warning[] warnings;
    //            string[] streams;
    //            byte[] renderedBytes;
    //            //Render the report             
    //            renderedBytes = localReport.Render(
    //                reportType,
    //                null,
    //                out mimeType,
    //                out encoding,
    //                out fileNameExtension,
    //                out streams,
    //                out warnings);
    //            //Response.AddHeader("content-disposition", "attachment; filename=NorthWindCustomers." + fileNameExtension);             

    //            //download pdf
    //            var response = System.Web.HttpContext.Current.Response;
    //            response.Clear();
    //            Response.AddHeader("Content-Type", "binary/octet-stream");
    //            Response.AddHeader("content-disposition",
    //                               "attachment; filename=RPAT_" + DateTime.Now.ToString("MM-dd-yyyy") + "." +
    //                               fileNameExtension);
    //            response.Flush();
    //            response.BinaryWrite(renderedBytes);
    //            response.Flush();
    //            response.End();
    //        }
    //        return View(); //File(renderedBytes, mimeType);
    //    }

    //}
}
