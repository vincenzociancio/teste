using Microsoft.Reporting.WebForms;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class RatProrrogacaoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        public ActionResult Index(string processo)
        {
            if (string.IsNullOrEmpty(processo))
            {
                return View();
            }
            else
            {
                var model = (from r in db.RAT_Prorrogacao
                             where r.Fk_Processo == processo
                             orderby r.ID descending
                             select new RatProrrogacaoViewModel
                             {
                                 ID = r.ID,
                                 Fk_Processo = r.Fk_Processo,
                                 Data_Criacao = r.Data_Criacao,
                                 Numero_Rat = r.Numero_RAT
                             }).ToList();
                return View(model);
            }
        }

        //
        // GET: /RatProrrogacao/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /RatProrrogacao/Create

        public ActionResult Create()
        {
            PopulateFundamentacaoPedidoDropDownList();
            return View();
        }

        //
        // POST: /RatProrrogacao/Create

        [HttpPost]
        public ActionResult Create(RAT_Prorrogacao rat)
        {
            var verificaProcessoExiste = db.RAT_Prorrogacao.Where(c => c.Fk_Processo == rat.Fk_Processo).FirstOrDefault();
            if (!(verificaProcessoExiste == null))
            {
                TempData["Erro"] = "Já existe um Rat para este processo, o qual está tentando incluir! Segue abaixo caso queira alterá-lo!";
                return RedirectToAction("Index", new { processo = rat.Fk_Processo });
            }

            if (ModelState.IsValid)
            {

                var query = "select p.Numero_RCR,rat.Numero_Rat from Processos p " +
                            "left join RAT on p.Codigo = RAT.Fk_Processo " +
                            "where p.Codigo = @processo";

                var dados = db.Database.SqlQuery<RatProrrogacaoViewModel>(query, new SqlParameter("@processo", rat.Fk_Processo)).First();        
                //var model = (from p in db.Processos
                //             join r in db.RATs.DefaultIfEmpty() on p.Codigo equals r.Fk_Processo
                //             where 
                //             p.Codigo == rat.Fk_Processo
                //             select new
                //             {
                //                 Processo = p.Codigo,
                //                 NumeroRCR = p.Numero_RCR,
                //                 NumeroRAT = r.Numero_Rat,
                //             }).First();

                rat.Data_Criacao = DateTime.Now.Date;
                if (string.IsNullOrEmpty(dados.Numero_Rat))
                {
                    rat.Numero_RAT = dados.Numero_RCR;
                }
                else
                {
                    rat.Numero_RAT = dados.Numero_Rat;
                }

                if (rat.Fund_Pedido == "RAT")
                {
                    rat.Inst_Ped_Contrato = true;
                    rat.Inst_Ped_Contrato_arrendamento = false;
                }
                else
                {
                    rat.Inst_Ped_Contrato = false;
                    rat.Inst_Ped_Contrato_arrendamento = true;
                }

                rat.Inst_Ped_Fatura = false;
                rat.Inst_Ped_Outros = true;
                rat.Inst_Ped_Procuracao = false;
                rat.Opcao_Tributario = false;

            }
            db.RAT_Prorrogacao.Add(rat);
            db.SaveChanges();
            TempData["Sucesso"] = "RAT gravado com sucesso!";
            return RedirectToAction("Index", new { processo = rat.Fk_Processo });
        }
        //
        // GET: /RatProrrogacao/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /RatProrrogacao/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }    

        private void PopulateFundamentacaoPedidoDropDownList(object selectedFundamentacao = null)
        {
            string[] arrFund = new string[] { "REP", "PROR", "RAT" };
            var FundamentacaoPedido = (from i in db.Fundamentacao_RCR
                                       where  arrFund.Contains(i.Codigo)
                                       orderby i.Descricao
                                       select new { Codigo = i.Codigo, Descricao = i.Descricao });

            ViewBag.Fund_Pedido = new SelectList(FundamentacaoPedido, "Codigo", "Descricao", selectedFundamentacao);
        }

        public ActionResult PrintReport(int Id)
        {
            var query = "select r.Fk_Processo,i.Razao_Social,i.CNPJ_CPF_COMPLETO,p.Codigo_Cliente,i.Razao_Social,i.CNPJ_CPF_COMPLETO,i.endereco,r.Fund_Pedido," +
                        "r.Inst_Ped_Outros,r.Inst_Ped_Procuracao,r.Opcao_Tributario,r.Inst_Ped_Contrato,r.Inst_Ped_Contrato_arrendamento," +
                        "r.Inst_Ped_Fatura,r.Numero_Rat,f.Descricao,p.RCR_LOCAL,(i.Endereco + ' - '+ i.Numero + ' - ' + case when i.Complemento is null then '' else i.Complemento +' - ' end +i.Bairro + ' - ' +i.Cidade + ' - ' +i.CEP + ' - ' +i.UF) as Endereco,r.Inf_Complementares,r.Data_ADE,r.Data_AITEE,r.Numero_AITEE " +
                        "from RAT_Prorrogacao r inner join processos p on (r.fk_processo = p.codigo)  " +
                        "inner join importadores i on (i.codigo = p.Importador) " +
                        "inner join Contratos c on (p.Contrato = c.Contrato and p.Importador = c.Importador) " +
                        "left join Fundamentacao_RCR f on (f.codigo = r.Fund_Pedido) " +
                        "where r.id = @id";

            var dadosProcesso = db.Database.SqlQuery<RatProrrogacaoViewModel>(query, new SqlParameter("@id", Id)).First();        
          

            LocalReport localReport = new LocalReport();
            localReport.ReportPath = Server.MapPath("~/Views/RatProrrogacao/rptRATProrrogacao.rdlc");

            localReport.DataSources.Clear();

            var itens = (from p in db.ItensFaturas
                         from i in db.Tributacao_Item_Fatura
                         where p.Processo == i.Processo &&
                               p.Fatura == i.Fatura &&
                               p.Sequencial == i.Sequencial_Item &&
                               i.Regime_Tributacao_II == "5" &&
                               p.Processo == dadosProcesso.Fk_Processo
                         select new
                         {
                             p.Descricao_Produto,
                             p.Numero_serie
                         }).ToList();//.Distinct();
          
            ReportDataSource rps = new ReportDataSource("DataSet1", itens);

            localReport.DataSources.Add(rps);
            //localReport.Refresh();

            IList<ReportParameter> parametros = new List<ReportParameter>();


            //if (!string.IsNullOrEmpty(dadosProcesso.RCR_LOCAL))
            //{
            //    parametros.Add(new ReportParameter("Local", dadosProcesso.RCR_LOCAL));
            //}
            //else
            //{
                parametros.Add(new ReportParameter("Local", "RIO DE JANEIRO"));
           // }
            parametros.Add(new ReportParameter("Endereço", dadosProcesso.Endereco));
            parametros.Add(new ReportParameter("NumeroRAT", dadosProcesso.Numero_Rat));
            parametros.Add(new ReportParameter("RazaoSocial", dadosProcesso.Razao_Social));
            parametros.Add(new ReportParameter("CNPJ", dadosProcesso.Cnpj_Cpf_Completo));

            if (dadosProcesso.Opcao_Tributario == true)
            {
                parametros.Add(new ReportParameter("Sim", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("Nao", "x"));
            }

            if (dadosProcesso.Inst_Ped_Outros == true)
            {
                parametros.Add(new ReportParameter("Outros", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("Outros", ""));
            }

            if (dadosProcesso.Inst_Ped_Fatura == true)
            {
                parametros.Add(new ReportParameter("Fatura", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("Fatura", ""));
            }

            if (dadosProcesso.Inst_Ped_Procuracao == true)
            {
                parametros.Add(new ReportParameter("Procuracao", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("Procuracao", ""));
            }

            if (dadosProcesso.Inst_Ped_Contrato == true)
            {
                parametros.Add(new ReportParameter("Contrato", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("Contrato", ""));
            }

            if (dadosProcesso.Inst_Ped_Contrato_arrendamento == true)
            {
                parametros.Add(new ReportParameter("ContratoArrendamento", "x"));
            }
            else
            {
                parametros.Add(new ReportParameter("ContratoArrendamento", ""));
            }
            
            if (dadosProcesso.Data_ADE.ToString() == "")
            {
                parametros.Add(new ReportParameter("Fase", "Em fase de Prorrogação"));              
            }
            else
            {
               
                parametros.Add(new ReportParameter("Fase", ""));
            }
        //    parametros.Add(new ReportParameter("DataADE", dadosProcesso.Data_ADE.ToString()));
            parametros.Add(new ReportParameter("numeroAITEE",dadosProcesso.Numero_AITEE));
            parametros.Add(new ReportParameter("DataADE", string.IsNullOrEmpty(dadosProcesso.Data_ADE.ToString()) ? null : dadosProcesso.Data_ADE.ToString()));
            parametros.Add(new ReportParameter("DataAITEE", string.IsNullOrEmpty(dadosProcesso.Data_AITEE.ToString()) ? null : dadosProcesso.Data_AITEE.ToString()));
            parametros.Add(new ReportParameter("Data", DateTime.Now.Date.ToString()));
            parametros.Add(new ReportParameter("InfComplementares", dadosProcesso.Inf_Complementares));
            parametros.Add(new ReportParameter("Fundamentacao", dadosProcesso.Descricao));        

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
                               "attachment; filename=RATPRORROGACAO_" +dadosProcesso.Fk_Processo.Replace("/","")+ "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(renderedBytes);
            response.Flush();
            response.End();

            return View(); //File(renderedBytes, mimeType);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
