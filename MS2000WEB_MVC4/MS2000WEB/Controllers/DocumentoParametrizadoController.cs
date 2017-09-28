using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;

namespace MS2000WEB.Controllers
{

    public class DocumentoParametrizadoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        int DocID;
        //
        // GET: /DocumentoParametrizado/

        public ActionResult Index(string txtImportador)
        {

            if (!String.IsNullOrEmpty(txtImportador))
            {
                var model = (from d in db.Documentos_Relatorios_parametrizacao
                             join i in db.Importadores on d.ImportadorCgcCpf equals i.CGC_CPF
                             where i.Razao_Social.StartsWith(txtImportador)
                             group i by new
                             {
                                 i.CGC_CPF,
                                 d.DocID,
                                 d.Titulo,
                                 d.Email
                             } into g
                             select new DocumentosParametrizadoListViewModel
                             {
                                 DocID = g.Key.DocID,
                                 Titulo = g.Key.Titulo,
                                 Email = g.Key.Email,
                                 RazaoSocial = g.Max(m => m.Razao_Social)
                             }).Distinct().ToList();

                return View(model);
            }
            else
            {
                var model = (from d in db.Documentos_Relatorios_parametrizacao
                             join i in db.Importadores on d.ImportadorCgcCpf equals i.CGC_CPF
                             group i by new
                             {
                                 i.CGC_CPF,
                                 d.DocID,
                                 d.Titulo,
                                 d.Email
                             } into g
                             select new DocumentosParametrizadoListViewModel
                             {
                                 DocID = g.Key.DocID,
                                 Titulo = g.Key.Titulo,
                                 Email = g.Key.Email,
                                 RazaoSocial = g.Max(m => m.Razao_Social)
                             }).Distinct().ToList();
                return View(model);
            }
        }

        //
        // GET: /DocumentoParametrizado/Details/5

        public ActionResult Details(int id = 0)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = db.Documentos_Relatorios_parametrizacao.Find(id);
            if (documentos_relatorios_parametrizacao == null)
            {
                return HttpNotFound();
            }
            return View(documentos_relatorios_parametrizacao);
        }

        //
        // GET: /DocumentoParametrizado/Create

        public ActionResult Create(int id = 0)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = new Documentos_Relatorios_parametrizacao();
            db.Documentos_Relatorios_parametrizacao.Add(documentos_relatorios_parametrizacao);
            db.SaveChanges();

            Documentos_Relatorios_Parametrizacao_status documentos_relatorios_parametrizacao_status = db.Documentos_Relatorios_Parametrizacao_status.Find(id);
            PopulateImportadorDropDownList(documentos_relatorios_parametrizacao.ImportadorCgcCpf);
            PopulateStatus();
            PopulateTipoDocumentosDropDownList();
            return View(documentos_relatorios_parametrizacao);
        }

        //
        // POST: /DocumentoParametrizado/Create
        [HttpPost]
        public ActionResult Create(Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao, string[] selectedStatus, FormCollection form)
        {
            Documentos_Relatorios_Parametrizacao_Tipo documentoNovo = new Documentos_Relatorios_Parametrizacao_Tipo();
            if (ModelState.IsValid)
            {
                db.Entry(documentos_relatorios_parametrizacao).State = EntityState.Modified;
                db.SaveChanges();
                // db.Documentos_Relatorios_parametrizacao.Add(documentos_relatorios_parametrizacao);
                //Incluido status 
                IncludeStatus(documentos_relatorios_parametrizacao.DocID, selectedStatus);
                return RedirectToAction("Index");
            }
            PopulateImportadorDropDownList(documentos_relatorios_parametrizacao.ImportadorCgcCpf);
            PopulateStatus(documentos_relatorios_parametrizacao.DocID);
            PopulateTipoDocumentosDropDownList();
            return View(documentos_relatorios_parametrizacao);
        }
        //
        // GET: /DocumentoParametrizado/Edit/5


        public ActionResult Edit(int id = 0)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = db.Documentos_Relatorios_parametrizacao.Find(id);

            if (documentos_relatorios_parametrizacao == null)
            {
                return HttpNotFound();
            }

            PopulateImportadorDropDownList(documentos_relatorios_parametrizacao.ImportadorCgcCpf);

            PopulateStatus(id);

            PopulateTipoDocumentosDropDownList();

            return View(documentos_relatorios_parametrizacao);
        }

        //
        // POST: /DocumentoParametrizado/Edit/5

        [HttpPost]
        public ActionResult Edit(Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao, string[] selectedStatus, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                db.Entry(documentos_relatorios_parametrizacao).State = EntityState.Modified;

                IncludeStatus(documentos_relatorios_parametrizacao.DocID, selectedStatus);

                db.SaveChanges();
                // return RedirectToAction("Edit", new { id = documentos_relatorios_parametrizacao.DocID });
                return RedirectToAction("Index");
            }
            PopulateImportadorDropDownList(documentos_relatorios_parametrizacao.ImportadorCgcCpf);
            PopulateStatus(documentos_relatorios_parametrizacao.DocID);
            PopulateTipoDocumentosDropDownList();

            return View(documentos_relatorios_parametrizacao);
        }

        // -------------Monta Checkbox--------------------
        private void IncludeStatus(int id, string[] statusAdd)
        {
            if (statusAdd != null)
            {
                //deletando todos os status            
                var statusDeletar = db.Documentos_Relatorios_Parametrizacao_status.Where(s => s.DocID == id);
                //---
                foreach (var item in statusDeletar)
                {
                    db.Documentos_Relatorios_Parametrizacao_status.Remove(item);
                }
                //----
                //Incluido status do parametro
                foreach (var item in statusAdd)
                {
                    int? statusId = Convert.ToInt32(item);
                    db.Documentos_Relatorios_Parametrizacao_status.Add(new Documentos_Relatorios_Parametrizacao_status
                    {
                        DocID = id,
                        Status = statusId
                    });
                }
                //----
                db.SaveChanges();
            }
        }
        //------------Preenche Combobox do Tipo Documento------------------------------
        private void PopulateTipoDocumentosDropDownList()
        //   public ActionResult PopulateTipoDocumentosDropDownList()
        {
            var TipoDocumentos = (from i in db.Tipo_Documentos
                                  select new { Codigo = i.codigo, Descricao = i.descricao });

            //  ViewBag.Tipo = new SelectList(TipoDocumentos, "Codigo", "Descricao");
            ViewData["TiposDocumentos"] = new SelectList(TipoDocumentos, "Codigo", "Descricao");
            //  return View();
        }

        public JsonResult PopulateSubTipoDropDownList(string tipoID = "")
        {
            var SubTipo = (from i in db.Sub_Tipo_Documentos
                           where i.Tipo_doc == tipoID
                           select new SelectListItem()
                           {
                               Value = i.codigo,
                               Text = i.Descricao
                           });

            return Json(SubTipo, JsonRequestBehavior.AllowGet);
        }


        //------------Preenche Combobox do Importador------------------------------
        private void PopulateImportadorDropDownList(object selectedImportador = null)
        {
            var Importadores = (from i in db.Importadores
                                where i.Ativo == 1
                                orderby i.Razao_Social
                                group i by new
                                {
                                  i.CGC_CPF
                                } into g
                                select new
                                        {
                                            Cgc = g.Key.CGC_CPF,
                                            Razao = g.Max(m => m.Razao_Social)
                                        }).OrderBy(x=>x.Razao);
            
            ViewBag.ImportadorCgcCpf = new SelectList(Importadores, "Cgc", "Razao", selectedImportador);
        }


        private void PopulateStatus(int id = 0)
        {
            using (MS2000Context db1 = new MS2000Context())
            {
                var allStatus = db1.Tipos_status_documentos;

                using (MS2000Context db2 = new MS2000Context())
                {
                    var parametrizacaoStatus = db2.Documentos_Relatorios_Parametrizacao_status.Where(s => s.DocID == id);

                    var viewModel = new List<DocumentoParametrizadoStatusViewModel>();

                    foreach (var status in allStatus)
                    {
                        int? codigo = Convert.ToInt32(status.CODIGO);
                        viewModel.Add(new DocumentoParametrizadoStatusViewModel
                        {
                            StatusID = status.CODIGO,
                            DescricaoStatus = status.DESCRICAO,
                            Ativo = parametrizacaoStatus.Any(p => p.Status == codigo)
                        });
                    }
                    ViewBag.Status = viewModel;
                }
            }
        }

        public ActionResult Delete(int id = 0)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = db.Documentos_Relatorios_parametrizacao.Find(id);
            if (documentos_relatorios_parametrizacao == null)
            {
                return HttpNotFound();
            }
            return View(documentos_relatorios_parametrizacao);
        }

        //
        // POST: /DocumentoParametrizado/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = db.Documentos_Relatorios_parametrizacao.Find(id);
            db.Documentos_Relatorios_parametrizacao.Remove(documentos_relatorios_parametrizacao);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        //  [AcceptVerbs(HttpVerbs.Post)]
        public JsonResult SalvarSubtipo(DocumentosParametrizadoViewModel.Documentos[] documentos, int id)
        {

            var DocumentosRelatoriosParametrizacaoTipoDeletar = db.Documentos_Relatorios_Parametrizacao_Tipo.Where(s => s.DocID == id);

            foreach (var item in DocumentosRelatoriosParametrizacaoTipoDeletar)
            {
                db.Documentos_Relatorios_Parametrizacao_Tipo.Remove(item);
            }

            Documentos_Relatorios_Parametrizacao_Tipo documentoNovo = new Documentos_Relatorios_Parametrizacao_Tipo();

            if (documentos != null)
            {
                foreach (var documento in documentos)
                {
                    documentoNovo.DocID = id;
                    documentoNovo.Tipo_Doc = documento.Tipo_Doc;
                    documentoNovo.Sub_Tipo_Doc = documento.Sub_Tipo_Doc;
                    db.Documentos_Relatorios_Parametrizacao_Tipo.Add(documentoNovo);
                    db.SaveChanges();
                }
            }
            return Json(documentos, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult CancelarDocId(int docId)
        {
            Documentos_Relatorios_parametrizacao documentos_relatorios_parametrizacao = db.Documentos_Relatorios_parametrizacao.Find(docId);
            db.Documentos_Relatorios_parametrizacao.Remove(documentos_relatorios_parametrizacao);
            db.SaveChanges();
            return Json(documentos_relatorios_parametrizacao);
            // return RedirectToAction("Index");
        }

        // [AcceptVerbs(HttpVerbs.Post)]
        public JsonResult PopulateSubTipoDocumentosTable(int id = 0)
        {
            var SubTipoDocumentos = (from t in db.Documentos_Relatorios_Parametrizacao_Tipo
                                     from s in db.Sub_Tipo_Documentos
                                     where (t.Tipo_Doc == s.Tipo_doc) &&
                                     (t.Sub_Tipo_Doc == s.codigo) && (t.DocID == id)
                                     select new DocumentosParametrizadoViewModel.Documentos { Tipo_Doc = t.Tipo_Doc, ID = t.ID, Descricao = s.Descricao, Sub_Tipo_Doc = t.Sub_Tipo_Doc }).ToList();

            //ViewBag.Subtipo = new SelectList(SubTipoDocumentos, "Id", "Descricao", null);


            return Json(SubTipoDocumentos, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}