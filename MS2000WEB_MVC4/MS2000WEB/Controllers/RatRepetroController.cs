using MS2000WEB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using MS2000WEB.ViewModels;
using Microsoft.Reporting.WebForms;

namespace MS2000WEB.Controllers
{
    public class RatRepetroController : Controller
    {
        private MS2000Context db = new MS2000Context();

        public ActionResult Index(int? page, string currentFilter, string searchString)
        {
            IEnumerable<RAT_Repetro> model = db.RAT_Repetro.ToList();

            int pageSize = 10;
            int pageNumber = (page ?? 1);

            if (Request.HttpMethod == "GET")
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(s => s.FK_Processo.Contains(searchString));
            }

            return View(model.OrderBy(c => c.FK_Processo).ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Create()
        {
            string[] fundamentos = { "141", "1415" };
            ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(RAT_Repetro model)
        {
            if (ModelState.IsValid)
            {
                model.Num_DI_Bem_Principal = Request.Form["Num_DI_Bem_Principal_" + model.Finalidade.ToString()];
                model.Num_DI_Bem_Acessorio = Request.Form["Num_DI_Bem_Acessorio_" + model.Finalidade.ToString()];
                model.Num_Processo_Bem_Principal = Request.Form["Num_Processo_" + model.Finalidade.ToString()];

                try
                {
                    model.Data_Criacao_Rat = DateTime.Now;
                    model.Usuario_Criacao = User.Identity.Name;
                    db.RAT_Repetro.Add(model);
                    db.SaveChanges();
                    TempData["Sucesso"] = "Registro gravado com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    string[] fundamentos = { "141", "1415" };
                    ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao");

                    TempData["Erro"] = ex.Message;
                    return View();
                }
            }
            else
            {
                string[] fundamentos = { "141", "1415" };
                ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao");

                ViewBag.FK_Processo = model.FK_Processo;
                return View();
            }
        }

        public ActionResult Edit(int id)
        {
            string[] fundamentos = { "141", "1415" };

            var model = db.RAT_Repetro.FirstOrDefault(c => c.ID == id);

            switch (model.Finalidade)
            {
                case 1:
                    ViewBag.Num_Processo_1 = model.Num_Processo_Bem_Principal;
                    break;
                case 2:
                    ViewBag.Num_Processo_2 = model.Num_Processo_Bem_Principal;
                    ViewBag.Num_DI_Bem_Principal_2 = model.Num_DI_Bem_Principal;
                    break;
                case 3:
                    ViewBag.Num_Processo_3 = model.Num_Processo_Bem_Principal;
                    ViewBag.Num_DI_Bem_Principal_3 = model.Num_DI_Bem_Principal;
                    break;
                case 4:
                    ViewBag.Num_Processo_4 = model.Num_Processo_Bem_Principal;
                    ViewBag.Num_DI_Bem_Principal_4 = model.Num_DI_Bem_Principal;
                    break;
                case 5:
                    ViewBag.Num_Processo_5 = model.Num_Processo_Bem_Principal;
                    ViewBag.Num_DI_Bem_Principal_5 = model.Num_DI_Bem_Principal;
                    ViewBag.Num_DI_Bem_Acessorio_5 = model.Num_DI_Bem_Acessorio;
                    break;
            }

            ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao", model.FK_Fundamentacao);

            return View(model);
        }
        
        [HttpPost]
        public ActionResult Edit(int id, RAT_Repetro model)
        {
            string[] fundamentos = { "141", "1415" };

            if (ModelState.IsValid)
            {
                try
                {
                    model.Num_DI_Bem_Principal = Request.Form["Num_DI_Bem_Principal_" + model.Finalidade.ToString()];
                    model.Num_DI_Bem_Acessorio = Request.Form["Num_DI_Bem_Acessorio_" + model.Finalidade.ToString()];
                    model.Num_Processo_Bem_Principal = Request.Form["Num_Processo_" + model.Finalidade.ToString()];

                    db.Entry(model).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    TempData["Sucesso"] = "Alteração realizada com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao");

                    TempData["Erro"] = ex.Message;
                    return View();
                }
            }

            ViewBag.FK_Fundamentacao = new SelectList(db.Fundamentacao_RCR.Where(c => fundamentos.Contains(c.Codigo)).ToList(), "Codigo", "Descricao");

            return View(model);
        }

        public ActionResult Delete(int id)
        {
            return View();
        }        

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult PrintReport(int id)
        {
            LocalReport localReport = new LocalReport();
            localReport.ReportPath = Server.MapPath("~/Views/RatRepetro/rptRATRepetro.rdlc");

            localReport.DataSources.Clear();

            var dados_rat = db.RAT_Repetro.FirstOrDefault(c => c.ID == id);

            var dados_processo = (from p in db.Processos
                         from i in db.Importadores
                         from c in db.Contratos
                         where p.Importador == i.Codigo &&
                             p.Contrato == c.Contrato1 &&
                             p.Importador == c.Importador &&
                             p.Codigo == dados_rat.FK_Processo
                         select new
                         {
                             Processo = p.Codigo,
                             CodigoImporador = i.Codigo,
                             RazaoSocial = i.Razao_Social,
                             CNPJ = i.CNPJ_CPF_COMPLETO,
                             p.Fundamentacao_RCR,
                             c.Vigencia_inicial,
                             c.Vigencia_final,
                             c.Data_prorrogacao,
                             NumContrato = c.Descricao
                         }).First();


            var itens = (from p in db.ItensFaturas
                                from i in db.Tributacao_Item_Fatura
                                from u in db.TAB_UNID_MEDIDA
                                where p.Processo == i.Processo &&
                                      p.Fatura == i.Fatura &&
                                      p.Sequencial == i.Sequencial_Item &&
                                      i.Regime_Tributacao_II == "5" &&
                                      p.Processo == dados_rat.FK_Processo &&
                                      p.Unidade == u.CODIGO
                                select new ItensFaturaViewModel
                                {
                                    Sequencial = p.Sequencial,
                                    Descricao_Produto = p.Descricao_Produto,
                                    Quantidade = p.Quantidade,
                                    Unidade = u.ABREV,
                                    VMLE = p.VMLE,
                                }).ToList();
            

            ReportDataSource rps = new ReportDataSource("ds01", itens);
            localReport.DataSources.Add(rps);

            IList<ReportParameter> parametros = new List<ReportParameter>();
            parametros.Add(new ReportParameter("RazaoSocial", dados_processo.RazaoSocial));
            parametros.Add(new ReportParameter("CNPJ", Convert.ToUInt64(dados_processo.CNPJ).ToString(@"00\.000\.000\/0000\-00")));
            parametros.Add(new ReportParameter("NumContrato", dados_processo.NumContrato));
            parametros.Add(new ReportParameter("Data_prorrogacao", dados_processo.Data_prorrogacao == null ? dados_processo.Vigencia_final.ToString() : dados_processo.Data_prorrogacao.ToString()));
            parametros.Add(new ReportParameter("Vigencia_inicial", dados_processo.Vigencia_inicial.ToString()));
            parametros.Add(new ReportParameter("Endereco_Empresa_Estrangeira", dados_rat.Endereco_Empresa_Estrangeira));
            parametros.Add(new ReportParameter("Nome_Empresa_Estrangeira", dados_rat.Nome_Empresa_Estrangeira));
            parametros.Add(new ReportParameter("Enquadramento_Prazo_Solicitado", dados_rat.Enquadramento_Prazo_Solicitado.ToString()));
            parametros.Add(new ReportParameter("Localizacao_Fisica_Bem", dados_rat.Localizacao_Fisica_Bem));
            parametros.Add(new ReportParameter("Unidade_Jurisdicionante", dados_rat.Unidade_Jurisdicionante));
            parametros.Add(new ReportParameter("Representante_Nome", dados_rat.Representante_Nome));
            parametros.Add(new ReportParameter("Representante_CPF", dados_rat.Representante_CPF));
            parametros.Add(new ReportParameter("Representante_Email", dados_rat.Representante_Email));
            parametros.Add(new ReportParameter("Representante_Telefone", dados_rat.Representante_Telefone));

            var dados_fundamento = db.Fundamentacao_RCR.FirstOrDefault(c => c.Codigo == dados_rat.FK_Fundamentacao).Descricao;

            parametros.Add(new ReportParameter("Fundamentacao", dados_fundamento));
            parametros.Add(new ReportParameter("Enquadramento_Pedido", dados_rat.Enquadramento_Pedido.ToString()));
            parametros.Add(new ReportParameter("Finalidade", dados_rat.Finalidade.ToString()));
            parametros.Add(new ReportParameter("Num_Processo_Bem_Principal", dados_rat.Num_Processo_Bem_Principal));
            parametros.Add(new ReportParameter("Num_DI_Bem_Principal", dados_rat.Num_DI_Bem_Principal));
            parametros.Add(new ReportParameter("Num_DI_Bem_Acessorio", dados_rat.Num_DI_Bem_Acessorio));
            parametros.Add(new ReportParameter("Finalidade_Outra", dados_rat.Finalidade_Outra));

            parametros.Add(new ReportParameter("Moeda", dados_rat.Moeda));
            parametros.Add(new ReportParameter("NumProcesso", dados_rat.FK_Processo));

            localReport.SetParameters(parametros);

            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;

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

            //download pdf
            var response = System.Web.HttpContext.Current.Response;
            response.Clear();
            Response.AddHeader("Content-Type", "binary/octet-stream");
            Response.AddHeader("content-disposition",
                               "attachment; filename=RatRepetro_" + DateTime.Now.ToString("MM-dd-yyyy") + "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(renderedBytes);
            response.Flush();
            response.End();

            return View();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
