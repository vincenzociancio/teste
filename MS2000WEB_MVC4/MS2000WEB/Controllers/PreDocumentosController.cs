using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using System.IO;
using MS2000WEB.Models.Security;


namespace MS2000WEB.Controllers
{
    public class PreDocumentosController : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /PreDocumentos/
        [MSAutorizacaoAuthorize("Tela de Pré Upload")]
        public ActionResult Index(int id)
        {
            
                var query = "select pd.pk_codigo, pd.fk_preprocesso, td.descricao as TipoDocumento, std.Descricao as SubTipoDocumento, " +
                             " pd.numero_doc as NumeroDocumento, pd.codigo as Pasta, pd.arquivo as Arquivo, " +
                             " pd.data_inclusao as DataInclusao, pd.descricao_arquivo as DescricaoArquivo" +
                             " from Pre_Documentos pd " +
                             " left join Tipo_Documentos td on td.codigo = pd.fk_tipodocumento " +
                             " left join Sub_Tipo_Documentos std on std.codigo = pd.fk_subtipodocumento and std.Tipo_doc = td.codigo " +
                             " where pd.fk_preprocesso = @id " +
                             " order by pd.data_inclusao ";

                var model = db.Database.SqlQuery<PreDocumentosViewModel>(query, new SqlParameter("@id", id)).ToList();

                ViewBag.fk_preprocessos = id;
                return View(model);
            
        }

        //
        // GET: /PreDocumentos/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /PreDocumentos/Create    
        [HttpGet, MSAutorizacaoAuthorize("Cria Pré Upload")]
        public ActionResult Create(int id = 0)
        {
            Pre_Documentos predocumentos = new Pre_Documentos();
            PopulateTipoDocumentosDropDownList();
            ViewBag.fk_preprocessos = id;

            ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

            return View(predocumentos);
        }        

        //
        // POST: /PreDocumentos/Create
        [HttpPost]
        public ActionResult Create(HttpPostedFileBase file, Pre_Documentos predocumentos, int id = 0, FormCollection form = null)
        {

            if (file != null)
            {
                // validando a extensao do arquivo

                string tipoarquivo = Path.GetExtension(file.FileName.ToLower());
                if (!((tipoarquivo == ".pdf") || (tipoarquivo == ".jpg") || (tipoarquivo == ".jepg") || (tipoarquivo == ".txt") ||
                      (tipoarquivo == ".xls") || (tipoarquivo == ".xlsx") || (tipoarquivo == ".doc") || (tipoarquivo == ".docx")))
                {
                    PopulateTipoDocumentosDropDownList();
                    ViewBag.fk_preprocessos = id;

                    ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                    TempData["Erro"] = "Extensão do arquivo, somente pdf, jpg, txt, doc, docx, xls, xlsx";
                    return View();
                }

                if (String.IsNullOrEmpty(predocumentos.fk_tipodocumento))
                {
                    PopulateTipoDocumentosDropDownList();
                    ViewBag.fk_preprocessos = id;

                    ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                    TempData["Erro"] = "Por favor, selecione um Tipo de Documento!";
                    return View();
                }

                if (String.IsNullOrEmpty(predocumentos.fk_subtipodocumento) || (predocumentos.fk_subtipodocumento == "0"))
                {
                    PopulateTipoDocumentosDropDownList();
                    ViewBag.fk_preprocessos = id;

                    ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                    TempData["Erro"] = "Por favor, selecione um Sub-Tipo de Documento!";
                    return View();
                }


                if (ModelState.IsValid)
                {

                    string caminhoFisico = @"F:\ARQUIVOSUPLOAD\PREPROCESSOS\" +
                        DateTime.Now.Year.ToString() + @"\" +
                        DateTime.Now.Month.ToString() + @"\";

                    predocumentos.fk_preprocesso = id;
                    predocumentos.caminho = caminhoFisico;
                    predocumentos.tipo_arquivo = Path.GetExtension(file.FileName);
                    predocumentos.data_inclusao = DateTime.Now;
                    predocumentos.data_envio = DateTime.Now.Date;
                    predocumentos.descricao_arquivo = Path.GetFileName(file.FileName);
                    predocumentos.data_envio = DateTime.Now;
                    predocumentos.usuario = User.Identity.Name.ToUpper();
                    predocumentos.fk_tipodocumento = predocumentos.fk_tipodocumento;
                    predocumentos.fk_subtipodocumento = predocumentos.fk_subtipodocumento;
                    predocumentos.numero_doc = null;
                    predocumentos.pagina = null;
                    predocumentos.codigo = null;
                    predocumentos.arquivo = null;
                    predocumentos.observacao = predocumentos.observacao;
                    predocumentos.ftp = 0;

                    db.Pre_Documentos.Add(predocumentos);
                    db.SaveChanges();

                    int pk_arquivo = predocumentos.pk_codigo;


                    var caminho_destino = @"/ArquivosUpload/PreProcessos/";

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

                    TempData["Sucesso"] = "Registro gravado com sucesso!";
                    return RedirectToAction("Index", new { id = id });

                }
            }
            else
            {
                Pre_Documentos documentos = new Pre_Documentos();
                PopulateTipoDocumentosDropDownList();
                ViewBag.fk_preprocessos = id;

                ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();
                TempData["Erro"] = "Favor Selecionar o Arquivo.";
                return View(documentos);            
            }

            PopulateTipoDocumentosDropDownList();
            ViewBag.fk_preprocessos = id;
            ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();
            return View(predocumentos);
        }

        //
        // GET: /PreDocumentos/Edit/5      
        [HttpGet, MSAutorizacaoAuthorize("Edita Pré Upload")]
        public ActionResult Edit(int id = 0)
        {
            Pre_Documentos predocumentos = db.Pre_Documentos.FirstOrDefault(x => x.pk_codigo == id);

            if (predocumentos == null)
            {
                return HttpNotFound();
            }

            ViewBag.fk_tipodocumento = new SelectList(db.Tipo_Documentos.ToList(), "Codigo", "Descricao", predocumentos.fk_tipodocumento);

            ViewBag.fk_subtipodocumento = new SelectList(db.Sub_Tipo_Documentos.Where(x => x.Tipo_doc == predocumentos.fk_tipodocumento).ToList(), "codigo", "Descricao", predocumentos.fk_subtipodocumento);

            return View(predocumentos);
        }

        //
        // POST: /PreDocumentos/Edit/5
        [HttpPost]
        public ActionResult Edit(Pre_Documentos predocumento, int id, FormCollection collection)
        {

            if (String.IsNullOrEmpty(predocumento.fk_tipodocumento))
            {             
                ViewBag.fk_tipodocumento = new SelectList(db.Tipo_Documentos.ToList(), "Codigo", "Descricao", predocumento.fk_tipodocumento);
                ViewBag.fk_subtipodocumento = new SelectList(db.Sub_Tipo_Documentos.Where(x => x.Tipo_doc == predocumento.fk_tipodocumento).ToList(), "codigo", "Descricao", predocumento.fk_subtipodocumento);

                TempData["Erro"] = "Por favor, selecione um Tipo de Documento!";
                return View(predocumento);
            }

            if (String.IsNullOrEmpty(predocumento.fk_subtipodocumento) || (predocumento.fk_subtipodocumento == "0"))
            {             
                ViewBag.fk_tipodocumento = new SelectList(db.Tipo_Documentos.ToList(), "Codigo", "Descricao", predocumento.fk_tipodocumento);
                ViewBag.fk_subtipodocumento = new SelectList(db.Sub_Tipo_Documentos.Where(x => x.Tipo_doc == predocumento.fk_tipodocumento).ToList(), "codigo", "Descricao", predocumento.fk_subtipodocumento);

                TempData["Erro"] = "Por favor, selecione um Sub-Tipo de Documento!";
                return View(predocumento);
            }
            
            
            if (ModelState.IsValid)
            {
                db.Entry(predocumento).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "Registro alterado com sucesso!";
                return RedirectToAction("Index", new { id = predocumento.fk_preprocesso });
            }

            //PopulateTipoDocumentosDropDownList(predocumento.fk_tipodocumento);
            //PopulateSubTipoDropDownList(predocumento.fk_subtipodocumento);

            ViewBag.fk_tipodocumento = new SelectList(db.Tipo_Documentos.ToList(), "Codigo", "Descricao", predocumento.fk_tipodocumento);

            ViewBag.fk_subtipodocumento = new SelectList(db.Sub_Tipo_Documentos.Where(x => x.Tipo_doc == predocumento.fk_tipodocumento).ToList(), "codigo", "Descricao", predocumento.fk_subtipodocumento);

            return View(predocumento);
        }

        //
        // GET: /PreDocumentos/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /PreDocumentos/Delete/5

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
        

        //------------Preenche Combobox do Tipo de Documento------------------------------             
        private void PopulateTipoDocumentosDropDownList(object selectedTipoDocumento = null)
        {
            var TipoDocumentos = (from i in db.Tipo_Documentos
                                  select new { codigo = i.codigo, descricao = i.descricao });

            //  ViewData["TiposDocumentos"] = new SelectList(TipoDocumentos, "Codigo", "Descricao", selectedTipoDocumento);
            ViewBag.fk_tipodocumento = new SelectList(TipoDocumentos, "codigo", "descricao", selectedTipoDocumento);
        }

        private IList<Sub_Tipo_Documentos> GetSubTipoDocumento(string id)
        {
            return db.Sub_Tipo_Documentos.Where(s => s.Tipo_doc == id).ToList();
        }


        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult PopulateSubTipoDropDownList(string id)
        {
            var SubTipoList = this.GetSubTipoDocumento(id);

            var SubTipoData = SubTipoList.Select(m => new SelectListItem()
            {
                Value = m.codigo,
                Text = m.Descricao.ToString(),

            });

            return Json(SubTipoData, JsonRequestBehavior.AllowGet);
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
            Pre_Documentos predocumentos = db.Pre_Documentos.Find(id);
            if (predocumentos == null)
            {
                return HttpNotFound();
            }
            string nomeDoArquivo = predocumentos.descricao_arquivo;

            //codigo = pasta
            string caminhoDoArquivo = predocumentos.caminho.Replace(@"F:\", "") + predocumentos.pk_codigo.ToString() + predocumentos.tipo_arquivo;
            return new DownloadResult { VirtualPath = GetVirtualPath(caminhoDoArquivo), FileDownloadName = nomeDoArquivo };
        }
        
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}
