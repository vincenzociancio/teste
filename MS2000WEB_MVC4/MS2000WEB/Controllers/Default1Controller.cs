using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;

namespace MS2000WEB.Controllers
{
    public class Default1Controller : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /Default1/

        public ActionResult Index()
        {
            return View(db.RATs.ToList());
        }

        //
        // GET: /Default1/Details/5

        public ActionResult Details(int id = 0)
        {
            RAT rat = db.RATs.Find(id);
            if (rat == null)
            {
                return HttpNotFound();
            }
            return View(rat);
        }

        //
        // GET: /Default1/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Default1/Create

        [HttpPost]
        public ActionResult Create(RAT rat)
        {
            if (ModelState.IsValid)
            {
                db.RATs.Add(rat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(rat);
        }

        //
        // GET: /Default1/Edit/5

        public ActionResult Edit(int id = 0)
        {
            RAT rat = db.RATs.Find(id);
            if (rat == null)
            {
                return HttpNotFound();
            }
            return View(rat);
        }

        //
        // POST: /Default1/Edit/5

        [HttpPost]
        public ActionResult Edit(RAT rat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(rat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(rat);
        }

        //
        // GET: /Default1/Delete/5

        public ActionResult Delete(int id = 0)
        {
            RAT rat = db.RATs.Find(id);
            if (rat == null)
            {
                return HttpNotFound();
            }
            return View(rat);
        }

        //
        // POST: /Default1/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            RAT rat = db.RATs.Find(id);
            db.RATs.Remove(rat);
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