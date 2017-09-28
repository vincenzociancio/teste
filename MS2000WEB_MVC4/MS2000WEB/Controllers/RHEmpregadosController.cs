using MS2000WEB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.IO;

namespace MS2000WEB.Controllers
{
    public class RHEmpregadosController : Controller
    {
        public ActionResult Index(int? page,  string currentFilter, string searchString)
        {
            using (MS2000Context db = new MS2000Context())
            {
                IEnumerable<RH_Empregados> model = db.RH_Empregados.ToList();

                int pageSize = 3;
                int pageNumber = (page ?? 1);

                if (Request.HttpMethod == "GET")
                {
                    searchString = currentFilter;
                }

                ViewBag.CurrentFilter = searchString;

                if (!String.IsNullOrEmpty(searchString))
                {
                    model = model.Where(s => s.Nome.ToUpper().Contains(searchString.ToUpper()));
                }

                return View(model.OrderBy(c => c.Nome).ToPagedList(pageNumber, pageSize));
            }
        }

        public ActionResult Details(int id)
        {
            return View();
        }

        public ActionResult Create()
        {
            using (MS2000Context db = new MS2000Context())
            {
                var model = db.RH_Nacionalidade.ToList();
                ViewBag.Nacionalidade = new SelectList(db.RH_Nacionalidade.ToList(), "Codigo", "Descricao", null);
                ViewBag.Escolaridade = new SelectList(db.RH_Escolaridade.ToList(), "Codigo", "Descricao", null);
                ViewBag.Raca_Cor = new SelectList(db.RH_Cor.ToList(), "Codigo", "Descricao", null);
                return View();
            }
        }

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Edit(int id)
        {
            using (MS2000Context db = new MS2000Context())
            {
                var model = db.RH_Empregados.FirstOrDefault(c => c.ID == id);
                if (model == null)
                {
                    return HttpNotFound();
                }
                else
                {
                    ViewBag.Nacionalidade = new SelectList(db.RH_Nacionalidade.ToList(), "Codigo", "Descricao", model.Nacionalidade);
                    ViewBag.Escolaridade = new SelectList(db.RH_Escolaridade.ToList(), "Codigo", "Descricao", model.Escolaridade);
                    ViewBag.Raca_Cor = new SelectList(db.RH_Cor.ToList(), "Codigo", "Descricao", model.Raca_Cor);

                    return View(model);
                }
            }
        }

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
        // GET: /RHEmpregados/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /RHEmpregados/Delete/5

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

        public ActionResult WebCam(int? id)
        {
            id = 216;
            ViewBag.Id = id;

            return View();
        }

        public void Capture(int? id)
        {
            id = 216;
            var stream = Request.InputStream;
            string dump;

            using (var reader = new StreamReader(stream))
                dump = reader.ReadToEnd();

            var path = Server.MapPath(string.Format("~/{0}.jpg", id));
            System.IO.File.WriteAllBytes(path, String_To_Bytes2(dump));
        }

        private byte[] String_To_Bytes2(string strInput)
        {
            int numBytes = (strInput.Length) / 2;
            byte[] bytes = new byte[numBytes];

            for (int x = 0; x < numBytes; ++x)
            {
                bytes[x] = Convert.ToByte(strInput.Substring(x * 2, 2), 16);
            }

            return bytes;
        }
        

        [HttpPost]
        public ActionResult Upload(string image)
        {
            image = image.Substring("data:image/jpeg;base64,".Length);

            byte[] buffer = Convert.FromBase64String(image);
            // TODO: I am saving the image on the hard disk but
            // you could do whatever processing you want with it
            System.IO.File.WriteAllBytes(Server.MapPath("~/capture.jpg"), buffer);
            //var id = 216;

            //var path = Server.MapPath(string.Format("~/{0}.jpg", id));
            //System.IO.File.WriteAllBytes(path, String_To_Bytes2(dump));
            return Json(new { success = true });
        }
    }
}
