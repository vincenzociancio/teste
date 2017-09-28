using MS2000WEB.Models;
using MS2000WEB.Models.Security;
using MS2000WEB.ViewModels;
using MSBiblioteca.MSUtil;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class ControleDeTributosController : Controller
    {
        private MS2000Context db = new MS2000Context();

        [MSAutorizacaoAuthorize("Tela de Controle de Tributos")]
        public ActionResult Index(string texto, int page = 0, string colunas_titulos = null, string Natureza = null, string Competencia = null, string Periodicidade = null)
        {
            int pageSize = 10;

            Expression<Func<Controle_de_Tributos, bool>> express = null;


            if (!string.IsNullOrEmpty(texto) || !string.IsNullOrEmpty(Natureza) || !string.IsNullOrEmpty(Competencia) || !string.IsNullOrEmpty(Periodicidade))
            {
                if (colunas_titulos == "ID")
                {
                    express = p => p.ID == Convert.ToInt32(texto);
                }
                
                if (colunas_titulos == "Tributo")
                {
                    express = p => p.Codigo_Tributo == texto;
                }
                
                if (colunas_titulos == "Data")
                {
                    express = p => p.Data_Pgto == Convert.ToDateTime(texto);
                }
                
                if (colunas_titulos == "Ano")
                {
                    express = p => p.Ano == Convert.ToInt32(texto);
                }                
                if (colunas_titulos == "Natureza")
                {
                    express = p => p.Natureza == Convert.ToInt32(Natureza);
                }
                if (colunas_titulos == "Competencia")
                {
                    express = p => p.Competencia == Convert.ToInt32(Competencia);
                }
                if (colunas_titulos == "Periodicidade")
                {
                    express = p => p.Periodicidade == Convert.ToInt32(Periodicidade);
                }
                if (colunas_titulos == "Valor")
                {
                    express = p => p.Valor == Convert.ToDecimal(texto);
                }
                if (colunas_titulos == "")
                {
                    express = p => p.ID != 0;
                }

                var model = db.Controle_de_Tributos.Where(express.Compile()).OrderBy(c => c.ID).Select(c =>
                            new ControleDeTributoViewModel
                            {
                                ID = c.ID,
                                Periodicidade = (Periodicidade)c.Periodicidade,
                                Tributo = (Tributos)c.Natureza,
                                Data = c.Data_Pgto,
                                Competencia = (Meses)c.Competencia,
                                Ano = c.Ano,
                                Valor = c.Valor
                            }).ToList();
                return View(model);
            }

            else
            {
                var model = db.Controle_de_Tributos.OrderBy(c => c.ID).Select(c =>
                   new ControleDeTributoViewModel
                   {
                       ID = c.ID,
                       Periodicidade = (Periodicidade)c.Periodicidade,
                       Tributo = (Tributos)c.Natureza,
                       Data = c.Data_Pgto,
                       Competencia = (Meses)c.Competencia,
                       Ano = c.Ano,
                       Valor =c.Valor
                   }).ToList();

                //ViewBag.CurrentPage = page;
                //ViewBag.PageSize = pageSize;
                //ViewBag.TotalPages = Math.Ceiling((double)model.Count() / pageSize);
                ViewBag.colunas_titulos = new SelectList(model);
                return View(model);
            }
        }

        //
        // GET: /ControleDeTributos/Details/5

        public ActionResult Details(int id = 0)
        {
            Controle_de_Tributos controle_de_tributos = db.Controle_de_Tributos.Find(id);
            if (controle_de_tributos == null)
            {
                return HttpNotFound();
            }
            return View(controle_de_tributos);
        }

        //
        // GET: /ControleDeTributos/Create
        [MSAutorizacaoAuthorize("Cadastra tributos")]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /ControleDeTributos/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Controle_de_Tributos controle_de_tributos)
        {
            if (controle_de_tributos.Ano.ToString().Length != 4)
            {
                ModelState.AddModelError("Ano", "Entre com ano(aaaa)");
                return View(controle_de_tributos);
            }
            if (ModelState.IsValid)
            {
                try
                {
                    db.Controle_de_Tributos.Add(controle_de_tributos);
                    db.SaveChanges();
                    TempData["Sucesso"] = "Registro gravado com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = ex.Message;
                    return View();
                }
            }

            return View(controle_de_tributos);
        }

        //
        // GET: /ControleDeTributos/Edit/5
        [MSAutorizacaoAuthorize("Edita tributos")]
        public ActionResult Edit(int id = 0)
        {
            Controle_de_Tributos controle_de_tributos = db.Controle_de_Tributos.Find(id);
            if (controle_de_tributos == null)
            {
                return HttpNotFound();
            }
            return View(controle_de_tributos);
        }

        //
        // POST: /ControleDeTributos/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Controle_de_Tributos controle_de_tributos)
        {
            if (controle_de_tributos.Ano.ToString().Length != 4)
            {
                ModelState.AddModelError("Ano", "Entre com ano(aaaa)");
                return View(controle_de_tributos);
            }

            if (ModelState.IsValid)
            {
                try
                {
                    db.Entry(controle_de_tributos).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    TempData["Sucesso"] = "Alteração realizada com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = ex.Message;
                    return View();
                }
            }
            return View(controle_de_tributos);
        }

        //
        // GET: /ControleDeTributos/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Controle_de_Tributos controle_de_tributos = db.Controle_de_Tributos.Find(id);
            if (controle_de_tributos == null)
            {
                return HttpNotFound();
            }
            return View(controle_de_tributos);
        }

        //
        // POST: /ControleDeTributos/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Controle_de_Tributos controle_de_tributos = db.Controle_de_Tributos.Find(id);
            db.Controle_de_Tributos.Remove(controle_de_tributos);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}