using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using System.IO;
using MS2000WEB.Models.Security;
using Microsoft.Reporting.WebForms;

namespace MS2000WEB.Controllers
{
    public class FormularioDesunitizacaoController : Controller
    {
        //
        // GET: /FormularioDesunitizacao/
        private MS2000Context db = new MS2000Context();

        public ActionResult Index()
        {
           return View();
        }

        [HttpPost]
        public ActionResult PrintReport(FormCollection form, HttpPostedFileBase file)
        {
            string Processo = form["txtprocesso"];
            var query = "select p.Codigo as CodigoProcesso, " +
                        " i.Codigo as CodigoImportador, i.CNPJ_CPF_COMPLETO as CnpjCPf, i.Razao_Social, i.Endereco, i.Numero, i.Complemento, i.bairro, i.Cidade, i.CEP, i.UF, i.Estado, " +
                        " cp.Numerodoccarga, cp.Embarcacao, cp.Data_Chegada_URF_Cheg " +
                        " from Importadores i " +
                        " inner join PROCESSOS p on p.Importador = i.Codigo " +
                        " left join Conhecimento_Processo cp on cp.Processo = p.Codigo " +
                        " where p.Codigo = @codigo ";

            var dadosProcesso = db.Database.SqlQuery<FormularioDesunitizacaoViewModel>(query, new SqlParameter("@codigo", Processo)).First();

            LocalReport localReport = new LocalReport();
            localReport.EnableExternalImages = true;
            localReport.ReportPath = Server.MapPath("~/Views/FormularioDesunitizacao/rptFormularioDesunitizacao.rdlc");

            localReport.DataSources.Clear();

            //localReport.Refresh();       
            IList<ReportParameter> parametros = new List<ReportParameter>();
            if (file != null)
            {
                byte[] arrFileByte = new byte[file.ContentLength];

                Stream stream = file.InputStream;

                stream.Read(arrFileByte, 0, file.ContentLength);

                string logo = Convert.ToBase64String(arrFileByte);
                parametros.Add(new ReportParameter("Logo", logo));
            }
            else
            {
                string logo = "";
                parametros.Add(new ReportParameter("Logo", logo));
            }

            parametros.Add(new ReportParameter("LogoMimeType", "image/png"));
            parametros.Add(new ReportParameter("Importador", dadosProcesso.Razao_Social));
            parametros.Add(new ReportParameter("Endereco", dadosProcesso.Endereco));
            parametros.Add(new ReportParameter("Numero", dadosProcesso.Numero));
            parametros.Add(new ReportParameter("Complemento", dadosProcesso.Complemento));
            parametros.Add(new ReportParameter("Bairro", dadosProcesso.bairro));
            parametros.Add(new ReportParameter("Cidade", dadosProcesso.Cidade));
            parametros.Add(new ReportParameter("CEP", dadosProcesso.CEP));
            parametros.Add(new ReportParameter("CNPJ", dadosProcesso.CnpjCPf));
            parametros.Add(new ReportParameter("Embarcacao", dadosProcesso.Embarcacao));
            parametros.Add(new ReportParameter("DataChegada", string.IsNullOrEmpty(dadosProcesso.Data_Chegada_URF_Cheg.ToString()) ? null : dadosProcesso.Data_Chegada_URF_Cheg.ToString()));
            parametros.Add(new ReportParameter("House", dadosProcesso.Numerodoccarga));
            parametros.Add(new ReportParameter("Terminal", form["txtterminal"]));
            parametros.Add(new ReportParameter("TerminalEndereco", form["txtenderecoterminal"]));
            parametros.Add(new ReportParameter("InformacaoComplementar", form["txtinformacao"]));
            parametros.Add(new ReportParameter("Conteiner1", form["txtconteiner1"]));
            parametros.Add(new ReportParameter("Conteiner2", form["txtconteiner2"]));
            parametros.Add(new ReportParameter("Conteiner3", form["txtconteiner3"]));
            parametros.Add(new ReportParameter("Conteiner4", form["txtconteiner4"]));
            parametros.Add(new ReportParameter("BL1", form["txtbl1"]));
            parametros.Add(new ReportParameter("BL2", form["txtbl2"]));
            parametros.Add(new ReportParameter("BL3", form["txtbl3"]));
            parametros.Add(new ReportParameter("BL4", form["txtbl4"]));
            parametros.Add(new ReportParameter("Porto1", form["txtporigem1"]));
            parametros.Add(new ReportParameter("Porto2", form["txtporigem2"]));
            parametros.Add(new ReportParameter("Porto3", form["txtporigem3"]));
            parametros.Add(new ReportParameter("Porto4", form["txtporigem4"]));

            parametros.Add(new ReportParameter("Data", DateTime.Now.ToString("dd/MM/yyyy")));
            localReport.SetParameters(parametros);

            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            //The DeviceInfo settings should be changed based on the reportType             
            //http://msdn2.microsoft.com/en-us/library/ms155397.aspx             
            //string deviceInfo =
            //    "<DeviceInfo>" +
            //    "  <OutputFormat>PDF</OutputFormat>" +
            //    "  <PageWidth>8.5in</PageWidth>" +
            //    "  <PageHeight>11in</PageHeight>" +
            //    "  <MarginTop>0.5in</MarginTop>" +
            //    "  <MarginLeft>1in</MarginLeft>" +
            //    "  <MarginRight>1in</MarginRight>" +
            //    "  <MarginBottom>0.5in</MarginBottom>" +
            //    "</DeviceInfo>";
            Warning[] warnings;
            string[] streams;
            byte[] renderedBytes;
            //Render the report             
            renderedBytes = localReport.Render(
                reportType,
                null,
                out mimeType,
                out encoding,
                out fileNameExtension,
                out streams,
                out warnings);
            //Response.AddHeader("content-disposition", "attachment; filename=NorthWindCustomers." + fileNameExtension);             
           
            //download pdf
            var response = System.Web.HttpContext.Current.Response;
            response.Clear();
            Response.AddHeader("Content-Type", "binary/octet-stream");
            Response.AddHeader("content-disposition",
                               "attachment; filename=FormularioDesunitizacao_" + DateTime.Now.ToString("MM-dd-yyyy") + "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(renderedBytes);
            response.Flush();
            response.End();
          
            TempData["Sucesso"] = "Formulário de Desunitização gerado com sucesso!";
           
            return View();
        }
    }
}
