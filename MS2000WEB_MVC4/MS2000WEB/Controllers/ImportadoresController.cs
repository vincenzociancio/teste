using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class ImportadoresController : Controller
    {
        private MS2000Context db = new MS2000Context();
        // GET: /Importadores/

        public ActionResult Index(string txtCodigo = null, string txtImportador = null)
        {
            /* PopulateUFDropDownList();
            PopulatePaisDropDownList();
            PopulateTipoImportadorDropDownList();
            PopulateCAEDropDownList();*/

            var query = "SELECT[Codigo],[Razao_Social],[CNPJ_CPF_COMPLETO] FROM [dbo].[Importadores] ";

            //Busca por Número
            if (!String.IsNullOrEmpty(txtCodigo))
            {
                query += " where Codigo = '" + txtCodigo.ToUpper().ToString() + "' ";
            }

            //Busca por nome do Importador
            if (!String.IsNullOrEmpty(txtImportador))
            {
                query += " where Razao_Social like '%" + txtImportador.ToUpper().ToString() + "%' ";
            }

            query += " order by Razao_Social";

            var model = db.Database.SqlQuery<ImportadoresViewModel>(query).ToList();

            return View(model);
        }

        //
        // GET: /Importadores/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Importadores/Create

        public ActionResult Create()
        {
            PopulateUFDropDownList();
            PopulatePaisDropDownList();
            PopulateTipoImportadorDropDownList();
            PopulateCAEDropDownList();
            return View();
        }

        //
        // POST: /Importadores/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Importadores/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Importadores/Edit/5

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

        //
        // GET: /Importadores/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Importadores/Delete/5

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

        private void PopulateUFDropDownList(object selectedUF = null)
        {
            var UFs = (from i in db.TAB_UF
                       orderby i.Descricao
                       select new { Codigo = i.Codigo, Descricao = i.Descricao });

            ViewBag.UF = new SelectList(UFs, "Codigo", "Descricao", selectedUF);
        }

        private void PopulatePaisDropDownList(object selectedPais = null)
        {
            var Pais = (from i in db.TAB_PAIS
                        orderby i.DESCRICAO
                        select new { Codigo = i.CODIGO, Descricao = i.DESCRICAO });

            ViewBag.Paises = new SelectList(Pais, "Codigo", "Descricao", selectedPais);
        }

        private void PopulateTipoImportadorDropDownList(object selectedTipoImportador = null)
        {
            var TpImportador = (from i in db.TAB_TP_IMPORTADOR
                                orderby i.CODIGO
                        select new { Codigo = i.CODIGO, Descricao = i.DESCRICAO });

            ViewBag.TipoImportador = new SelectList(TpImportador, "Codigo", "Descricao", selectedTipoImportador);
        }

        private void PopulateCAEDropDownList(object selectedCAE = null)
        {
            var CAE = (from i in db.CAEs
                                orderby i.codigo
                                select new { Codigo = i.codigo, Descricao = i.descricao });

            ViewBag.CAEs = new SelectList(CAE, "Codigo", "Descricao", selectedCAE);
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
