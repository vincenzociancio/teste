using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using System.IO;
using MS2000WEB.Models.Security;

namespace MS2000WEB.Controllers
{
    public class ControleDeAtasDeReuniaoArquivoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        public ActionResult Index(int id)
        {
            var controle_atas_arquivos = (from a in db.Controle_Atas_Arquivos //db.Controle_Atas_Arquivos.Include(c => c.Controle_Atas);
                                          where a.fk_atas == id
                                          select a).ToList();
            ViewBag.fk_ata = id;
            return View(controle_atas_arquivos);
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
            Controle_Atas_Arquivos controle_atas_arquivos = db.Controle_Atas_Arquivos.Find(id);
            if (controle_atas_arquivos == null)
            {
                return HttpNotFound();
            }
            string nomeDoArquivo = controle_atas_arquivos.descricao_arquivo;
            string caminhoDoArquivo = controle_atas_arquivos.caminho.Replace(@"F:\", "") + controle_atas_arquivos.pk_atas_arquivos.ToString() + controle_atas_arquivos.tipo_arquivo;
            return new DownloadResult { VirtualPath = GetVirtualPath(caminhoDoArquivo), FileDownloadName = nomeDoArquivo };
        }

        public ActionResult FileUpload(int id = 0)
        {
            ViewBag.fk_ata = id;
            return View();
        }

        [HttpPost]
        public ActionResult FileUpload(HttpPostedFileBase file, int id = 0)
        {

            if (file != null)
            {
                try
                {
                    int pk_arquivo = GravarArquivo(file, id);

                    if (pk_arquivo > 0)
                    {
                        var caminho_destino = @"/ArquivosUpload/ControleAtas/";

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
                    TempData["Sucesso"] = "Arquivo importado com sucesso!";
                    ViewBag.fk_ata = id;
                    return View(); //RedirectToAction("Index", new { id = id });
                }

                catch (Exception ex)
                {
                    TempData["Erro"] = "Erro ao importar arquivo!!!"  + ex.Message;
                    ViewBag.fk_ata = id;
                    return View();
                }                
            }

            ViewBag.fk_ata = id;
            return View();            
        }


        private int GravarArquivo(HttpPostedFileBase file, int id)
        {
            try
            {
                string caminhoFisico = @"F:\ARQUIVOSUPLOAD\CONTROLEATAS\" +
                    DateTime.Now.Year.ToString() + @"\" +
                    DateTime.Now.Month.ToString() + @"\";

                Controle_Atas_Arquivos controle_atas_arquivos = new Controle_Atas_Arquivos();
                controle_atas_arquivos.fk_atas = id;
                controle_atas_arquivos.caminho = caminhoFisico;
                controle_atas_arquivos.tipo_arquivo = Path.GetExtension(file.FileName);
                controle_atas_arquivos.data = DateTime.Now;
                controle_atas_arquivos.descricao_arquivo = Path.GetFileName(file.FileName);
                db.Controle_Atas_Arquivos.Add(controle_atas_arquivos);
                db.SaveChanges();
                return controle_atas_arquivos.pk_atas_arquivos;
            }
            catch
            {
                return 0;
            }

        }

        [MSAutorizacaoAuthorize("Controle de Atas de Reunião - Deleta Arquivos")]
        public ActionResult Delete(int id = 0)
        {
            Controle_Atas_Arquivos controle_atas_arquivos = db.Controle_Atas_Arquivos.Find(id);
            if (controle_atas_arquivos == null)
            {
                return HttpNotFound();
            }
            return View(controle_atas_arquivos);
        }

        //
        // POST: /ControleDeAtasDeReuniaoArquivo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Controle_Atas_Arquivos controle_atas_arquivos = db.Controle_Atas_Arquivos.Find(id);
            db.Controle_Atas_Arquivos.Remove(controle_atas_arquivos);
            db.SaveChanges();
            return RedirectToAction("Index", new { id = controle_atas_arquivos.fk_atas });
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}