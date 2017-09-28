using Microsoft.Reporting.WebForms;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class RatController : Controller
    {
        private MS2000Context db = new MS2000Context();
        //
        // GET: /Rat/       
        public ActionResult Index(string processo)
        {

            if (string.IsNullOrEmpty(processo))
            {
                return View();
            }
            else
            {
                var model = (from p in db.Processos
                             from r in db.RATs
                             from i in db.Importadores
                             from c in db.Contratos
                             where p.Importador == i.Codigo &&
                                 p.Contrato == c.Contrato1 &&
                                 p.Importador == c.Importador &&
                                 p.Codigo == r.Fk_Processo &&
                                 r.Fk_Processo == processo
                             orderby r.ID descending
                             select new RatViewModel
                             {
                                 ID = r.ID,
                                 Fk_Importador = r.Fk_Importador,
                                 Fk_Processo = r.Fk_Processo,
                                 Data_Inicial = c.Vigencia_inicial,
                                 Prazo_Requerido = c.Data_prorrogacao == null ? c.Vigencia_final : c.Data_prorrogacao,
                                 Data_Criacao = r.Data_Criacao,
                                 Numero_Rat = r.Numero_Rat,
                                 Data_Entrada = r.Data_Entrada,
                                 Data_Aprovacao = r.Data_Aprovacao
                             }).ToList();
                return View(model);
            }
        }

        public ActionResult Create()
        {
            PopulateFundamentacaoPedidoDropDownList();
            return View();
        }

        //
        // POST: /Default2/Create

        [HttpPost]
        public ActionResult Create(RAT rat)
        {
            var verificaProcessoExiste = db.RATs.Where(c => c.Fk_Processo == rat.Fk_Processo).FirstOrDefault();
            if (!(verificaProcessoExiste == null))
            {
                TempData["Erro"] = "Já existe um Rat para este processo, o qual está tentando incluir! Segue abaixo caso queira alterá-lo!";
                return RedirectToAction("Index", new { processo = rat.Fk_Processo });
            }

            if (ModelState.IsValid)
            {

                var model = (from p in db.Processos
                             from i in db.Importadores
                             from c in db.Contratos
                             where p.Importador == i.Codigo &&
                                 p.Contrato == c.Contrato1 &&
                                 p.Importador == c.Importador &&
                                 p.Codigo == rat.Fk_Processo
                             select new
                             {
                                 Repetro = c.Repetro,
                                 Processo = p.Codigo,
                                 CodigoImporador = i.Codigo,
                                 p.Fundamentacao_RCR,
                                 c.Vigencia_inicial,
                                 c.Vigencia_final,
                                 c.Data_prorrogacao,
                                 p.RCR_LOCAL,
                                 p.Codigo_Cliente,
                             }).First();

                if (model.Repetro == 1)
                {
                    TempData["Erro"] = @"Não foi possível realizar o cadastro, pois se trata de um processo do REPETRO. Favor realizar o cadastro em: Processos\Emissão de Rat\Repetro";
                    return RedirectToAction("Index", new { processo = rat.Fk_Processo });
                }

                rat.Data_Criacao = DateTime.Now.Date;
                rat.Data_Inicial = model.Vigencia_inicial;
                if (model.Data_prorrogacao.ToString() == "")
                {
                    rat.Prazo_Requerido = model.Vigencia_final;
                }
                else
                {
                    rat.Prazo_Requerido = model.Data_prorrogacao;
                }
                // rat.Fund_Pedido = ;
                rat.Inst_Ped_Fatura = true;
                rat.Inst_Ped_Outros = true;
                rat.Inst_Ped_Procuracao = true;
                rat.Cod_Fatura = model.Codigo_Cliente;
                rat.Inf_Adicionais = "";
                //rat.Numero_RCR = model.RCR;
                rat.Fk_Importador = model.CodigoImporador;
            }
            db.RATs.Add(rat);
            db.SaveChanges();
            TempData["Sucesso"] = "RAT gravado com sucesso!";
            return RedirectToAction("Index", new { processo = rat.Fk_Processo });

            //  return View(rat);
        }

        public ActionResult Edit(int id = 0)
        {
            RAT rat = db.RATs.Find(id);
            if (rat == null)
            {
                return HttpNotFound();
            }
            PopulateFundamentacaoPedidoDropDownList(rat.Fund_Pedido);
            return View(rat);
        }

        //
        // POST: /Default2/Edit/5

        [HttpPost]
        public ActionResult Edit(RAT rat)
        {
            if (ModelState.IsValid)
            {
                var model = (from p in db.Processos
                             from i in db.Importadores
                             from c in db.Contratos
                             where p.Importador == i.Codigo &&
                                 p.Contrato == c.Contrato1 &&
                                 p.Importador == c.Importador &&
                                 p.Codigo == rat.Fk_Processo
                             select new
                             {
                                 Repetro = c.Repetro,
                                 Processo = p.Codigo,
                                 CodigoImporador = i.Codigo,
                                 p.Fundamentacao_RCR,
                                 c.Vigencia_inicial,
                                 c.Vigencia_final,
                                 c.Data_prorrogacao,
                                 p.RCR_LOCAL,
                                 p.Codigo_Cliente,
                             }).First();

                rat.Data_Inicial = model.Vigencia_inicial;
                if (model.Data_prorrogacao.ToString() == "")
                {
                    rat.Prazo_Requerido = model.Vigencia_final;
                }
                else
                {
                    rat.Prazo_Requerido = model.Data_prorrogacao;
                }

                db.Entry(rat).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "RAT Alterado com sucesso!";
                return RedirectToAction("Index", new { processo = rat.Fk_Processo });
            }
            return View(rat);
        }


        private void PopulateFundamentacaoPedidoDropDownList(object selectedFundamentacao = null)
        //   public ActionResult PopulateTipoDocumentosDropDownList()
        {
            string[] fundamentos = { "141", "1415" };

            var FundamentacaoPedido = (from i in db.Fundamentacao_RCR
                                       where !fundamentos.Contains(i.Codigo)
                                       orderby i.Descricao
                                       select new { Codigo = i.Codigo, Descricao = i.Descricao });

            ViewBag.Fund_Pedido = new SelectList(FundamentacaoPedido, "Codigo", "Descricao", selectedFundamentacao);
            //ViewData["FundamentacaoPedidos"] = new SelectList(FundamentacaoPedido, "Codigo", "Descricao");
            //  return View();
        }

        //public RatViewModel getDadosProcesso(string processo)
        //{
        //    using (MS2000Context ctx = new MS2000Context())
        //    {
        //        //var model = (from p in ctx.Processos
        //        //             join i in ctx.Importadores on p.Importador equals i.Codigo
        //        //             where p.Codigo == processo
        //        //             select new RpatViewModel
        //        //             {
        //        //                 Id = p.Codigo,
        //        //                 RCR = p.Numero_RCR,
        //        //                 CNPJ = i.CNPJ_CPF_COMPLETO,
        //        //                 RazaoSocial = i.Razao_Social
        //        //             }).First();
        //        var query = "select p.Codigo,p.Numero_RCR, i.CNPJ_CPF_COMPLETO,i.Razao_Social,i.Endereco " +
        //            "from Importadores i inner join Processos p on p.Importador = i.Codigo where p.Codigo = @processo";
        //        var model = ctx.Database.SqlQuery<RatViewModel>(query, new SqlParameter("@processo", processo)).First();

        //        return model;
        //    }
        //}

        public ActionResult PrintReport(int Id)
        {
            var query = "select r.Fk_Importador,r.Fk_Processo, r.Data_Inicial,r.Prazo_Requerido,i.Razao_Social,i.CNPJ_CPF_COMPLETO,p.Codigo_Cliente," +
                        "r.Inst_Ped_Outros,r.Inst_Ped_Procuracao,r.Opcao_Tributario,r.Inst_Ped_Contrato,r.Inst_Ped_Contrato_arrendamento," +
                        "r.Inst_Ped_Fatura,r.Numero_Rat,r.Inf_Adicionais,f.Descricao,p.RCR_LOCAL,(i.Endereco + ' - '+ i.Numero + ' - ' + case when i.Complemento is null then '' else i.Complemento +' - ' end +i.Bairro + ' - ' +i.Cidade + ' - ' +i.CEP + ' - ' +i.UF) as Endereco,r.Inf_Complementares,c.Vigencia_inicial ,c.Vigencia_final,c.Data_prorrogacao " +
                        "from rat r inner join processos p on (r.fk_processo = p.codigo) " +
                        "inner join importadores i on (i.codigo = r.fk_importador) " +
                        "inner join Contratos c on (p.Contrato = c.Contrato and p.Importador = c.Importador) " +
                        "left join Fundamentacao_RCR f on (f.codigo = r.Fund_Pedido) " +
                        "where r.id = @id";

            var dadosProcesso = db.Database.SqlQuery<RatViewModel>(query, new SqlParameter("@id", Id)).First();

            //var dadosProcesso = (from r in ctx.RATs
            //                     from p in ctx.Processos
            //                     from i in ctx.Importadores
            //                     from f in ctx.Fundamentacao_RCR
            //                     where r.ID == Id &&
            //                     i.Codigo == r.Fk_Importador &&
            //                     p.Codigo == r.Fk_Processo &&
            //                     f.Codigo.Contains(r.Fund_Pedido)

            //                     select new RatViewModel
            //                     {
            //                         ID = r.ID,
            //                         Fk_Importador = r.Fk_Importador,
            //                         Fk_Processo = r.Fk_Processo,
            //                         Data_Inicial = r.Data_Inicial,
            //                         Data_Final = r.Prazo_Requerido,
            //                         // Data_Criacao = r.Data_Criacao,
            //                         //RCR_LOCAL = p.RCR_LOCAL,
            //                         Razao_Social = i.Razao_Social,
            //                         Cnpj_Cpf_Completo = i.CNPJ_CPF_COMPLETO,
            //                         Codigo_Fatura = p.Codigo_Cliente,
            //                         Outros = r.Inst_Ped_Outros,
            //                         Procuracao = r.Inst_Ped_Procuracao,
            //                         Opcao = r.Opcao_Tributario,
            //                         Contrato = r.Inst_Ped_Contrato,
            //                         Contrato_arrendamento = r.Inst_Ped_Contrato_arrendamento,
            //                         //Data = DateTime.Now.Date,
            //                         Fatura = r.Inst_Ped_Fatura,
            //                         Numero_Rat = r.Numero_Rat,
            //                         Descricao = r.Inf_Adicionais,
            //                         Fundamentacao = f.Descricao,
            //                         LOCAL = p.RCR_LOCAL,
            //                         Endereco = i.Endereco,
            //                         InformacaoComplementares = r.Inf_Complementares
            //                     }).First();

            string Cod_fatura = "";
            var fatura = (from f in db.Faturas
                          where f.Processo == dadosProcesso.Fk_Processo
                          select new
                          {
                              f.Codigo
                          }
                   ).ToList();

            foreach (var item in fatura)
            {
                Cod_fatura = Cod_fatura + item.Codigo + " / ";
            }

            LocalReport localReport = new LocalReport();
            localReport.ReportPath = Server.MapPath("~/Views/Rat/rptRAT.rdlc");

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
            //  List<ItensFatura> itens = db.ItensFaturas.Where(x => x.Processo == dadosProcesso.Fk_Processo).ToList();
            ReportDataSource rps = new ReportDataSource("DataSet1", itens);

            localReport.DataSources.Add(rps);
            //localReport.Refresh();

            IList<ReportParameter> parametros = new List<ReportParameter>();


            if (!string.IsNullOrEmpty(dadosProcesso.RCR_LOCAL))
            {
                parametros.Add(new ReportParameter("Local", dadosProcesso.RCR_LOCAL));
            }
            else
            {
                parametros.Add(new ReportParameter("Local", "RIO DE JANEIRO"));
            }
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

            //parametros.Add(new ReportParameter("Fundamentacao", dadosProcesso.Fundamentacao));
            //parametros.Add(new ReportParameter("DataInicial", string.IsNullOrEmpty(dadosProcesso.Data_Inicial.ToString()) ? null : dadosProcesso.Data_Inicial.ToString()));
            //parametros.Add(new ReportParameter("DataFinal", string.IsNullOrEmpty(dadosProcesso.Prazo_Requerido.ToString()) ? null : dadosProcesso.Prazo_Requerido.ToString()));

            parametros.Add(new ReportParameter("DataInicial", string.IsNullOrEmpty(dadosProcesso.Vigencia_inicial.ToString()) ? null : dadosProcesso.Vigencia_inicial.ToString()));


            if (dadosProcesso.Data_prorrogacao == null)
            {
                parametros.Add(new ReportParameter("DataFinal", string.IsNullOrEmpty(dadosProcesso.Vigencia_final.ToString()) ? null : dadosProcesso.Vigencia_final.ToString()));
            }
            else
            {
                parametros.Add(new ReportParameter("DataFinal", string.IsNullOrEmpty(dadosProcesso.Data_prorrogacao.ToString()) ? null : dadosProcesso.Data_prorrogacao.ToString()));
            }
            parametros.Add(new ReportParameter("Data", DateTime.Now.Date.ToString()));
            parametros.Add(new ReportParameter("InfComplementares", dadosProcesso.Inf_Complementares));
            parametros.Add(new ReportParameter("Fundamentacao", dadosProcesso.Descricao));
            parametros.Add(new ReportParameter("CodFatura", Cod_fatura));

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
                               "attachment; filename=RAT_" + DateTime.Now.ToString("MM-dd-yyyy") + "." +
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
