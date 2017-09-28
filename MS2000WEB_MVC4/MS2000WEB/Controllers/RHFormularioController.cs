using System;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using System.IO;
using MS2000WEB.Models.Security;

namespace MS2000WEB.Controllers
{
    public class RHFormularioController : Controller
    {
        private MS2000Context db = new MS2000Context();
        
        //
        // GET: /RHFormulario/
        [MSAutorizacaoAuthorize("Tela de RH Formulario - Cadastro")]        
        public ActionResult Index(string txtTitulo = null)
        {          
            if (!String.IsNullOrEmpty(txtTitulo))
            {
                var model = db.RH_Formularios.Where(c => c.Lixo == 0 && c.Descricao_Arquivo.ToUpper().Contains(txtTitulo)).ToList();
                return View(model);
            }
            else
            {
                var model = db.RH_Formularios.Where(c => c.Lixo == 0).ToList();
                return View(model);
            }            
           
        //    return View(model);
        }

       // [MSAutorizacaoAuthorize("Tela de RH Formulario - Download")]
        public ActionResult MostraFormulario(string txtTitulo = null)
        {
            if (!String.IsNullOrEmpty(txtTitulo))
            {
                var model = db.RH_Formularios.Where(c => c.Lixo == 0 && c.Descricao_Arquivo.ToUpper().Contains(txtTitulo)).ToList();
                return View(model);
            }
            else
            {
                var model = db.RH_Formularios.Where(c => c.Lixo == 0).ToList();
                return View(model);
            }

            //    return View(model);
        }

        //
        // GET: /RHFormulario/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /RHFormulario/Create
        [MSAutorizacaoAuthorize("RH Formulario - Cria Formulario")]
        public ActionResult Create(int id = 0)
        {
            var model = db.RH_Formularios.Find(id);
            return View(model);
        }

        //
        // POST: /RHFormulario/Create

        //[HttpPost]
        //public ActionResult Create(FormCollection collection)
        //{
        //    try
        //    {
        //        // TODO: Add insert logic here

        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}



        [HttpPost]
        public ActionResult Create(RH_Formularios rh_formularios, HttpPostedFileBase file, int id = 0)
        {
            if (String.IsNullOrEmpty(rh_formularios.Titulo))
            {
                TempData["Erro"] = "Por favor, preencha o Título!!!";
                return View(rh_formularios);
            }
            else if (file == null)
            {
                TempData["Erro"] = "Por favor, Selecione um arquivo!!!";
                return View(rh_formularios);
            }
            else if (file != null)
            {
                string tipoarquivo = Path.GetExtension(file.FileName.ToLower());
                if (!((tipoarquivo == ".pdf") || (tipoarquivo == ".doc") || (tipoarquivo == ".docx")))
                {
                    TempData["Erro"] = "Extensão do arquivo, somente pdf, doc, docx!!!";
                    return View(rh_formularios);
                }
            }

            
            if (file != null)
            {
                int pk_arquivo = 0;
                try
                {

                    string caminhoFisico = @"F:\ARQUIVOSUPLOAD\RHFORMULARIOS\" +
                        DateTime.Now.Year.ToString() + @"\" +
                        DateTime.Now.Month.ToString() + @"\";

                    //  RH_Formularios rhformularios = new RH_Formularios();
                    //  rh_formularios.Id = id;
                    rh_formularios.Caminho = caminhoFisico;
                    rh_formularios.Tipo_Arquivo = Path.GetExtension(file.FileName);
                    rh_formularios.Data = DateTime.Now;
                    rh_formularios.Descricao_Arquivo = Path.GetFileName(file.FileName);
                    db.RH_Formularios.Add(rh_formularios);
                    db.SaveChanges();

                    pk_arquivo = rh_formularios.Id;                   
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = "Erro ao gravar Formulário!!!" + ex.Message;
                    return View(rh_formularios);
                }

                if (pk_arquivo > 0)
                {
                    try
                    {
                        var caminho_destino = @"/ArquivosUpload/RhFormularios/";

                        caminho_destino += DateTime.Now.Year.ToString();
                        if (!Directory.Exists(HttpContext.Server.MapPath(caminho_destino)))
                        {
                            Directory.CreateDirectory(HttpContext.Server.MapPath(caminho_destino));
                        }

                        caminho_destino += @"/" + DateTime.Now.Month.ToString();
                        if (!Directory.Exists(HttpContext.Server.MapPath(caminho_destino)))
                        {
                            Directory.CreateDirectory(HttpContext.Server.MapPath(caminho_destino));
                        }

                        string filePath = Path.Combine(HttpContext.Server.MapPath(caminho_destino),
                                                      pk_arquivo.ToString() + Path.GetExtension(file.FileName));
                        file.SaveAs(filePath);
                    }
                    catch (Exception ex)
                    {
                        TempData["Erro"] = "Erro ao importar Formulário!!!" + ex.Message;
                        return View(rh_formularios);
                    }
                }
            }
            TempData["Sucesso"] = "Formulário registrado com sucesso!";            
         //   return View(); 
           return RedirectToAction("Index");
        }

        //
        // GET: /RHFormulario/Edit/5

        public ActionResult Edit(int id)
        {
            var model = db.RH_Formularios.Find(id);

            if (model == null)
            {
                return HttpNotFound();
            }

            return View(model);
        }

        //
        // POST: /RHFormulario/Edit/5

        [HttpPost]
        public ActionResult Edit(RH_Formularios rh_formularios, int id, FormCollection collection)
        {
            if (String.IsNullOrEmpty(rh_formularios.Titulo))
            {
                TempData["Erro"] = "Por favor, preencha o Título!!!";
                return View(rh_formularios);
            }
            
            if (ModelState.IsValid)
            {               
                db.Entry(rh_formularios).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "Formulário alterado com sucesso!"; 
                return RedirectToAction("Index");
            }

            return View(rh_formularios);       
        }

        //
        // GET: /RHFormulario/Delete/5
        [MSAutorizacaoAuthorize("RH Formulario - Deleta Formulario")]
        public ActionResult Delete(int id)
        {
            RH_Formularios rhformulario = db.RH_Formularios.Find(id);
            if (rhformulario == null)
            {
                return HttpNotFound();
            }
            return View(rhformulario);
        }

        //
        // POST: /RHFormulario/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            RH_Formularios rhformulario = db.RH_Formularios.FirstOrDefault(x => x.Id == id);
            rhformulario.Lixo = 1;
            db.Entry(rhformulario).State = EntityState.Modified;
            db.SaveChanges();
            TempData["Sucesso"] = "Formulário excluído com sucesso!";
            return RedirectToAction("Index");
        }



        private string GetVirtualPath(string physicalPath)
        {
            string rootpath = Server.MapPath("~/");

            physicalPath = physicalPath.Replace(rootpath, "");
            physicalPath = physicalPath.Replace("\\", "/");

            return "/" + physicalPath;
        }

        private class DownloadResult : ActionResult
        {
            public DownloadResult()
            {
            }

            public DownloadResult(string virtualPath)
            {
                this.VirtualPath = virtualPath;
            }

            public string VirtualPath
            {
                get;
                set;
            }

            public string FileDownloadName
            {
                get;
                set;
            }

            public override void ExecuteResult(ControllerContext context)
            {
                if (!String.IsNullOrEmpty(FileDownloadName))
                {
                    context.HttpContext.Response.AddHeader("content-disposition",
                    "attachment; filename=" + this.FileDownloadName);
                }

                string filePath = context.HttpContext.Server.MapPath(this.VirtualPath);
                context.HttpContext.Response.TransmitFile(filePath);
            }
        }

        public ActionResult GetFile(int id = 0)
        {
            RH_Formularios rh_formularios = db.RH_Formularios.Find(id);
            if (rh_formularios == null)
            {
                return HttpNotFound();
            }
            string nomeDoArquivo = rh_formularios.Descricao_Arquivo;
            string caminhoDoArquivo = rh_formularios.Caminho.Replace(@"F:\", "") + rh_formularios.Id.ToString() + rh_formularios.Tipo_Arquivo;
            return new DownloadResult { VirtualPath = GetVirtualPath(caminhoDoArquivo), FileDownloadName = nomeDoArquivo };
        }
                
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
