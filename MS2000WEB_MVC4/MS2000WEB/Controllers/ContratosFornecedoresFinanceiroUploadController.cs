using System;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using MS2000WEB.Models.Security;
using System.IO;
using System.Web;
using System.Data.Common;
using MS2000WEB.Models.Util;

namespace MS2000WEB.Controllers
{
    public class ContratosFornecedoresFinanceiroUploadController : Controller
    {
        private MS2000Context db = new MS2000Context();
        
        //
        // GET: /ContratosFornecedoresFinanceiroUploadController/
        //  [MSAutorizacaoAuthorize("Tela de Contratos de Fornecedor Upload")]
        public ActionResult Index(int id = 0, string Razao = null)
        {
            var model = db.Contratos_Fornecedores_Cadastrados_Upload.Where(c => c.Lixo == 0 && c.fk_contrato == id).ToList();
            ViewBag.fk_contratos = id;
            ViewBag.razao = Razao;
            return View(model);
        }

        //
        // GET: /ContratosFornecedoresFinanceiroUploadController/Details/5  

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ContratosFornecedoresFinanceiroUploadController/Create

        public ActionResult Create(int id = 0, string Razao = null)
        {
            Contratos_Fornecedores_Cadastrados_Upload contratoUpload = new Contratos_Fornecedores_Cadastrados_Upload();
            ViewBag.fk_contratos = id;
            ViewBag.razao = Razao;
            return View(contratoUpload);
        }

        //
        // POST: /ContratosFornecedoresFinanceiroUploadController/Create

        [HttpPost]
        public ActionResult Create(HttpPostedFileBase file, Contratos_Fornecedores_Cadastrados_Upload contratoUpload, int id = 0, FormCollection form = null)
        {
            if (String.IsNullOrEmpty(contratoUpload.Titulo))
            {
                TempData["Erro"] = "Por favor, preencha o Título!!!";
                ViewBag.fk_contratos = id;
                return View(contratoUpload);
            }
            else if (file == null)
            {
                TempData["Erro"] = "Por favor, Selecione um arquivo!!!";
                ViewBag.fk_contratos = id;
                return View(contratoUpload);
            }            
            if (file != null)
            {

                string tipoarquivo = Path.GetExtension(file.FileName.ToLower());
                if (!((tipoarquivo == ".pdf")))
                {
                    TempData["Erro"] = "Por favor, Selecione um arquivo de extensão pdf!!!";
                    ViewBag.fk_contratos = id;
                    return View(contratoUpload);
                }
                
                
                int pk_arquivo = 0;
                try
                {

                    string caminhoFisico = @"F:\ARQUIVOSUPLOAD\CONTRATOFORNECEDOR\";
                    
                    contratoUpload.fk_contrato = id;
                    contratoUpload.Caminho = caminhoFisico;
                    contratoUpload.Tipo_Arquivo = Path.GetExtension(file.FileName);
                    contratoUpload.Data = DateTime.Now;
                    contratoUpload.Descricao_Arquivo = Path.GetFileName(file.FileName);
                    contratoUpload.fk_usuario = User.Identity.Name.ToUpper();
                    contratoUpload.Lixo = 0;


                    db.Contratos_Fornecedores_Cadastrados_Upload.Add(contratoUpload);
                    db.SaveChanges();

                    pk_arquivo = contratoUpload.id;
                    var caminho_destino = @"/ArquivosUpload/ContratoFornecedor/";

                    string filePath = Path.Combine(HttpContext.Server.MapPath(caminho_destino),
                                                  pk_arquivo.ToString() + Path.GetExtension(file.FileName));
                    file.SaveAs(filePath);

                    TempData["Sucesso"] = "Registro gravado com sucesso!";
                    return RedirectToAction("Index", new { id = id });
                }

                catch (Exception ex)
                {
                    TempData["Erro"] = "Erro ao gravar arquivo!!!" + ex.Message;
                    ViewBag.fk_contratos = id;
                    return View(contratoUpload);
                }

            }
               
            return View();   
                
        }

        //
        // GET: /ContratosFornecedoresFinanceiroUploadController/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /ContratosFornecedoresFinanceiroUploadController/Edit/5

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
        // GET: /ContratosFornecedoresFinanceiroUploadController/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ContratosFornecedoresFinanceiroUploadController/Delete/5

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
            Contratos_Fornecedores_Cadastrados_Upload contratoUpload = db.Contratos_Fornecedores_Cadastrados_Upload.Find(id);
            if (contratoUpload == null)
            {
                return HttpNotFound();
            }
            string nomeDoArquivo = contratoUpload.Descricao_Arquivo;
            string caminhoDoArquivo = contratoUpload.Caminho.Replace(@"F:\", "") + contratoUpload.id.ToString() + contratoUpload.Tipo_Arquivo;
            return new DownloadResult { VirtualPath = GetVirtualPath(caminhoDoArquivo), FileDownloadName = nomeDoArquivo };
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}
